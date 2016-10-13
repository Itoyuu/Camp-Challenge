<%-- 
    Document   : db12
    Created on : 2016/10/06, 20:18:07
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
         <form action="db12-2.jsp" method="post">
            氏名:<input type="text" name ="Name"><br>
            誕生日:<br>
            西暦:<input type="number" name="year">年
            <input type="number" name ="month">月　
            <input type="number" name ="day">日<br>
            年齢:<input type="number" name ="age">
            <input type="submit" value ="検索">
        </form>
    </body>
</html>
