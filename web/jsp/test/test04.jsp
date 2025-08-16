<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test04</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">

</head>
<body>
    <%
        String operator = request.getParameter("operator");
        int number1 = Integer.parseInt(request.getParameter("number1"));
        int number2 = Integer.parseInt(request.getParameter("number2"));
    %>
    <%!
        public double calculate(int number1, String operator, int number2) {
            double result = 0;
            if (operator.equals("+")) {
                result = number1 + number2;
            } else if (operator.equals("-")) {
                result = number1 - number2;
            } else if (operator.equals("X")) {
                result = number1 * number2;
            } else {
                result = number1 / (float)number2;
            }
            return result;
        }
    %>

    <h4>계산 결과</h4>
    <div class="display-4">
        <%= number1 %> <%= operator %> <%= number2 %> = <span class="text-info"><%= calculate(number1, operator, number2) %></span>
    </div>
</body>
</html>
