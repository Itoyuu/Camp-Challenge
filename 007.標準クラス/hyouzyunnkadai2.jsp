<%-- 
    Document   : hyouzyunnkadai2
    Created on : 2016/09/26, 14:44:47
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><% // 現在の日時を「年-月-日 時:分:秒」で表示してください。
   Date f = new Date();
    Calendar cal = Calendar.getInstance(); 
    cal.setTime(f);
    int y = cal.get(Calendar.YEAR);
    int m = cal.get(Calendar.MONTH)+1;
    int d = cal.get(Calendar.DAY_OF_MONTH);
    int h = cal.get(Calendar.HOUR);
    int mm = cal.get(Calendar.MINUTE);
    int s = cal.get(Calendar.SECOND);
        
    out.print(y + "年" + m + "月"  + d + "日"+ h + ":" + mm + ":" + s );
        %></body>
</html>
