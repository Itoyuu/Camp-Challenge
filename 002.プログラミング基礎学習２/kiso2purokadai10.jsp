<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%                       

//１０．クエリストリングを利用して、以下の処理を実現してください。
//簡易素因数分解のロジックを作成します。
//クエリストリングから渡された数値を1ケタの素数で可能な限り分解し、元の値と素因数分解の結果を表示するようにしてください。　
//2ケタ以上の素数が含まれた数値の場合は、「元の値　1ケタの素因数　その他」と表記して、その他　に含んでください。

String param1 = request.getParameter("sosuu");
int num = Integer.parseInt(param1);
out.print(num + "を1桁の数字で素因数分解します。<br>");

for(int i = 2; num != 1; i++){
    if(num % 2 == 0){
          num /= 2;
          out.print(2 + "<br>");
}
else if(num % 3 == 0){
          num /= 3;
          out.print(3 + "<br>");
}
else if(num % 5 == 0){
          num /= 5;
          out.print(5 + "<br>");
}
else if(num % 7 == 0){
          num /= 7;
          out.print(7 + "<br>");
}
else{
 num=1;     
out.print("その他");
}
 }

     
%>

