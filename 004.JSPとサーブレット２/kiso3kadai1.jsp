<%-- 
    Document   : kiso3kadai1
    Created on : 2016/09/16, 13:16:51
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%//自分のプロフィール(名前、生年月日、自己紹介)を3行に分けて
//表示するユーザー定義メソッドを作り、
//メソッドを10回呼び出して下さい%>


<%!
  public ArrayList getprofile(){
    ArrayList<String> zibun = new ArrayList<String>();
    
    zibun.add("伊藤　優");
    zibun.add("１１月６日です。");
    zibun.add("よろしくおねがいします。");
    return zibun;
 } %> 

 <%
    ArrayList<String> zibun = this.getprofile();
     for(int x = 0; x<10;x++){
         out.print(zibun.get(0)+"<br>"+zibun.get(1)+"<br>"+zibun.get(2)+"<br>");
     }  
     
 
%>
