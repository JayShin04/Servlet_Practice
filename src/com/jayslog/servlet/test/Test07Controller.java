package com.jayslog.servlet.test;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String address = request.getParameter("address");
        String card = request.getParameter("card");
        String price = request.getParameter("price");

        out.println("" +
                "<html>" +
                "   <head><title>Test07</title></head>" +
                "   <body>");
        if (address.contains("서울시")) {
            out.println("" +
                    "   <h3>"+address+" 배달 준비중</h3>");
        } else {
            out.println("" +
                    "   <h3>배달 불가 지역입니다.</h3>");
        }
        out.println("<hr>");
        if (card.equals("신한카드")) {
            out.println("" +
                    "   <div>결제 불가 카드입니다.</div>");
        } else {
            out.println("" +
                    "   <div>결제금액 : " + price + "원</div>");
        }

        out.println("" +
                "   </body>" +
                "</html>");

    }
}
