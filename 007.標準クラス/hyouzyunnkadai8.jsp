<%-- 
    Document   : hyouzyunnkadai8
    Created on : 2016/09/27, 17:17:45
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.util.*"%>
<%@page import= "java.io.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%//８．ファイルに自己紹介を書き出し、保存してください。
        File text = new File("C:\\Users\\itou\\Documents\\NetBeansProjects\\JspAndServlet\\build\\web\\jsp\\text.txt");
        FileWriter fw = new FileWriter(text);
        BufferedWriter bw = new BufferedWriter(fw);
        bw.write("伊藤　優です。<br>");
       bw.write("好きな食べ物はラーメンです。<br>");
       bw.write("趣味は散歩です");
      bw.close();
  %></body>
</html>
: