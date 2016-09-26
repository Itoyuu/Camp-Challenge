<%-- 
    Document   : hyouzyunnkadai5
    Created on : 2016/09/26, 16:02:31
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%//５．自分の氏名について、バイト数と文字数を取得して、表示してください。
           String name = "伊藤　優";
           out.println(name + (name.getBytes().length));
           out.println(name + name.length());
            %> </body>
</html>
