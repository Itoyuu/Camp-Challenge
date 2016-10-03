<%-- 
    Document   : hyouzyunkadai9
    Created on : 2016/09/28, 21:54:51
    Author     : Yuu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% //９．ファイルから自己紹介を読み出し、表示してください。
        File text = new File("text.txt");
        FileReader fr = new FileReader(text);
        BufferedReader br = new BufferedReader(fr);
        String st;
        while((st = br.readLine()) != null){
            out.print(st);
        }
            br.close();
         %> 
    
    </body>
</html>