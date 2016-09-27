<%-- 
    Document   : datesousakadai3
    Created on : 2016/09/27, 14:15:27
    Author     : itou
--%>
<%//３．クッキーに現在時刻を記録し、
 //次にアクセスした際に、前回記録した日時を表示してください。
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
    Cookie c = new Cookie("LastLogin", time.toString());
    response.addCookie(c);
   
    Cookie cs[] = request.getCookies();
    if (cs != null) {
        for (int i=0; i<cs.length; i++) {
            if (cs[i].getName().equals("LastLogin")) {
                out.print("最後のログインは、"+cs[i].getValue());
                break;
            }
        }
    }
   %> </body>
</html>
