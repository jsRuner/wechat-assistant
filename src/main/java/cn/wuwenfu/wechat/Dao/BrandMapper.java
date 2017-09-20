package cn.wuwenfu.wechat.dao;

import cn.wuwenfu.wechat.pojo.Brand;

public interface BrandMapper {
    int deleteByPrimaryKey(Short id);

    int insert(Brand record);

    int insertSelective(Brand record);

    Brand selectByPrimaryKey(Short id);

    int updateByPrimaryKeySelective(Brand record);

    int updateByPrimaryKey(Brand record);
}