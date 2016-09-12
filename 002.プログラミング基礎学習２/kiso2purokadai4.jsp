<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%                       

//４．for文を利用して、"A"を30個連結する処理を実現してください。
 
String mozi = "a";


for(int i=1; i<30;i++) {
        mozi = mozi +  "a" ;
    }

out.print(mozi);
%>

