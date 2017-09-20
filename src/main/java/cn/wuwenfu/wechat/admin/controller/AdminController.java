package cn.wuwenfu.wechat.admin.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminController {

    @RequestMapping("/admin/login")
    public String login(HttpServletRequest request, Model model){
        System.out.println("hello");
        return "admin/login";
    }

}
