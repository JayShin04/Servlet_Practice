<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test04-form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h3>사칙 연산</h3>
        <form method="post" action="/jsp/test/test04.jsp">
            <div class="d-flex">
                <input type="text" name="number1" class="form-control w-25 mr-1">
                <select name="operator" class="col-1 mx-2">
                    <option>+</option>
                    <option>-</option>
                    <option>X</option>
                    <option>÷</option>
                </select>
                <input type="text" name="number2" class="form-control w-25 ml-1">
                <button type="submit" class="btn btn-success">계산</button>
            </div>
        </form>
    </div>
</body>
</html>
