<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="style.css">
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
        String id = request.getParameter("id");
    %>
    <div id="wrap">
        <div class="d-flex">
            <div class="imageSection">
                <%
                    for (Map<String, Object> book:list) {
                        if(book.get("id") == id) {
                %>
                <img src="<%=book.get("image")%>" width="200">
                <% } }%>
            </div>
            <div class="section2">
                <%
                    for (Map<String, Object> book:list) {
                        if(book.get("id") == id) {
                %>
                <div class="display-3 text-dark font-weight-bold"><%=book.get("title")%></div>
                <div class="display-2 text-info"><%=book.get("author")%></div>
                <div class="display-1 text-info"><%=book.get("publisher")%></div>
                <% } }%>
            </div>
        </div>
    </div>
</body>
</html>
