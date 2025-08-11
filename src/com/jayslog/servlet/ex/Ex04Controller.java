package com.jayslog.servlet.ex;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/ex04")
public class Ex04Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        // 이름과 생년월일을 입력 받고,
        // 이름과 나이를 html로 구성
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        int year = Integer.parseInt(birthday.substring(0, 4));
        int age = 2025 - year + 1;

        out.println("" +
                "<html>" +
                "   <head><title>ex04</title></head>" +
                "   <body>");
        out.println("" +
                "       <h3>이름 : " + name + "</h3>" +
                "       <h3>나이 : " + age + "</h3>");
        out.println("" +
                "   </body>" +
                "</html>");
    }
}
