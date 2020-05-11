package com.zjy.spring.controller;

import com.zjy.spring.model.user_info;
import com.zjy.spring.service.UserService;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.portlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
@SessionAttributes("user")
public class UserController {
    private UserService userService;
    @Autowired
    @Qualifier("userServiceImpl")
    public void setUserService(UserService userService) {
        this.userService = userService;
    }
    @RequestMapping(value = "LoginServlet.do",method = RequestMethod.POST)
    public String LoginServlet(user_info user, HttpServletResponse response,Model model) throws IOException {
        int type=userService.LoginImpl(user);
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        if(type==1)
        {
            user=userService.SelUserImpl(user).get(0);
            model.addAttribute("user",user);
            return "index";
        }
        else if(type==2)
        {
            model.addAttribute("user",user);
            return "Admin/admin";
        }
        else
        {
            out.print("<script language=\"javascript\">alert('登录失败！');window.location.href='/SSM_war_exploded/jsp/login.jsp'</script>");
            out.flush();
            out.close();
            return "login";
        }
    }

    @RequestMapping(value = "RegisterServlet.do",method = RequestMethod.POST)
    public String RegisterServlet(user_info user, Model model,HttpServletResponse response) throws IOException {
        int i=userService.InsUserImpl(user);
        if(i>0)
        {
            response.getWriter().print("<script language='javascript'>alert('注册成功')</script>");
            user=userService.SelUserImpl(user).get(0);
            model.addAttribute("user",user);
            return "index";
        }
        else
        {
            response.getWriter().print("<script language='javascript'>alert('注册失败')</script>");
            return "register";
        }
    }
    @RequestMapping(value = "UpdateUserServlet.do",method = RequestMethod.POST)
    public String UpdateUserServlet(String user_name,String user_pwd, Model model, HttpServletResponse response, HttpSession session,HttpServletRequest request) throws IOException {
        user_info user=(user_info)request.getSession().getAttribute("user");
        user.setUser_name(user_name);
        user.setUser_pwd(user_pwd);
        int i=userService.UpUserImpl(user);
        if(i>0)
        {
            response.getWriter().print("<script language='javascript'>alert('更新成功')</script>");
            model.addAttribute("user",user);
            return "User/person";
        }
        else
        {
            response.getWriter().print("<script language='javascript'>alert('更新失败')</script>");
            return "User/person";
        }
    }
    @RequestMapping(value = "Up.do",method = RequestMethod.POST)
    public String Up(user_info user)
    {
        userService.UpUserImpl(user);
        return "cg";
    }
    @RequestMapping(value = "AjaxServlet.do")
    public void AjaxServlet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        user_info user=new user_info();
        user.setUser_name(request.getParameter("user_name"));
        if(userService.CheckUserImpl(user)){
            out.println("用户存在,不能注册");
        }else{
            Pattern a=Pattern.compile("^[a-zA-Z0-9_-]{4,16}$");
            Matcher b=a.matcher(user.getUser_name());
            if(b.matches())
            {
                out.println("可以使用");
            }
            else
            {
                out.println("用户名不规范");
            }
        }
        out.flush();
        out.close();
    }

    @RequestMapping(value = "ExitServlet.do")
    public String ExitServlet(ModelMap modelMap,HttpSession session)
    {
        session.removeAttribute("user");
        modelMap.remove("user");
        return "forward:ExitServlet2.do";
    }
    @RequestMapping(value = "UpdateUser_pic.do",method = RequestMethod.POST)
    public String UpdateUser_pic(@RequestParam(value="headpic",required = false) MultipartFile file, HttpServletRequest req, HttpServletResponse resp, Model model, HttpSession session, SessionStatus sessionStatus) throws IOException {
        String filename = null;
                filename = System.currentTimeMillis() + ".jpg";
                //System.out.println(request.getContextPath());
                File f = new File("D:/idwork/SSM/out/artifacts/SSM_war_exploded/images/upload/headpic");
                //File f = new File("D://image");
                String imgsrc = f + "/" + filename;
                // 复制文件
                InputStream is = file.getInputStream();
                FileOutputStream fos = new FileOutputStream(imgsrc);
                byte b[] = new byte[1024 * 1024];
                int length = 0;
                while (-1 != (length = is.read(b))) {
                    fos.write(b, 0, length);
                }
                fos.flush();
                fos.close();
        user_info user=(user_info) model.asMap().get("user");
        user.setUser_pic(filename);
        model.addAttribute("user",user);
        System.out.println(user);
        System.out.println( req.getSession().getServletContext().getRealPath("/"));
        userService.UpUserImpl(user);
        return "User/person";
    }
}
