package com.jayslog.servlet.ex;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Ex01Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        // 현재 날짜 시간을 보여주는 페이지
        // 결과에 대한 정보 설정
        // Response Header
        // Character set
        response.setCharacterEncoding("UTF-8");
        // 데이터의 타입 (Content Type)
        response.setContentType("text/plain");

        // 결과물
        // Response Body
        PrintWriter out = response.getWriter();

        // 현재 날짜 시간 관리 객체
        Date date = new Date();

//        out.println(date);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일 h:m:s");
        String dateTimeString = formatter.format(date);

        out.println(dateTimeString);
    }


}
