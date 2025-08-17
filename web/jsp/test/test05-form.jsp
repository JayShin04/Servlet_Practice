<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test05-form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h3>길이 변환</h3>
        <form method="post" action="/jsp/test/test05.jsp">
            <div class="d-flex align-items-end">
                <input type="text" class="form-control w-25 mx-1" name="inputCM"> <div>cm</div>
            </div>
            <div class="mt-2">
                <label>인치<input type="checkbox" class="ml-1" name="changeType" value="inch"></label> <%-- 2.54 --%>
                <label>야드<input type="checkbox" class="ml-1" name="changeType" value="yard"></label> <%-- 91.44 --%>
                <label>피트<input type="checkbox" class="ml-1" name="changeType" value="feet"></label> <%-- 30.48 --%>
                <label>미터<input type="checkbox" class="ml-1" name="changeType" value="meter"></label> <%-- 100.0 --%>
            </div>
            <button type="submit">결과</button>
        </form>
    </div>
</body>
</html>
