/*
 * myUploader
*/

var myUploader = function(){
    this.init();
};
myUploader.prototype = {
    init: function(){
        //获取时间年月日构建文件路径
        var date = new Date();
        var year = date.getFullYear();
        var month = date.getMonth();
        var day = date.getDate();
        year = year.toString().substr(2,2);
        month++;
        month = month < 10 ? '0'+month:month;
        day = day < 10 ? '0'+day:day;
        folder_time = '/'+year+''+month+'/'+day+'/';


        //一级目录user-dir
        //
        console.log(1);

        //构建上传插件模板
        this.QqTemplate = '<div id="qq-template" style="display: none!important;">'
                       +     '<div class="qq-uploader-selector">'
                       +         '<div class="qq-upload-button-selector btn btn-default">'
                       +             '<div>点击上传</div>'
                       +         '</div>'
                       +         '<ul class="qq-upload-list-selector upload-progress clearfix">'
                       +             '<li>'
                       +                 '<div class="qq-progress-bar-selector upload-progress-bar"></div>'
                       +             '</li>'
                       +         '</ul>'
                       +     '</div>'
                       + '<div>';
        this.UpImgTpl = '<li data-id="{{ id }}" goods-img="{{ goods_img }}" >'
                      +      '<div class="p-img" style="width: auto;">'
                      +          '<img style="width: auto;" class="J_Preview" src="{{ filepath }}{{ ossprogress }}">'
                      +      '</div>'
                      +      '<div class="ctrl-bar">'
                      +          '<a class="J_Delete glyphicon glyphicon-trash pull-right" title="删除"></a>'
                      +      '</div>'
                      +      '<input type="hidden" class="J_ImgInput" name="{{ inputname }}" value="{{ filename }}">'
                      +  '</li>';
        this.UpMp3Tpl = '<li data-id="{{ id }}" >'
                      +      '<div class="p-img" style="width: auto;height: auto;">'
                      +          '<audio src="{{ filepath }}" controls="controls"></audio>'
                      +      '</div>'
                      +      '<div class="ctrl-bar hide">'
                      +          '<a class="J_Delete glyphicon glyphicon-trash pull-right" title="删除"></a>'
                      +      '</div>'
                      +      '<input type="hidden" class="J_Mp3Input" name="{{ inputname }}" value="{{ filename }}">'
                      +  '</li>';
                      
        this.request = {
            endpoint: 'http://aybox-aoyait.oss-cn-hangzhou.aliyuncs.com',
            inputName: 'file',
            params: {
                success_action_status: '200',
                folder: 'plugin',
                folder_time: folder_time,
            },
        }
        this.messages = {
            typeError: "{file} 扩展名无效。有效的扩展名: {extensions}。",
            sizeError: "{file} 太大，最大文件限制 {sizeLimit}.",
            minSizeError: "{file} 太小, 最小文件限制 {minSizeLimit}.",
            emptyError: "{file} 为空，请再次选择文件。",
            noFilesError: "没有文件上传。",
            tooManyItemsError: "将上传太多的条目({ netItems })。最多上传{ itemLimit }。",
            maxHeightImageError: "图像太高了。",
            maxWidthImageError: "图像太宽了。",
            minHeightImageError: "图像不够高。",
            minWidthImageError: "图像不够宽。",
            retryFailTooManyItems: "重试失败-你已经达到了你的文件限制。",
            onLeave: "文件正在上传，如果你现在离开，上传将被取消。",
            unsupportedBrowserIos8Safari: "不可恢复的错误—在iOS8 Safari浏览器中不允许上传任何类型的文件。请使用iOS8 Chrome，直到Apple解决这些问题。"
        };
    },

    render: function(options) {
        var that =this;
        //默认参数
        var defaultOpts = {
            cOpts: {
                el: '#J_UpBox',
                size: 1,
                width: 0,
                height: 0,
                type: 'img',
                goods_img: 0,
                init_data: null,
                folder: 'logos',
            },
            request: that.request,
            messages: that.messages,
        };
        var opts = $.extend(true,defaultOpts,options);
        opts.request.params.folder = opts.cOpts.folder;

        that.opts = opts;

        //插入模板
        if(!$('#qq-template')[0]){
            $('body').append(that.QqTemplate);
        }

        //实例化插件
        var $list = $(opts.cOpts.el).siblings('.imgs-list');
        $(opts.cOpts.el)
        .fineUploader(opts)
        .on('complete', function(event, id, fileName, response) {
            if (response.success) {
                if(opts.cOpts.size == 1 && $list.find('.J_Delete')[0]){
                    $list.find('.J_Delete').trigger('click');
                    $list.empty();
                }
                response.data.inputname = opts.cOpts.el.replace(/[\.\#]/,'');
                if(opts.cOpts.type == 'img'){
                    response.data.goods_img = opts.cOpts.goods_img;
                    if(opts.cOpts.width && opts.cOpts.height){
                        response.data.ossprogress = '?x-oss-process=image/resize,m_fill,h_'+opts.cOpts.height+',w_'+opts.cOpts.width;
                    }
                    $list.append(that.renderTemplate(that.UpImgTpl, response.data));
                }else if(opts.cOpts.type == 'mp3'){
                    $list.append(that.renderTemplate(that.UpMp3Tpl, response.data));
                }
                if(opts.cOpts.size != 1 && $list.children('li').size() >= opts.cOpts.size){
                    $(opts.cOpts.el).hide();
                }         
            }else{
                alert(response.msg);
            }
        });
        $list.on('click', '.J_Delete', function(event) {
            event.stopPropagation();
            var _$item = $(this).closest('li')
                ,_$el = $(this).closest('.imgs-list').prev('div')
                ,img_id = _$item.attr('data-id')
                ,goods_img = _$item.attr('goods-img');
            if(isNaN(img_id) || img_id <= 0){
                _$item.remove();
                _$el.show();
                return false;
            }
            // var del_url = (goods_img == 1) ? window._global.url.api + '/goods/img/'+img_id : window._global.url.api + '/attachment/' + img_id;
            var del_url = '';
            $.ajax({
                url: del_url,
                type: 'DELETE',
                success: function(response) {
                    _$item.remove();
                    _$el.show();
                }
            });
        });

        if(opts.cOpts.init_data && opts.cOpts.init_data.length){
            //初始化已有数据
            $.each(opts.cOpts.init_data, function(i,val){
                //console.log(val);
                val.filepath = val.filepath || val.img;
                if(!val.filepath){
                    return false;
                }
                if(opts.cOpts.type == 'img'){
                    val.goods_img = opts.cOpts.goods_img;
                    val.filename = val.filepath;
                    val.filepath = that.hackFileName(val.filepath);
                    $list.append(that.renderTemplate(that.UpImgTpl, val));
                }else if(opts.cOpts.type == 'mp3'){
                    val.filename = val.filepath;
                    val.filepath = that.hackFileName(val.filepath);
                    $list.append(that.renderTemplate(that.UpMp3Tpl, val));
                }
                if(opts.cOpts.size != 1 && $list.children('li').size() >= opts.cOpts.size){
                    $(opts.cOpts.el).hide();
                }  
            });
        }
    },

    hackFileName: function(src){
        var that = this;
        if(src.indexOf('http') == -1 && src.indexOf('oss') == -1 && src.indexOf('user-dir') > -1){
            //阿里云上的相对路径
            var ossprogress = '';
            if(that.opts.cOpts.width && that.opts.cOpts.height){
                ossprogress = '?x-oss-process=image/resize,m_fill,h_'+that.opts.cOpts.height+',w_'+that.opts.cOpts.width;
            }
            // return _global.url.oss_image_url + src + ossprogress;
            return '';
        }else{
            if(src.indexOf('http') == -1){
                //本地相对路径
                // return _global.url.base + src;
                return '';
            }else{
                //绝对路径,不做修改
                return src;
            }
        }
    },

    renderTemplate: function(Tpl,data){
        return Tpl.replace(/\{\{[^\}]*\}\}/g, function(c){
            return data[c.replace(/[\{|\}|\s]/g,'')] || '';
        });
    },
};
