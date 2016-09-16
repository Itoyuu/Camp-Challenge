<%-- 
    Document   : kiso3kadai8
    Created on : 2016/09/16, 16:27:21
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%//先にInteger limit=2を定義しておき、課題7の処理のうち
  // 2人目(limitで定義した値の人数)までで
  //ループ処理を抜けるようにする%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
    HashMap<String,String> list = new HashMap<String,String>();
    String get(int num){
    
    String profile = "";
    
    if(num == 1){
        list.put("ID","75");
        list.put("名前","伊藤");
        list.put("誕生日","１１月６日");
        list.put("住所","埼玉県");
        profile = (list.get("名前") + list.get("誕生日") + list.get("住所"));        
    }
    if(num == 2){
        list.put("ID","76");
        list.put("名前","後藤");
        list.put("誕生日","１１月７日");
        list.put("住所",null);
        profile = (list.get("名前") + list.get("誕生日") + list.get("住所"));
    }
    if(num == 3){
        list.put("ID","77");
        list.put("名前","佐藤");
        list.put("誕生日","１１月８日");
        list.put("住所","鹿児島県");
        profile = (list.get("名前") + list.get("誕生日") + list.get("住所"));
    }
    return profile;
}
%>
    
<%  
    
    int limit =2;
    
    for(int x = 0; x <= 3; x++){
        if(x > limit){
            break;
        }
        String profile = get(x);
        out.print(profile + "<br>");
    }
%>
