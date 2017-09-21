package cn.wuwenfu.wechat.service;

import cn.wuwenfu.wechat.pojo.Brand;

import java.util.HashMap;
import java.util.List;

public interface BrandService {
    public List<Brand> getBrands(HashMap hm);

    public void addBrand(Brand brand);

    public void editBrand(Brand brand);

    public void deleteBrand(short brandId);

    public Brand getBrandById(short brandId);
}
