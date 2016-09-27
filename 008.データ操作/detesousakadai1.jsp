<%-- 
    Document   : detesousakadai1
    Created on : 2016/09/27, 13:15:23
    Author     : itou
--%>
<%//１．以下の入力フィールドを持ったHTMLを、Javaで処理する想定で記述してください。
  //・名前（テキストボックス）、性別（ラジオボタン）、趣味（複数行テキストボックス）
 %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 <form action="./datesousakadai1.jsp" method="post">
      名前:<input type="text" name="txtName">
      性別:<input type="text" name="txtZyen">
      趣味:<input type="text" name="txtSyumi">
      <input type="submit" value="送信">
    </form>
    </body>
</html>
