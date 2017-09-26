package cn.wuwenfu.wechat.service.impl;

import cn.wuwenfu.wechat.dao.AdministratorMapper;
import cn.wuwenfu.wechat.pojo.Administrator;
import cn.wuwenfu.wechat.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service("AdminService")
public class AdminServiceImpl implements AdminService {

    @Autowired
    private HttpSession session;

    @Autowired
    private HttpServletRequest request;

    @Resource
    AdministratorMapper administratorMapper;

    public boolean login(String userName, String password) {
        //查询用户
        Administrator admin = administratorMapper.selectByUserName(userName);

        System.out.println("查询的:"+admin);

        if (admin ==null){
            return false;
        }
        if (!admin.getPassword().equals(password)){
            return false;
        }
        session.setAttribute("admin",admin);
        return true;
    }
}
