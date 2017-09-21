package cn.wuwenfu.wechat.service.impl;

import cn.wuwenfu.wechat.dao.BrandMapper;
import cn.wuwenfu.wechat.pojo.Brand;
import cn.wuwenfu.wechat.service.BrandService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;


@Service("BrandService")
public class BrandServiceImpl implements BrandService {

    @Resource
    private BrandMapper brandMapper;


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

    }

    public void deleteBrand(short brandId) {
        this.brandMapper.deleteByPrimaryKey(brandId);
    }



    public Brand getBrandById(short brandId) {
        return this.brandMapper.selectByPrimaryKey(brandId);
    }
}
