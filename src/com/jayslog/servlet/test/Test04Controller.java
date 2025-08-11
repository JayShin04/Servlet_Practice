package com.jayslog.servlet.test;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test04")
public class Test04Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest requeset, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        String pasteString = "";
        for(int i = 1; i <= 30; i++) {
            pasteString += "<li>"+i+"번째 리스트</li>";
        }
        out.println("" +
                "<html>" +
                "   <head><title>test04</title></head>" +
                "   <body>" +
                "       <ul>" +
                "           "+pasteString+
                        "</ul>" +
                "   </body>" +
                "</html>");

    }
}
