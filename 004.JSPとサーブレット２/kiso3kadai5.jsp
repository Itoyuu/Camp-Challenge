<%-- 
    Document   : kiso3kadai5
    Created on : 2016/09/16, 15:42:51
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%//戻り値としてある人物のid(数値),名前,生年月日、
    //住所を返却するメソッドを作成し、
    //受け取った後はid以外の値を表示する%>
<%!
    ArrayList get(){
    
    ArrayList<String> list = new ArrayList<String>();
    
    list.add("ID：777");
    list.add("名前：伊藤優");
    list.add("誕生日：１１月６日");
    list.add("住所：埼玉県飯能市");
    return list;
}
    
%>

<%
    ArrayList list = get();
    for(int x = 1; x < list.size(); x++){
    out.print(list.get(x) + "<br>");
    }
%>