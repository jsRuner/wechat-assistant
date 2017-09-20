package cn.wuwenfu.wechat.Dao;

import cn.wuwenfu.wechat.pojo.Administrator;

public interface AdministratorMapper {
    int deleteByPrimaryKey(Short id);

    int insert(Administrator record);

    int insertSelective(Administrator record);

    Administrator selectByPrimaryKey(Short id);

    int updateByPrimaryKeySelective(Administrator record);

    int updateByPrimaryKey(Administrator record);
}