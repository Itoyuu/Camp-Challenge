<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.util.HashMap"%>
<%                       

//９．以下の順で、連想配列を作成してください。"1"に"AAA", "hello"に"world", "soeda"に"33", "20"に"20"

 HashMap<String, String> hMap = new HashMap<String, String>();
 
hMap.put("1","AAA");
hMap.put("hello","world");
hMap.put("soeda","33");
hMap.put("20","20");

 for (HashMap.Entry<String, String> inzi : hMap.entrySet()) {
        out.print(inzi.getKey()+":");
        out.print(inzi.getValue()+"<br>");
     
}

%>

