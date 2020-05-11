package com.zjy.spring.controller;

import com.zjy.spring.model.tm_info;
import com.zjy.spring.service.ArticleService;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@SessionAttributes("user")
public class ArtController {
    private ArticleService articleService;
    @Autowired
    @Qualifier("articleServiceImpl")
    public void setArticleService(ArticleService articleService) {
        this.articleService = articleService;
    }

    @RequestMapping("SelServlet.do")
    public String Sel(tm_info tm, Model model)
    {
        model.addAttribute("ArtOne",articleService.SelArtService(tm));
        return "news";
    }
    @RequestMapping(value = "ExitServlet2.do")
    public String ExitServlet(ModelMap modelMap, HttpSession session)
    {
        session.removeAttribute("user");
        modelMap.remove("user");
        return "index";
    }
    @RequestMapping("UploadServlet.do")
    public void UploadServlet(HttpServletRequest request, HttpServletResponse response)
    {
        String savePath = "D:\\idwork\\SSM\\upload";
        File file = new File(savePath);
        //判断上传文件的保存目录是否存在
        if(!file.exists()){
            //目录不存在需要创建目录
            file.mkdir();
        }
        //上传提示消息
        try{
            //使用apache文件上传组件处理文件上传步骤
            //1、创建一个DiskFileItemFactory工厂
            DiskFileItemFactory factory = new DiskFileItemFactory();
            //2、创建一个文件上传解析器
            ServletFileUpload upload = new ServletFileUpload(factory);
            //解决上传文件名的中文乱码
            upload.setHeaderEncoding("UTF-8");
            //4、使用ServletFileUpload解析器上传数据，解析结果返回的是一个List<FileItem>集合
            //	每一个FileItem对应一个Form表单的输入项
            List<FileItem> list = upload.parseRequest(request);
            for(FileItem item : list) {
                String filename = item.getName();
                System.out.println(filename);
                if(filename == null || filename.trim().equals("")){
                    continue;
                }
                filename = filename.substring(filename.lastIndexOf(".")+1);
                //给文件重新取一个名字UUID
                filename = UUID.randomUUID().toString()+"."+filename;
                //获取item中的上传文件的输入流
                InputStream in = item.getInputStream();
                //创建一个文件输出流
                FileOutputStream out = new FileOutputStream(savePath + "\\" + filename);
                //创建一个缓冲区
                byte[] buffer = new byte[1024];
                //判断输入流中的数据是否已经读完的标识
                int len = 0;
                //循环将输入流读入到缓冲区当中，
                while((len = in.read(buffer)) > 0) {
                    //使用FileOutputStream输入流将缓冲区的数据写入到指定的目录(savePath + "\\" +filename)
                    out.write(buffer, 0, len);
                }
                String str = request.getContextPath()+"/upload/" +filename;
                String tm="{\"errno\": 0,\"data\": [\""+str+"\"]}";
                System.out.println(tm);
                response.getWriter().write(tm);//返回url地址
                //关闭流
                in.close();
                out.close();
                //删除处理文件上传时生成的临时文件
                item.delete();
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("UploadArticleServlet.do")
    public String UploadArticleServlet(String title,String article,HttpServletRequest request,HttpServletResponse response) throws IOException {
        tm_info tm=new tm_info();
        response.setContentType("text/html;charset=utf-8");
        long l = System.currentTimeMillis();
        Date date = new Date(l);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM- dd HH:mm:ss");
        String dateNow = dateFormat.format(date);
        ;
        tm.setTm_data(dateNow);
        tm.setTm_title(title);
        tm.setTm_article(article);
        tm.setTm_type(12);
        if(articleService.InsArtService(tm)>0) {
            response.getWriter().print("<script language='javascript'>alert('上传成功')</script>");
            return "heroEdit";
        }
        else
        {
            response.getWriter().print("<script language='javascript'>alert('上传失败')</script>");
            tm=null;
            return "heroEdit";
        }
    }

    @RequestMapping("SelDistrictServlet.do")
    public String SelDistrictServlet(Model model)
    {
        tm_info tm=new tm_info();
        tm.setTm_type(9);
        model.addAttribute("Model9",articleService.SelArtService(tm));
        return "district";
    }

    @RequestMapping("SelHeroManServlet.do")
    public String SelHeroManServlet(Model model)
    {
        tm_info tm=new tm_info();
        tm.setTm_type(12);
        model.addAttribute("Model",articleService.SelArtService(tm));
        return "hero";
    }
    //5 6
    @RequestMapping("SelHotsPotServlet.do")
    public String SelHotsPotServlet(Model model)
    {
        tm_info tm=new tm_info();
        tm.setTm_type(5);
        model.addAttribute("Model5",articleService.SelArtService(tm));
        tm.setTm_type(6);
        model.addAttribute("Model6",articleService.SelArtService(tm));

        return "hotspot";
    }

    @RequestMapping("SelHistoryServlet.do")
    public String SelHistoryServlet(Model model)
    {
        tm_info tm=new tm_info();
        tm.setTm_type(7);
        model.addAttribute("Model7",articleService.SelArtService(tm));
        tm.setTm_type(8);
        model.addAttribute("Model8",articleService.SelArtService(tm));
        return "history";
    }
    @RequestMapping("SelModelServlet.do")
    public String SelModelServlet(Model model)
    {
        tm_info tm=new tm_info();
        tm.setTm_type(1);
        model.addAttribute("Model1",articleService.SelArtService(tm));
        tm.setTm_type(2);
        model.addAttribute("Model2",articleService.SelArtService(tm));
        tm.setTm_type(3);
        model.addAttribute("Model3",articleService.SelArtService(tm));
        tm.setTm_type(4);
        model.addAttribute("Model4",articleService.SelArtService(tm));
        return "model";
    }

    @RequestMapping("SelPolicyServlet.do")
    public String SelPolicyServlet(Model model)
    {
        tm_info tm=new tm_info();
        tm.setTm_type(10);
        model.addAttribute("Model10",articleService.SelArtService(tm));
        tm.setTm_type(11);
        model.addAttribute("Model11",articleService.SelArtService(tm));
        return "policy";
    }

    @RequestMapping("SearchServlet.do")
    public String SearchServlet(tm_info tm,Model model)
    {
        model.addAttribute("tm",articleService.SearchArtDao(tm));
        return "search";
    }
}
