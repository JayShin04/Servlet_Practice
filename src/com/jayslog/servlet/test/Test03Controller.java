package com.jayslog.servlet.test;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        out.println("" +
                "<html>" +
                "   <head><title>test03</title></head>" +
                "   <body>" +
                "       <h2>[단독]고양이가 야옹해</h2>" +
                "       <p>기사 입력시간 : 2021/03/27/ 06:07:04</p>" +
                "       <hr>" +
                "       <p>끝</p>" +
                "   </body>" +
                "</html>");
    }
}
