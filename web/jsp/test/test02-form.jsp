<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>체격 조건 입력 test02-form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h2>체격 조건 입력</h2>
        <form method="get" action="/jsp/test/test02.jsp">
            <input type="text" name="height"> cm <input type="text" name="weight"> kg
            <button type="submit" class="btn btn-primary">계산</button>
        </form>
    </div>
</body>
</html>
