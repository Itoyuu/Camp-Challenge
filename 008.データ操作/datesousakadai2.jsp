<%-- 
    Document   : datesousakadai2
    Created on : 2016/09/27, 13:33:21
    Author     : itou
--%>
<%//２．以下の機能を実装してください。
  //１で作成したHTMLの入力データを取得し、画面に表示する
 request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("txtName");
    String zyen = request.getParameter("txtZyen");
    String syumi = request.getParameter("txtSample");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        out.print("入力データ<br>" + name +" <br>" + zyen + "<br>" + syumi);
             %>
    </body>
</html>