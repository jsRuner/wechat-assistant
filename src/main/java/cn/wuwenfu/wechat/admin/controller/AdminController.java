package cn.wuwenfu.wechat.admin.controller;

import cn.wuwenfu.wechat.pojo.Administrator;
import cn.wuwenfu.wechat.service.AdminService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Resource
    private AdminService adminService;

    @RequestMapping("/login")
    public String login(HttpServletRequest request, Model model, HttpSession httpSession, String userName, String password){
        if (request.getMethod().equals("GET")){
            return "admin/login";
        }else{
            model.addAttribute("toUrl","/admin/index");
            if (this.adminService.login(userName,password)){
                httpSession.setAttribute("userName",userName); //设置session
                return "common/success";
            }else{
                model.addAttribute("errorMessage","用户不存在或者密码错误");
                return "common/error";
            }
        }
    }
    @RequestMapping("/logout")
    public String logout(HttpSession httpSession,Model model){
        if (httpSession !=null){
            httpSession.invalidate();
        }
        model.addAttribute("toUrl","/admin/login");
        return "common/success";
    }

    @RequestMapping("/index")
    public String index(){
        return "admin/index";
    }

    @RequestMapping("/passwordedit")
    public String passwordEdit(HttpServletRequest request, Model model, String password, String newPassword){

        if (request.getMethod().equals("GET")){
            return "admin/passwordEdit";
        }else{
            if(this.adminService.passwordEdit(password,newPassword)){
                model.addAttribute("toUrl","/admin/index");
                return "common/success";
            }else{
                model.addAttribute("errorMessage","原密码错误");
                return "common/error";
            }
        }

    }


}
