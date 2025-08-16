<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ex03 Post Method</title>
</head>
<body>
    <%
        String nickname = request.getParameter("nickname");


        // 좋아하는 동물 하나를 전달 받고 보여준다.
        // 고양이, 강아지, 호랑이
        String animal = request.getParameter("animal");

        // 좋아하는 과일 하나를 전달 받고 보여준다.
        // 바나나, 딸기, 복숭아
        String fruit = request.getParameter("fruit");
    %>
    <h3><%=nickname%></h3>
    <h3><%= animal %></h3>
    <h3><%= fruit %></h3>

</body>
</html>
