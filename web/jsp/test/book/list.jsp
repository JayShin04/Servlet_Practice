<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"%>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Book List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body>
    <%
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> map = new HashMap<String, Object>() {
            {
                put("id", 1000);
                put("title", "아몬드");
                put("author", "손원평");
                put("publisher", "창비");
                put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791198363503.jpg");
            }
        };
        list.add(map);

        map = new HashMap<String, Object>() {
            {
                put("id", 1001);
                put("title", "사피엔스");
                put("author", "유발 하라리");
                put("publisher", "김영사");
                put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788934972464.jpg");
            }
        };
        list.add(map);

        map = new HashMap<String, Object>() {
            {
                put("id", 1002);
                put("title", "코스모스");
                put("author", "칼 세이건");
                put("publisher", "사이언스북");
                put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788983711892.jpg");
            }
        };
        list.add(map);

        map = new HashMap<String, Object>() {
            {
                put("id", 1003);
                put("title", "나미야 잡화점의 기적");
                put("author", "히가시노 게이고");
                put("publisher", "현대문학");
                put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/4808972756194.jpg");
            }
        };
        list.add(map);
    %>
    <header>
        <div class="fs-2 text-center font-weight-bold">책 목록</div>
    </header>
    <hr>
    <table class="table text-center">
        <thead>
            <tr>
                <th>id</th>
                <th>표지</th>
                <th>제목</th>
            </tr>
        </thead>

        <tbody>
        <% for (Map<String, Object> book:list) {%>
            <tr>
                <td><%=book.get("id")%></td>
                <td><img src="<%=book.get("image")%>" width="100"></td>
                <td>
                    <div class="display-4">
                        <a href="/jsp/test/book/details.jsp?id=<%=book.get("id")%>" class="nav-link text-info"><%=book.get("title")%> </a>
                    </div>
                </td>
            </tr>
        <%}%>
        </tbody>
    </table>


</body>
</html>
