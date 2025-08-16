
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BMI 측정 결과 test02</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body>
    <%
        double weight = Double.parseDouble(request.getParameter("weight"));
        double height = Double.parseDouble(request.getParameter("height"));

        double BMI = weight / ((height / 100.0) * (height / 100.0));
        String resultString = "";
        if (BMI < 18.5) {
            resultString = "저체중";
        } else if (BMI < 25.0) {
            resultString = "정상";
        } else if (BMI < 30.0) {
            resultString = "과체중";
        } else {
            resultString = "비만";
        }
    %>

    <div class="container">
        <h1>BMI 측정 결과</h1>
        <div class="display-4">당신은 <span class="text-info"><%= resultString %></span>입니다.</div>
        <h4>BMI 수치 : <%=BMI%></h4>
    </div>
</body>
</html>
