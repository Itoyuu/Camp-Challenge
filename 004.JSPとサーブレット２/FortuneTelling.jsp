<%-- 
    Document   : FortuneTelling
    Created on : 2016/09/15, 15:54:44
    Author     : itou
--%>

<%@page import="org.camp.servlet.ResultData"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String luckList[] = {"大吉","中吉","小吉","凶"};
           
           Random rand = new Random();
           
           Integer index =rand.nextInt(luckList.length);
           
           ResultData data = new ResultData();
           data.setD(new Date());
           data.setLuck(luckList [index]);
           request.setAttribute("DATA",data);
           RequestDispatcher rd = request.getRequestDispatcher("/FortuneTellingResult.jsp");
           rd.forward(request,response);

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
