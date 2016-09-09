<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//　６．変数を宣言し、その変数の中身によって以下の表示を行ってください。
//　　　⇒値が 1 なら「１です！」
//　　　⇒値が 2 なら「プログラミングキャンプ！」
//　　　⇒それ以外なら「その他です！」


int a = 2;

if(a==1){out.println("1です！");}
else if(a==2){out.println("プログラミングキャンプ！");}
else{out.println("その他です！");}
%>

