package cn.wuwenfu.wechat.filter;


import cn.wuwenfu.wechat.pojo.Administrator;
import cn.wuwenfu.wechat.pojo.Brand;
import com.sun.deploy.net.HttpResponse;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.Predicate;
import java.io.IOException;

public class BrandLoginFilter implements Filter {

    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //判断是否登录了。没登录则跳转到登录页面。
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
        HttpSession httpSession = httpServletRequest.getSession();
        Brand brand = (Brand) httpSession.getAttribute("brand");

        String path = httpServletRequest.getRequestURI();
        if (path.indexOf("/brand/login") > -1 || path.indexOf("/brand/logout") > -1 ){
            filterChain.doFilter(servletRequest,servletResponse);
            return;
        }
        if (brand == null){
            httpServletResponse.sendRedirect("/brand/login");
        }
        filterChain.doFilter(servletRequest,servletResponse);
        return;
    }

    public void destroy() {

    }
}
