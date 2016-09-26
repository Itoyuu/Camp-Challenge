<%-- 
    Document   : hyouzyunnkadai4
    Created on : 2016/09/26, 15:41:05
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%//４．2015年1月1日 0時0分0秒と2015年12月31日 23時59分59秒の差（ミリ秒）
            //を表示してください。
Calendar cal = Calendar.getInstance(); 
          cal.set(2015,0,1,0,0,0);
          Date f = cal.getTime();
          
Calendar cal2 = Calendar.getInstance(); 
          cal.set(2015,11,31,23,59,59);
          Date f2 = cal2.getTime();
       
        long lon1 = f.getTime();
        long lon2 = f2.getTime();
        long lon3 = lon2 - lon1;
        out.print(lon3);
 %> </body>
</html>
