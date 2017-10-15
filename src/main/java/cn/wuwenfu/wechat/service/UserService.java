package cn.wuwenfu.wechat.service;

import cn.wuwenfu.wechat.pojo.User;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

public interface UserService {
    public List<User> getUsers(HashMap hm);

    public void addUser(User user);

    public void editUser(User user);

    public void deleteUser(Short userId);

    public User getUserById(short userId);

    public boolean login( String userName, String password);

    public boolean passwordEdit(String password,String newPassword);

    /**
     * 分页显示会员
     * @param request
     * @param model
     * @param UserName
     */
    public void showUsersByPage(HttpServletRequest request, Model model, String userName);



}
