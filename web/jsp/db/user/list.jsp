<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.jayslog.common.MySQLService" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>사용자 리스트</title>
</head>
<body>

    <%
        // 이 부분은 현재 매번 작성 되는 코드 --> 클래스로 만들어서 정리 및 사용하자!
//        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
//
//        // 접속 정보 준비
//        // 서버 접속 주소, 포트, 사용할 데이터베이스, 사용자 이름, 비밀번호
//        String url = "jdbc:mysql://localhost:3306/dulumary_250725";
//        String username = "root";
//        String password = "root";
//
//        Connection connection = DriverManager.getConnection(url, username, password);

        MySQLService mysqlService = new MySQLService();

        mysqlService.connect();
        ResultSet resultSet = mysqlService.select("SELECT * FROM `new_user`");
    %>
    <h3>사용자 리스트</h3>

    <table border="1">
        <thead>
            <tr>
                <th>이름</th>
                <th>이메일</th>
                <th>자기소개</th>
            </tr>
        </thead>
        <tbody>
        <% while (resultSet.next()) {%>
            <tr>
                <td><%=resultSet.getString("name")%></td>
                <td><%=resultSet.getString("email")%></td>
                <td><%=resultSet.getString("introduce")%></td>
            </tr>
        <% } %>
        </tbody>

    </table>

</body>
</html>
