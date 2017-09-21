package cn.wuwenfu.wechat.admin.controller;

import cn.wuwenfu.wechat.pojo.Brand;
import cn.wuwenfu.wechat.service.BrandService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/admin/brand")
public class BrandController {

    @Resource
    private BrandService brandService;

    @RequestMapping("/brandlist")
    public String brandList(HttpServletRequest request, Model model){
        HashMap hm = new HashMap();
        hm.put("offset",0);
        hm.put("pagesize",20);
        List<Brand> brands = this.brandService.getBrands(hm);
        model.addAttribute("brands",brands);

        for (Brand brand : brands
             ) {
            System.out.println(brand.toString());
        }
        return "admin/brandList";
    }
    @RequestMapping("/brandadd")
    public String brandAdd(){
        return "admin/brandAdd";
    }

    @RequestMapping("/brandedit")
    public String brandEdit(){
        return "admin/brandEdit";
    }
}
