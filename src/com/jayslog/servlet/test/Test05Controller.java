package com.jayslog.servlet.test;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
//        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        String number = request.getParameter("number");
        int numberInteger = Integer.parseInt(number);
        out.println("" +
                "<html>" +
                "   <head><title>Test05</title></head>" +
                "   <body>" +
                "       <ul>");
        for (int i = 1; i <= 9; i++) {
            out.println("<li>" + number + " X " + i + " = " + numberInteger * i + "</li>");
        }


        out.println("" +
                "       </ul>" +
                "   </body>" +
                "</html>");

    }
}
