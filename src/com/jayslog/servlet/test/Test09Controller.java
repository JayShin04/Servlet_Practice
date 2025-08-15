package com.jayslog.servlet.test;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String introduce = request.getParameter("introduce");

        out.println("" +
                "<html>" +
                "   <head><title>지원결과</title></head>" +
                "   <body>");

        out.println("" +
                "       <h2>" + name + "님 지원이 완료되었습니다.</h2>" +
                "       <hr>\n" +
                        "<div>지원내용</div>\n" +
                "       <div>" + introduce + "</div>");

        out.println("" +
                "   </body>" +
                "</html>");
    }
}
