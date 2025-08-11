package com.jayslog.servlet.test;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        String number1 = request.getParameter("number1");
        int number1Integer = Integer.parseInt(number1);
        String number2 = request.getParameter("number2");
        int number2Integer = Integer.parseInt(number2);
        int addition = number1Integer + number2Integer;
        int subtraction = number1Integer - number2Integer;
        int multiplication = number1Integer * number2Integer;
        double division = number1Integer / (double)number2Integer;

        // {addition:135, subtraction: 105, multiplication:1800, division: 8}
        out.println("{\"addition\":"+addition+", \"subtraction\":"+subtraction+", \"multiplication\":"+multiplication+", \"division\":"+division+"}");

    }

}
