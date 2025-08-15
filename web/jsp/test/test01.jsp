<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test01 JSP 스크립트 요소 다루기</title>
</head>
<body>
    <%
        int[] scores = {80, 90, 100, 95, 80};
        int sum = 0;
        for (int i = 0; i < scores.length; i++) {
            sum += scores[i];
        }
        double average = sum / (float)scores.length;
    %>
    <h3>1. 점수 평균은 <%= average %></h3>
    <%
        List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});

        int score = 0;
        for (String O : scoreList) {
            if (O.equals("O")) {
                score += 10;
            }
        }
    %>
    <h3>2. 채점 결과는<%= score %></h3>
    <%!
        public int getSumOneToN(int N) {
            int sum = 0;
            for (int i = 1; i <= N; i++) {
                sum += i;
            }
            return sum;
        }
    %>
    <h3>3. 1부터 50까지의 합은 <%= getSumOneToN(50) %></h3>
    <%
        String birthDay = "20010820";
        String yearString = birthDay.substring(0, 4);
        int year = Integer.parseInt(yearString);
        int age = 2025 - year + 1;
    %>
    <h3>4. <%= birthDay %>의 나이는 <%= age%>살 입니다.</h3>
</body>
</html>
