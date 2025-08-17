<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>자료 구조 다루기</title>
</head>
<body>
    <%
        // 과일 이름 리스트
        List<String> fruitList = new ArrayList<>();

        fruitList.add("사과");
        fruitList.add("바나나");
        fruitList.add("딸기");

    %>
    <table border="1">
        <% for (String fruit:fruitList) {%>
        <tr>
            <td><%= fruit %></td>
        </tr>
        <% } %>
    </table>
    <%
        // 여러 학생의 국어 수학 영어 점수 관리 데이터
        // 학생 1 - 국어 : 90, 수학 : 95, 영어 : 80
        List<Map<String, Integer>> scoreList = new ArrayList<>();
        Map<String, Integer> score1 = new HashMap<>();
        score1.put("국어", 90);
        score1.put("수학", 95);
        score1.put("영어", 80);

        Map<String, Integer> score2 = new HashMap<>();
        score2.put("국어", 100);
        score2.put("수학", 90);
        score2.put("영어", 70);

        scoreList.add(score1);
        scoreList.add(score2);
    %>
    <table border="1">
        <thead>
            <tr>
                <th>국어</th>
                <th>수학</th>
                <th>영어</th>
            </tr>
        </thead>
        <tbody>
        <% for (Map<String, Integer> score: scoreList) {%>
            <tr>
                <td><%=score.get("국어")%></td>
                <td><%=score.get("수학")%></td>
                <td><%=score.get("영어")%></td>
            </tr>
        <% }%>
        </tbody>
    </table>
</body>
</html>
