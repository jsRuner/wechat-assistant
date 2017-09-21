package cn.wuwenfu.wechat.dao;

import cn.wuwenfu.wechat.pojo.Brand;

import java.util.HashMap;
import java.util.List;

public interface BrandMapper {
    int deleteByPrimaryKey(Short id);

    int insert(Brand record);

    int insertSelective(Brand record);

    Brand selectByPrimaryKey(Short id);

    int updateByPrimaryKeySelective(Brand record);

    int updateByPrimaryKey(Brand record);

    List<Brand> getBrands(HashMap hm);
}