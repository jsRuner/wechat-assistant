package cn.wuwenfu.wechat.admin.controller;

import cn.wuwenfu.wechat.common.AppConstant;
import cn.wuwenfu.wechat.common.FileUpload;
import cn.wuwenfu.wechat.pojo.Brand;
import cn.wuwenfu.wechat.service.BrandService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
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
    public String brandAdd(HttpServletRequest request, Model model){
        if (request.getMethod().equals("GET")){
            return "admin/brandAdd";
        }else{
            String brandLogo = FileUpload.upload(request);
            Brand brand = new Brand();
            brand.setUserName(request.getParameter("userName"));
            brand.setPassword(request.getParameter("password"));
            brand.setBrandName(request.getParameter("brandName"));
            brand.setBrandLogo(brandLogo);
            brand.setDateAdd(new Date());

            System.out.println(brand.toString());

            this.brandService.addBrand(brand);


            model.addAttribute("toUrl","/admin/brand/brandlist");
            return "common/success";
        }
    }

    @RequestMapping("/brandedit")
    public String brandEdit(HttpServletRequest request, Model model) {

        if (request.getMethod().equals("GET")) {
            Short id = Short.parseShort(request.getParameter("id"));
            Brand brand = this.brandService.getBrandById(id);
            model.addAttribute("brand", brand);
            return "admin/brandEdit";
        } else {

            String brandLogo = FileUpload.upload(request);
            Brand brand = new Brand();
            brand.setId(Short.parseShort(request.getParameter("id")));
            brand.setUserName(request.getParameter("userName"));
            brand.setPassword(request.getParameter("password"));
            brand.setBrandName(request.getParameter("brandName"));
            brand.setBrandLogo(brandLogo);
            System.out.println(brand.toString());
            this.brandService.editBrand(brand);
            model.addAttribute("toUrl", "/admin/brand/brandlist");
            return "common/success";
        }
    }

    @RequestMapping("/branddelete")
    public String brandDelete(HttpServletRequest request, Model model){
        Short id = Short.parseShort(request.getParameter("id"));
        this.brandService.deleteBrand(id);
        model.addAttribute("toUrl","/admin/brand/brandlist");
        return "common/success";
    }
}
