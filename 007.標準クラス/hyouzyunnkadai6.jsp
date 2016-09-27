<%-- 
    Document   : hyouzyunnkadai6
    Created on : 2016/09/26, 16:16:22
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%//６．自分のメールアドレスの「@」以降の文字を取得して、表示してください。 
        String mail = "s2011026@google.com";
        String[] mailSplit = mail.split("@",0);
        out.print(mailSplit[1]);
   %>
    </body>
</html>
