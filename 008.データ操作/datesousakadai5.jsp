<%-- 
    Document   : datesousakadai5
    Created on : 2016/09/28, 15:33:07
    Author     : itou
--%>

<%//5．以下の機能を実装してください。
    //名前・性別・趣味を入力するページを作成してください。
//また、入力された名前・性別・趣味を記憶し、次にアクセスした際に
//記録されたデータを初期値として表示してください。
//※Javaと同時に、HTMLの知識が必要になります。
//※入力フィールドの使い方を調べてみましょう。

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>

<% HttpSession hs = request.getSession();%>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        
    <body>
         <form action="./datesousasyutu.jsp" method="post">   
        名前：<input type="text" name="txtName" value = "<%=hs.getAttribute("name1")%>">
            男<input type="radio" name="txtZyen" value="男" <% if(hs.equals("男")){%>checked<%}%>>
            女<input type="radio" name="txtZyen" value="女" <% if(hs.equals("女")){%>checked<%}%>>
            趣味:<textarea name ="txtSyumi"><%=hs.getAttribute("syumi1")%></textarea>
          
          <input type="submit" value="送信">
          </form> 
    <body>
    
 
