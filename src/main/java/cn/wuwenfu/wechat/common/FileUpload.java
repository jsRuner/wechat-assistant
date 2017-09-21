package cn.wuwenfu.wechat.common;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;

public class FileUpload {
    public static String  upload(HttpServletRequest request){
        String fileName = null;
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
                request.getSession().getServletContext());
        if (multipartResolver.isMultipart(request)) {
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            Iterator iter = multiRequest.getFileNames();
            while (iter.hasNext()) {
                MultipartFile file = multiRequest.getFile(iter.next().toString());
                if (file != null) {
                    fileName = file.getOriginalFilename();
                    //上传
                    try {
                        file.transferTo(new File(AppConstant.UPLOAD_DIR + fileName));
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }

            }

        }
        return fileName;
    }
}
