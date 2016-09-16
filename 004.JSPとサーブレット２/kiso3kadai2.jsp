<%-- 
    Document   : kiso3kadai2
    Created on : 2016/09/16, 15:03:50
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%//引数として数値を受け取り、
    //その値が奇数か偶数か判別＆表示する処理をメソッドとして制作し、
    //適当な数値に対して奇数・偶数の判別を行ってください%>

<%!
    
    String suuzi(int num){
    if(num == 0){
        return "０です";
    }
    else if(num % 2 == 0){
        return "偶数です";
    }
    else{
        return "奇数です";
    }
}
    %>
    
<%
    int x = 5;
    String y = suuzi(x);
    out.print(y);
%>
