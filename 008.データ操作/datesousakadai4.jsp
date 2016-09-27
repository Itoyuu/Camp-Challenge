<%-- 
    Document   : datesousakadai4
    Created on : 2016/09/27, 15:20:43
    Author     : itou
--%><%//４．３と同じ機能をセッションで作成してください。


     %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.Cookie"%>
<%@page import="java.util.Date"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%
     Date time = new Date();
    HttpSession hs = request.getSession(true);
    hs.setAttribute("LastLogin", time.toString());
    out.print("最後のログインは、"+hs.getAttribute("LastLogin"));
 %> </body>
</html>
