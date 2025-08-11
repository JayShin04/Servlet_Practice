package com.jayslog.servlet.test.answer;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
@WebServlet("/servlet/answer/test08")
public class Test08Controller extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        //검색어를 파라미터로 전달 받는다.
        String keyword = request.getParameter("keyword");

        List<String> list = new ArrayList<>(Arrays.asList(
                "강남역 최고 맛집 소개 합니다.",
                "오늘 기분 좋은 일이 있었네요.",
                "역시 맛집 데이트가 제일 좋네요.",
                "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
                "자축 저 오늘 생일 이에요."));


        out.println("" +
                "<html>" +
                "   <head><title>검색 결과</title></head>" +
                "   <body>");

        for(String text: list) {
            if (text.contains(keyword)) {
                text = text.replace(keyword, "<b>"+keyword+"</b>");
                out.println("<div>" + text + "</div> <hr>");
            }
        }

        out.println("" +
                "   </body>" +
                "</html>");
    }
}
