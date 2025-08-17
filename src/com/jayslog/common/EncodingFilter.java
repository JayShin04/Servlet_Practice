package com.jayslog.common;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.annotation.WebServlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

// 해당 필터를 거쳐갈 서블릿에 대한 url path 패턴 적용
// /servlet 시작하는 url mapping된 서블릿만 적용
// @WebServlet("/servlet/**")

// 모든 서블릿
@WebFilter("/*")
public class EncodingFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        // 공통으로 처리될 항목
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("UTF-8");

        chain.doFilter(request, response);
    }
}
