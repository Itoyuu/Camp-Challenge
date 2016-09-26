<%-- 
    Document   : hyouzyunnkadai1
    Created on : 2016/09/26, 14:31:31
    Author     : itou
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%//2016年1月1日 0時0分0秒のタイムスタンプを作成し、表示してください。
          Calendar cal = Calendar.getInstance(); 
          cal.set(2016,0,1,0,0,0);
          Date f = cal.getTime();
          out.print(f.getTime());
         %>
    </body>
</html>
