package com.jayslog.servlet.test;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test01Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/plain");

        PrintWriter out = response.getWriter();
        Date now = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 m월 d일");
        String dateString = "오늘 날짜는 " + formatter.format(now);
        out.println(dateString);
    }
}
