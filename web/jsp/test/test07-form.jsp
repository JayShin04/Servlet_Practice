<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h2>메뉴 검색</h2>
        <form method="POST" action="/jsp/test/test07.jsp">
            <input type="text" name="menu"> <label><input type="checkbox" name="check" value="check"> 4점 이하 제외 </label> <br>
            <button type="submit">검색</button>
        </form>
    </div>
</body>
</html>
