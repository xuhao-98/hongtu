package com.zjy.spring.filter;

import javax.servlet.*;
import java.io.IOException;

public class CharacterFilter implements Filter {

    @Override
    public void destroy() {
// TODO Auto-generated method stub

    }

    @Override

    public void doFilter(ServletRequest reqeust, ServletResponse response, FilterChain chain)

            throws IOException, ServletException {

        reqeust.setCharacterEncoding("utf-8");

        response.setCharacterEncoding("utf-8");

        response.setContentType("text/html;charset=utf-8");


        chain.doFilter(reqeust, response);

    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {
// TODO Auto-generated method stub
    }
}
