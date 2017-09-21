package cn.wuwenfu.wechat.admin.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping("/login")
    public String login(HttpServletRequest request, Model model){
        System.out.println("hello");
        return "admin/login";
    }

    @RequestMapping("/index")
    public String index(){
        return "admin/index";
    }

    @RequestMapping("/passwordedit")
    public String passwordEdit(){
        return "admin/passwordEdit";
    }


}
