package cn.wuwenfu.wechat.service.impl;

import cn.wuwenfu.wechat.common.AppConstant;
import cn.wuwenfu.wechat.common.Page;
import cn.wuwenfu.wechat.common.Util;
import cn.wuwenfu.wechat.dao.BrandMapper;
import cn.wuwenfu.wechat.dao.UserMapper;
import cn.wuwenfu.wechat.pojo.Brand;
import cn.wuwenfu.wechat.pojo.User;
import cn.wuwenfu.wechat.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service("UserService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;

    @Autowired
    private HttpSession session;

    @Override
    public List<User> getUsers(HashMap hm) {
        return null;
    }

    @Override
    public void addUser(User user) {
        String password = Util.getPasswordShaStr(user.getPassword(), AppConstant.USER_PASSWORD_SALT);
        user.setPassword(password);
        this.userMapper.addUser(user);
    }

    @Override
    public void editUser(User user) {
        user.setPassword(null);
        this.userMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public void deleteUser(Short userId) {
        this.userMapper.deleteByPrimaryKey(userId);
    }

    @Override
    public User getUserById(short userId) {
        return this.userMapper.selectByPrimaryKey(userId);
    }

    @Override
    public boolean login(String userName, String password) {
        return false;
    }

    @Override
    public boolean passwordEdit(String password, String newPassword) {
        return false;
    }

    @Override
    public void showUsersByPage(HttpServletRequest request, Model model, String userName) {
        String pageNow = request.getParameter("pageNow");

        Page page = null;

        List<User> users = new ArrayList<User>();




        if (userName == null){
            userName = "";
        }

        int totalCount = (int) userMapper.getUsersCount(userName);

        if (pageNow != null) {
            page = new Page(totalCount, Integer.parseInt(pageNow));
            users = this.userMapper.selectUsersByPage(page.getStartPos(), page.getPageSize(), userName);
        } else {
            page = new Page(totalCount, 1);
            users = this.userMapper.selectUsersByPage(page.getStartPos(), page.getPageSize(), userName);
        }

        model.addAttribute("users", users);
        model.addAttribute("page", page);

    }
}
