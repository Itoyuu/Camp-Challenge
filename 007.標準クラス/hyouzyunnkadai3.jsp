<%-- 
    Document   : hyouzyunnkadai3
    Created on : 2016/09/26, 15:25:06
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%// ３．2016年11月4日 10時0分0秒のタイムスタンプを作成し、
           //「年-月-日 時:分:秒」で表示してください。
 Calendar cal = Calendar.getInstance(); 
          cal.set(2016,10,4,10,0,0);
          Date f = cal.getTime();
          out.print(f.getTime());
           
int y = cal.get(Calendar.YEAR);
    int m = cal.get(Calendar.MONTH)+1;
    int d = cal.get(Calendar.DAY_OF_MONTH);
    int h = cal.get(Calendar.HOUR);
    int mm = cal.get(Calendar.MINUTE);
    int s = cal.get(Calendar.SECOND);
        
    out.print(y + "年" + m + "月"  + d + "日"+ h + ":" + mm + ":" + s );

    %></body>
</html>
