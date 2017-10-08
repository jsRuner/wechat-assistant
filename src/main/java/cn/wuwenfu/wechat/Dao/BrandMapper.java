package cn.wuwenfu.wechat.dao;

import cn.wuwenfu.wechat.pojo.Administrator;
import cn.wuwenfu.wechat.pojo.Brand;
import org.apache.ibatis.annotations.Param;

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

    Brand selectByUserName(String userName);

    /**
     * 使用注解方式传入多个参数，用户产品分页，通过登录用户ID查询
     * @param offset
     * @param pageSize
     * @param brandName
     * @return startPos},#{pageSize}
     */
     List<Brand> selectBrandsByPage(@Param(value="offset") Integer offset, @Param(value="pageSize") Integer pageSize, @Param(value="brandName") String  brandName);

    /**
     * 取得产品数量信息，通过登录用户ID查询
     * @param brandName
     * @return
     */
     long getBrandsCount(@Param(value="brandName") String  brandName);
}