package com.jayslog.servlet.test;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet {
    // doPost 메소드 바깥쪽에 위치
    private final Map<String, String> userMap =  new HashMap<String, String>() {
        {
            put("id", "hagulu");
            put("password", "asdf");
            put("name", "김인규");
        }
    };
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String userId = request.getParameter("userId");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        out.println("" +
                "<html>" +
                "   <head><title>test10</title></head>" +
                "   <body>");
        if (!userId.equals(userMap.get("id"))) {
            out.println("       <h3>id가 일치하지 않습니다.</h3>");
        } else if (!password.equals(userMap.get("password"))) {
            out.println("       <h3>비밀번호가 일치하지 않습니다.</h3>");
        } else {
            out.println("       <h3>" + userMap.get("name") + "님 환영합니다.</h3>");
        }

        out.println("" +
                "   </body>" +
                "</html>");

    }


}
