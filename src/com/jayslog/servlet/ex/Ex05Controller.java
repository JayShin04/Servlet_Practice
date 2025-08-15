package com.jayslog.servlet.ex;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // 이름 생년월일 입력 받고, 이름과 나이 출력
        // name, birthday
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String yearString = birthday.substring(0, 4);
        int year = Integer.parseInt(yearString);

        int age = 2025 - year + 1;
        out.println("" +
                "<html>" +
                "   <head><title>ex05</title></head>" +
                "   <body>");
        out.println("   이름 : " + name + "<br>");
        out.println("   나이 : " + age);

        out.println("   </body>" +
                "   </html>");

    }
}
