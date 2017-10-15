package cn.wuwenfu.wechat.service.impl;

import cn.wuwenfu.wechat.admin.controller.AdminController;
import cn.wuwenfu.wechat.common.AppConstant;
import cn.wuwenfu.wechat.common.Util;
import cn.wuwenfu.wechat.dao.AdministratorMapper;
import cn.wuwenfu.wechat.pojo.Administrator;
import cn.wuwenfu.wechat.service.AdminService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Service("AdminService")
public class AdminServiceImpl implements AdminService {

    private static Logger logger = LoggerFactory.getLogger(AdminServiceImpl.class);

    @Autowired
    private HttpSession session;

    @Autowired
    private HttpServletRequest request;

    @Resource
    AdministratorMapper administratorMapper;

    public boolean login(String userName, String password) {
        //查询用户
        Administrator admin = administratorMapper.selectByUserName(userName);
        if (admin ==null){
            return false;
        }

        //计算密码
        String passwordSha1Str = Util.getPasswordShaStr(password,AppConstant.ADMIN_PASSWORD_SALT);

        logger.info(passwordSha1Str);
        if (!admin.getPassword().equals(passwordSha1Str)){
            return false;
        }
        session.setAttribute("admin",admin);
        return true;
    }

    public boolean passwordEdit(String password, String newPassword) {

        //先判断原密码是否正确。
         Administrator admin = (Administrator) session.getAttribute("admin");

        //计算密码
        String passwordSha1Str = Util.getPasswordShaStr(password,AppConstant.ADMIN_PASSWORD_SALT);
         if (!admin.getPassword().equals(passwordSha1Str)){
             return false;
         }
        //再修改密码
        passwordSha1Str = Util.getPasswordShaStr(newPassword,AppConstant.ADMIN_PASSWORD_SALT);
        admin.setPassword(passwordSha1Str);
        this.administratorMapper.updateByPrimaryKey(admin);
        return true;
    }
}
