<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%                       


//for文を利用して、8を20回掛ける処理を実現してください。
 
long num = 8;


for(int i=1; i<20;i++) {
        num = num * 8 ;
    }

out.print(num);

%>

