package cn.wuwenfu.wechat.service.impl;

import cn.wuwenfu.wechat.common.Page;
import cn.wuwenfu.wechat.dao.BrandMapper;
import cn.wuwenfu.wechat.pojo.Brand;
import cn.wuwenfu.wechat.service.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


@Service("BrandService")
public class BrandServiceImpl implements BrandService {

    @Resource
    private BrandMapper brandMapper;

    @Autowired
    private HttpSession session;

    @Autowired
    private HttpServletRequest request;



    public List<Brand> getBrands(HashMap hm) {
        if (hm.get("offset").equals("")){
            hm.put("offset",0);
            hm.put("pagesieze",20);
        }
        return this.brandMapper.getBrands(hm);
    }

    public void addBrand(Brand brand) {
        this.brandMapper.insert(brand);
    }

    public void editBrand(Brand brand) {
        this.brandMapper.updateByPrimaryKeySelective(brand);
    }

    public void deleteBrand(short brandId) {
        this.brandMapper.deleteByPrimaryKey(brandId);
    }



    public Brand getBrandById(short brandId) {
        return this.brandMapper.selectByPrimaryKey(brandId);
    }

    @Override
    public boolean login(String userName, String password) {
        //查询用户
        Brand brand = brandMapper.selectByUserName(userName);

        System.out.println("查询的:"+brand);

        if (brand ==null){
            return false;
        }
        if (!brand.getPassword().equals(password)){
            return false;
        }
        session.setAttribute("brand",brand);
        return true;
    }

    @Override
    public boolean passwordEdit(String password, String newPassword) {
        //先判断原密码是否正确。
        Brand brand = (Brand) session.getAttribute("brand");
        if (!brand.getPassword().equals(password)){
            return false;
        }
        //再修改密码
        brand.setPassword(newPassword);
        this.brandMapper.updateByPrimaryKey(brand);
        return true;
    }

    public void showProductsByPage(HttpServletRequest request, Model model, String brandName) {
        String pageNow = request.getParameter("pageNow");

        Page page = null;

        List<Brand> brands = new ArrayList<Brand>();




        if (brandName == null){
            brandName = "";
        }

        int totalCount = (int) brandMapper.getBrandsCount(brandName);

        if (pageNow != null) {
            page = new Page(totalCount, Integer.parseInt(pageNow));
            brands = this.brandMapper.selectBrandsByPage(page.getStartPos(), page.getPageSize(), brandName);
        } else {
            page = new Page(totalCount, 1);
            brands = this.brandMapper.selectBrandsByPage(page.getStartPos(), page.getPageSize(), brandName);
        }

        model.addAttribute("brands", brands);
        model.addAttribute("page", page);
    }

}
