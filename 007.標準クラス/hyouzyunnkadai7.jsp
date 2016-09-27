<%-- 
    Document   : hyouzyunnkadai7
    Created on : 2016/09/27, 16:54:09
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%//７．以下の文章の「I」⇒「い」に、「U」⇒「う」に入れ替える処理を作成し、
            //結果を表示してください。
           //「きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます」
    String kadai7 = "「きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます」";
    kadai7 = kadai7.replace("U","う");
    kadai7 = kadai7.replace("I", "い");
    out.print(kadai7);
   %> </body>
</html>
