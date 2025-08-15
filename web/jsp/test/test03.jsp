<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test03</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body>
    <%
        String result = "";
        String what = request.getParameter("request");
        Date now = new Date();
        if(what.equals("date")) {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
            result = "오늘 날짜 " + formatter.format(now);
        } else {
            SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초");
            result = "현재 시간 " + formatter.format(now);
        }
    %>

    <div class="container">
        <div class="display-1"><%= result %></div>
    </div>
</body>
</html>
