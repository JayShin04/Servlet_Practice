package com.jayslog.servlet.ex;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json");
        // response.setContentType("text/html");

        //이름과 생년월일 입력 받고
        //이름과 나이를 html로 구성
        PrintWriter out = response.getWriter();

        //request에서 name 이란 파라미터 이름으로 값을 꺼내 쓸테니 name이라는 이름으로 이름을 전달해라!
        String name = request.getParameter("name");
        //request 에서 birthday 이란 파라미터 이름으로 값을 꺼내 쓸테니 birthday라는 이름으로 생년월일을 전달해라!
        String birthday = request.getParameter("birthday");

        String yearString = birthday.substring(0, 4);
        int year = Integer.parseInt(yearString);

        int age = 2025 - year + 1;

        // 이름과 나이 데이터를 응답에 담는다.
        // 김인규, 21
        // 응답에 데이터를 담기 위한 **문자열** 규격
        // JSON(Javascript Object Notation)
        // ["김인규", "지석진", "지예은"]
        // {"name":"김인규", "age":21}

        out.println("{\"name\":\""+name+"\", \"age\":"+age+"}");

//        out.println("" +
//                "<html>\n" +
//                "   <head><title>정보</title></head>\n" +
//                "   <body>\n" +
//                "       <h3>이름 : " + name + "</h3>\n" +
//                "       <h3>나이 : " + age + "</h3>\n" +
//                "   </body>" +
//                "</html>");

    }
}
