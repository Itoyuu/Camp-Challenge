<%-- 
    Document   : kiso3kadai7
    Created on : 2016/09/16, 16:15:12
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%//課題6の3人分のプロフィールのうち1人だけ住所が値nullの状態で定義し、
    //ループ処理で全員分のプロフィールを
    //id以外表示する処理を実行する。この際、
    //歯抜けになっているデータはcontinueで飛ばす%>
<%!
    HashMap<String,String> list = new HashMap<String,String>();
    String get(int num){
    
    String file = "";
    
    if(num == 1){
        list.put("ID","75");
        list.put("名前","伊藤");
        list.put("誕生日","１１月６日");
        list.put("住所","埼玉県");
        file = (list.get("名前") + list.get("誕生日") + list.get("住所"));        
    }
    if(num == 2){
        list.put("ID","76");
        list.put("名前","後藤");
        list.put("誕生日","１１月７日");
        list.put("住所","沖縄県");
        file = (list.get("名前") + list.get("誕生日") + list.get("住所"));
    }
    if(num == 3){
        list.put("ID","77");
        list.put("名前","佐藤");
        list.put("誕生日","１１月８日");
        list.put("住所","null");
        file = (list.get("名前") + list.get("誕生日") + list.get("住所"));
    }
    return file;
}
%>
    
<%  
    for(int x = 0; x <= 3; x++){        
        if(list.get("x") == "null"){
            continue;
        }
     String profile = get(x);
        out.print(profile + "<br>"); 
    }
%>
