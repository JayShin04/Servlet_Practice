package com.jayslog.servlet.test;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test02Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/plain");
        // 결과물
        // Response Body
        PrintWriter out = response.getWriter();

        // 현재 시간은 ~~시 ~~분 ~~초입니다.
        Date now = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("h시 m분 s초");
        String nowString = "현재 시간은 " + formatter.format(now) + "입니다.";
        out.println(nowString);
    }

}
