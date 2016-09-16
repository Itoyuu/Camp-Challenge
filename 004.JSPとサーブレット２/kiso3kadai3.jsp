<%-- 
    Document   : kiso3kadai3
    Created on : 2016/09/16, 15:08:44
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%//引き数が3つのメソッドを定義する。1つ目は適当な数値を、2つ目はデフォルト値が5の数値を、
//最後はデフォルト値がfalse(boolean)のtypeを引き数として定義する。
//1つ目の引き数に2つ目の引き数を掛ける計算をするメソッドを作成し、typeがfalseの時はその値を表示、
//trueのときはさらに2乗して表示する。%>

<%!
   Integer kake(int num1,int num2,boolean saigo){
    if(saigo == false){
        int num3 = num1 * num2; 
        return num3;
    }
    else{
        int num3 = num1 * num2; 
        int num4 = num3 * num3; 
        return num4;
    }
}
%>

<%
    int number1 = 4;
    int number2 = 5;
    boolean saigo = false;
    
    int x = kake(number1,number2,saigo);
    out.print(x);
%>








