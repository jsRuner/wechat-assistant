package cn.wuwenfu.wechat.brand.controller;

import cn.wuwenfu.wechat.common.FileUpload;
import cn.wuwenfu.wechat.pojo.Brand;
import cn.wuwenfu.wechat.pojo.User;
import cn.wuwenfu.wechat.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Controller("brandUserController")
@RequestMapping("/brand/user")
public class UserController {

    @Resource
    private UserService userService;


    @RequestMapping("/userlist")
    public String userList(HttpServletRequest request, Model model){

        String search = request.getParameter("search");

        this.userService.showUsersByPage(request,model,search);
        model.addAttribute("search",search);

        return "brand/userList";
    }
    @RequestMapping("/useradd")
    public String userAdd(HttpServletRequest request, Model model){
        if (request.getMethod().equals("GET")){
            return "brand/userAdd";
        }else{
            User user = new User();

            Brand brand = (Brand) request.getSession().getAttribute("brand");

            user.setBrandId(brand.getId());

            user.setUserName(request.getParameter("userName"));
            user.setPassword(request.getParameter("password"));

            user.setRealName(request.getParameter("realName"));

            user.setMobile(request.getParameter("mobile"));

            user.setAddress(request.getParameter("address"));

            user.setDateAdd(new Date());

            System.out.println(user.toString());

            this.userService.addUser(user);


            model.addAttribute("toUrl","/brand/user/userlist");
            return "common/success";
        }
    }

    @RequestMapping("/useredit")
    public String userEdit(HttpServletRequest request, Model model) {

        if (request.getMethod().equals("GET")) {
            Short id = Short.parseShort(request.getParameter("id"));
            User user = this.userService.getUserById(id);
            model.addAttribute("user", user);
            return "brand/userEdit";
        } else {

            String userLogo = FileUpload.upload(request);
            User user = new User();
            user.setId(Integer.parseInt(request.getParameter("id")));
            user.setUserName(request.getParameter("userName"));
            user.setPassword(request.getParameter("password"));

            user.setRealName(request.getParameter("realName"));

            user.setMobile(request.getParameter("mobile"));

            user.setAddress(request.getParameter("address"));

            this.userService.editUser(user);
            model.addAttribute("toUrl", "/brand/user/userlist");
            return "common/success";
        }
    }

    @RequestMapping("/userdelete")
    public String userDelete(HttpServletRequest request, Model model){
        Short id = Short.parseShort(request.getParameter("id"));
        this.userService.deleteUser(id);
        model.addAttribute("toUrl","/brand/user/userlist");
        return "common/success";
    }
}
