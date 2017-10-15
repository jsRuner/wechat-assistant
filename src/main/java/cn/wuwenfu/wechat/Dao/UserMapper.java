package cn.wuwenfu.wechat.dao;

import cn.wuwenfu.wechat.pojo.Brand;
import cn.wuwenfu.wechat.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    int deleteByPrimaryKey(Short id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Short id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    long getUsersCount(@Param(value="userName") String  userName);

    List<User> selectUsersByPage(@Param(value="offset") Integer offset, @Param(value="pageSize") Integer pageSize, @Param(value="userName") String  userName);

    void addUser(User user);
}