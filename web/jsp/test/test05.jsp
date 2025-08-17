<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>길이 변환</title>
</head>
<body>
    <%
        int inputCM = Integer.parseInt(request.getParameter("inputCM"));
        String[] changeType = request.getParameterValues("changeType");
        String printTypes = "";
        for (int i = 0; i < changeType.length; i++) {
            if(changeType[i].equals("inch")) {
                double inch = inputCM / 2.54;
                printTypes += inch + "in <br>";
            } else if (changeType[i].equals("yard")) {
                double yard = inputCM / 91.44;
                printTypes += yard + "yd <br>";
            } else if (changeType[i].equals("feet")) {
                double feet = inputCM / 30.48;
                printTypes += feet + "ft <br>";
            } else {
                double meter = inputCM / 100.0;
                printTypes += meter + "m <br>";
            }
        }
    %>
    <%!
        public String print(String text) {
            if (Boolean.parseBoolean(text)) {
                return text;
            }
            return null;
        }
    %>
    <h3>변환 결과</h3>
    <h4> <%= inputCM %>cm</h4>
    <hr>
    <h3><%= printTypes %></h3>
</body>
</html>
