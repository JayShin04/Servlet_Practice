package com.jayslog.database.test;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/db/test/test01")
public class Test01Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();


        try {
            // Database 접속
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

            // 접속 정보 준비
            // 서버 접속 주소, 포트, 사용할 데이터베이스, 사용자 이름, 비밀번호
            String url = "jdbc:mysql://localhost:3306/dulumary_250725"; //jdbc : java database connector
            String username = "root";
            String password = "root";

            // 접속 및 접속 관리 객체 얻기
            Connection connection = DriverManager.getConnection(url, username, password);

            //쿼리 수행
//            String query = "INSERT INTO `real_estate` (realtor_id, address, area, type, price, rent_price)" +
//                    "VALUE (3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL)";
            String query = "SELECT * FROM `real_estate` ORDER BY `id` DESC LIMIT 10";
            Statement statement = connection.createStatement();
//            int count = statement.executeUpdate(query);

//            out.println("실행 결과 : " + count);
            ResultSet resultSet = statement.executeQuery(query);

//            insert 수행 후, 전체 매물 리스트 중 다음 컬럼만 포함하세요
//            매물 주소
//            면적
//            거래 종류(type)
            while(resultSet.next()) {
                String address = resultSet.getString("address");
                int area = resultSet.getInt("area");
                String type = resultSet.getString("type");
                out.println("매물 주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
            }

            statement.close();



            connection.close();


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
