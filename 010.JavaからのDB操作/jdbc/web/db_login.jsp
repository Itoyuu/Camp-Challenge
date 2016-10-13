<%-- 
    Document   : db_login
    Created on : 2016/10/07, 16:57:58
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
         <form action="db_loginsyori" method="post">
            ID:<input type="text" name ="id"><br>
            パスワード:<input type="text" name ="pass"><br>
            <input type="submit" value="ログイン">  
         </form>
            </body>
</html>
