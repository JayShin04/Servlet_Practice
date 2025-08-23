package com.jayslog.database.ex;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;


public class Ex01Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {


        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        // used_goods 테이블의 모든 행 조회해서 정해진 규격의 문자열로 response에 담는다.


        try {
            // Database 접속
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

            // 접속 정보 준비
            // 서버 접속 주소, 포트, 사용할 데이터베이스, 사용자 이름, 비밀번호
            String url = "jdbc:mysql://localhost:3306/dulumary_250725"; // jdbc : java database connector
            String username = "root";
            String password = "root";

            // 접속 및 접속 관리 객체 얻기
            Connection connection = DriverManager.getConnection(url, username, password); // 접속 상태를 관리하는 객체가 리턴

            // 쿼리 수행
            String query = "SELECT * FROM `used_goods`;";
            Statement statement = connection.createStatement();

            // 조회된 결과 다루기
            ResultSet resultSet = statement.executeQuery(query);

            resultSet.next();
            String title = resultSet.getString("title");
            int price = resultSet.getInt("price");
            String description = resultSet.getString("description");

            out.println("제목 : " + title + "가격 : " + price + " 설명 : " + description);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }




    }
}
