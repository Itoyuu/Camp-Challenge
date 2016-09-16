<%-- 
    Document   : kiso3kadai4
    Created on : 2016/09/16, 15:19:14
    Author     : itou
--%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%//課題1で定義したメソッドに追記する形として、戻り値　true(boolean)　を返却するように修正し、
//メソッドの呼び出し側でtrueを受け取れたら「この処理は正しく実行できました」、
//そうでないなら「正しく実行できませんでした」と表示する%>
<%! 
    ArrayList get(){
    
    ArrayList<String> list = new ArrayList<String>();
    
    list.add("伊藤　優");
    list.add("11月6日生まれです");
    list.add("よろしくお願いします");
    return list;
}  
%>

<%! 
    String han(boolean owari){
    if(owari == true){
        return "この処理は正しく実行できました<br><br>";
    }
    else{
        return "処理は実行できませんでした<br><br>";
    }
}
%>

<%
    boolean owari = true;
    String ka = han(owari);
    out.print(ka);
    
    ArrayList list = get();
    for(int x = 0; x<10; x++) {
        out.print(list.get(0)+"<br>"+list.get(1)+"<br>"+list.get(2)+"<br>");
    }
%>






