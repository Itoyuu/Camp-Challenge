<%-- 
    Document   : touroku
    Created on : 2016/10/13, 15:55:47
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
        <form action="tourokusyori" method="post">
        ID:<input type="number" name="nyuryoku"><br>
    商品名:<input type="text" name ="syohinmei"><br>
    金額：<input type="number" name="kingaku"><br>
           <input type="submit" value="登録"> 
        </form>
            </body>
</html>
