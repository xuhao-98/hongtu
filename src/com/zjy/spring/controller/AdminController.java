package com.zjy.spring.controller;

import com.zjy.spring.model.tm_info;
import com.zjy.spring.model.user_info;
import com.zjy.spring.service.ArticleService;
import com.zjy.spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@SessionAttributes("user")
public class AdminController {
    private UserService userService;
    private ArticleService articleService;
    @Autowired
    @Qualifier("userServiceImpl")
    public void setUserService(UserService userService) {
        this.userService = userService;
    }
    @Autowired
    @Qualifier("articleServiceImpl")
    public void setArticleService(ArticleService articleService) {
        this.articleService = articleService;
    }


    @RequestMapping("DelArticleServlet.do")
    public String DelArticleServlet(tm_info tm)
    {//删除用ajax
        articleService.DelArtService(tm);
        return "Admin/admin";
    }

    @RequestMapping("DelUserServlet.do")
    public String DelUserServlet(user_info user)
    {//用户删除用ajax
        userService.DelUserImpl(user);
        return "Admin/admin";
    }

    @RequestMapping("SelUserServlet.do")
    public String SelUserServlet(user_info user, Model model)
    {
        model.addAttribute("users",userService.SelUserImpl(user));
        return "Admin/userInfo";
    }

    @RequestMapping("UpUserServlet.do")
    public String UpUserServlet(user_info user, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {//更改用ajax
        user.setUser_type(2);
        userService.UpUserImpl(user);
        return "Admin/admin";
    }

    @RequestMapping("SelDservlet.do")
    public String SelDservlet(Model model)
    {
        tm_info tm=new tm_info();
        tm.setTm_type(9);
        model.addAttribute("Model",articleService.SelArtService(tm));
        return "Admin/selectSdkm";
    }

    @RequestMapping("SelHeroServlet.do")
    public String SelHeroServlet(Model model)
    {
        tm_info tm=new tm_info();
        tm.setTm_type(12);
        model.addAttribute("Model",articleService.SelArtService(tm));
        return "Admin/selectSdkm";
    }
    //5 6
    @RequestMapping("SelHotServlet.do")
    public String SelHotServlet(Model model)
    {
        tm_info tm=new tm_info();
        List<tm_info> list = new ArrayList<>();
        tm.setTm_type(5);
        list=articleService.SelArtService(tm);
        tm.setTm_type(6);
        list.addAll(articleService.SelArtService(tm));
        model.addAttribute("Model",list);
        return "Admin/selectSdkm";
    }

    @RequestMapping("SelHServlet.do")
    public String SelHServlet(Model model)
    {
        tm_info tm=new tm_info();
        List<tm_info> list = new ArrayList<>();
        tm.setTm_type(7);
        list=articleService.SelArtService(tm);
        tm.setTm_type(8);
        list.addAll(articleService.SelArtService(tm));
        model.addAttribute("Model",list);
        return "Admin/selectSdkm";
    }
    @RequestMapping("SelMServlet.do")
    public String SelMservlet(Model model)
    {
        tm_info tm=new tm_info();
        List<tm_info> list = new ArrayList<>();
        tm.setTm_type(1);
        list=articleService.SelArtService(tm);
        tm.setTm_type(2);
        list.addAll(articleService.SelArtService(tm));
        tm.setTm_type(3);
        list.addAll(articleService.SelArtService(tm));
        tm.setTm_type(4);
        list.addAll(articleService.SelArtService(tm));
        model.addAttribute("Model",list);
        return "Admin/selectSdkm";
    }

    @RequestMapping("SelPServlet.do")
    public String SelPServlet(Model model)
    {
        tm_info tm=new tm_info();
        List<tm_info> list = new ArrayList<>();
        tm.setTm_type(10);
        list=articleService.SelArtService(tm);
        tm.setTm_type(11);
        list.addAll(articleService.SelArtService(tm));
        model.addAttribute("Model",list);
        return "Admin/selectSdkm";
    }

}
