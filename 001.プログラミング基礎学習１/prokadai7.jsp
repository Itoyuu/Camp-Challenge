<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String param1 = request.getParameter("sou");    
    String param2 = request.getParameter("kosuu");    
    String param3 = request.getParameter("syubetu");    

int sou = Integer.parseInt(param1);
int kosuu = Integer.parseInt(param2);
int syubetu = Integer.parseInt(param3);   




if(syubetu == 1){out.print("雑貨"+"<br>");}
else if(syubetu == 2){   //①商品種別は、３つ。１：雑貨、２：生鮮食品、３：その他 まずは、この商品種別を表示してください。
out.print("生鮮食品"+"<br>");}
else{out.print("その他"+"<br>");}

int itikakaku = sou / kosuu;//②総額と個数から１個当たりの値段を算出してください。総額と１個当たりの値段を表示してください。

out.print(sou+"<br>");
out.print(itikakaku+"<br>");      

if(sou>=5000){out.print(sou * 0.04);}//③3000円以上購入で4%、5000円以上購入で5%のポイントが付きます。購入額に応じたポイントの表示を行ってください    
else if(sou>3000){out.print(sou * 0.05);}
else{out.print("");}

%>

