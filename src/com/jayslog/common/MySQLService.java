package com.jayslog.common;

import java.sql.*;

public class MySQLService {

    private Connection connection;
    // 데이터 베이스 접속 기능
    public boolean connect() {
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            String url = "jdbc:mysql://localhost:3306/dulumary_250725";
            String username = "root";
            String password = "root";

            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
           // 접속 실패
            return false;
        }
        return true;
    }

    // select 쿼리 수행 기능
    public ResultSet select(String query) {
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            return resultSet;
        } catch (SQLException e) {
            return null;
        }
    }


    // 접속 끊기
    public boolean disconnect() {
        try {
            connection.close();
        } catch (SQLException e) {
            // 실패
            return false;
        }
        return true;
    }
}
