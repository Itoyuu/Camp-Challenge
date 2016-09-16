<%-- 
    Document   : kiso3kadai6
    Created on : 2016/09/16, 15:55:00
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%//引き数に1つのid(数値)をとり、3人分のプロフィール(項目は課題5参照)を
   //あらかじめメソッド内で定義しておく。
   // 引き数のid値により戻り値として返却するプロフィールを誰のものにするか選択する。
   //それ以降などは課題5と同じ扱いに%>

<%!
    ArrayList get(int num){
    if(num == 1){
            ArrayList<String> list = new ArrayList<String>();
            list.add("ID:75");
            list.add("名前:伊藤");
            list.add("誕生日:１１月６日");
            list.add("住所:埼玉県");
            return list;
    }
    else if(num == 2){
            ArrayList<String> list = new ArrayList<String>();
            list.add("ID:76");
            list.add("名前:後藤");
            list.add("誕生日:１１月７日");
            list.add("住所:沖縄県");
            return list;
    }
    else if(num == 3){
            ArrayList<String> list = new ArrayList<String>();
    
            list.add("ID:77");
            list.add("名前:佐藤");
            list.add("誕生日:１１月８日");
            list.add("住所:鹿児島県");
            return list;
    }
    else{
        return null;
    }
}
%>
