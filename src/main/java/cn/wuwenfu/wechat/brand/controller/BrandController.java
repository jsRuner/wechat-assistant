package cn.wuwenfu.wechat.brand.controller;

import cn.wuwenfu.wechat.service.BrandService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller("brandBrandController")
@RequestMapping("/brand")
public class BrandController {
    @Resource
    private BrandService brandService;

    private static Logger logger = LoggerFactory.getLogger(BrandController.class);

    @RequestMapping("/login")
    public String login(HttpServletRequest request, Model model, HttpSession httpSession, String userName, String password){
        if (request.getMethod().equals("GET")){
            model.addAttribute("sessionId",httpSession.getId());
            return "brand/login";
        }else{
            model.addAttribute("toUrl","/brand/index");
            if (this.brandService.login(userName,password)){
                httpSession.setAttribute("userName",userName); //设置session
                return "common/success";
            }else{
                model.addAttribute("errorMessage","用户不存在或者密码错误");
                return "common/error";
            }
        }
    }
    @RequestMapping("/logout")
    public String logout(HttpSession httpSession, Model model){
        if (httpSession !=null){
            httpSession.invalidate();
        }
        model.addAttribute("toUrl","/brand/login");
        return "common/success";
    }

    @RequestMapping("/index")
    public String index(HttpSession httpSession){
        System.out.println(httpSession.getId());
        return "brand/index";
    }

    @RequestMapping("/passwordedit")
    public String passwordEdit(HttpServletRequest request, Model model, String password, String newPassword){

        if (request.getMethod().equals("GET")){
            return "brand/passwordEdit";
        }else{
            if(this.brandService.passwordEdit(password,newPassword)){
                model.addAttribute("toUrl","/brand/index");
                return "common/success";
            }else{
                model.addAttribute("errorMessage","原密码错误");
                return "common/error";
            }
        }

    }
}
