package cn.wuwenfu.wechat.service;

import cn.wuwenfu.wechat.pojo.Brand;
import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

public interface BrandService {
    public List<Brand> getBrands(HashMap hm);

    public void addBrand(Brand brand);

    public void editBrand(Brand brand);

    public void deleteBrand(short brandId);

    public Brand getBrandById(short brandId);

    /**
     * 分页显示品牌
     * @param request
     * @param model
     * @param brandName
     */
    public void showProductsByPage(HttpServletRequest request, Model model, String brandName);


}
