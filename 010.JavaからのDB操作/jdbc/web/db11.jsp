<%-- 
    Document   : db11
    Created on : 2016/10/06, 18:32:24
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="db11-2.jsp" method="post">
            変更ID入力<input type="number" name="change"><br>
            氏名:<input type="text" name ="Name"><br>
            電話番号:<input type="number" name ="tell"><br>
            誕生日:<br>
            西暦:<input type="number" name="year">年
            <input type="number" name ="month">月　
            <input type="number" name ="day">日<br>
            年齢:<input type="number" name ="age">
            <input type="submit" value ="送信">
        </form>
    </body>
</html>
