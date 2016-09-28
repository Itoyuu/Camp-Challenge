<%-- 
    Document   : datesousasyutu
    Created on : 2016/09/28, 15:43:51
    Author     : itou
--%><%request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("txtName");
    String zyen = request.getParameter("txtZyen");
    String syumi = request.getParameter("txtSyumi");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> <%
        HttpSession hs = request.getSession();
        hs.setAttribute("name1", name);
        hs.setAttribute("zyen1", zyen);
        hs.setAttribute("syumi1", syumi);
        out.print("入力データ<br>" + name + " <br>" + zyen + "<br>" + syumi);
    %>
          <a href = "datesousakadai5.jsp">戻る</a>
    </body>
</html>
