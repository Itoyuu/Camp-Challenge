<%-- 
    Document   : hyouzyunkadai10
    Created on : 2016/09/28, 22:16:32
    Author     : Yuu
--%>
<%@page import="java.io.*"%> 
<%@page import="java.util.*"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%
      //１０．紹介していないJAVAの標準クラスを利用して、処理を作成してください。
       //講義では紹介されていないJAVAの標準クラスはたくさん存在します。
       // １つJAVAの標準クラスを選び、実際にロジックを作成してみてください。
       //また、この処理を作成するに当たり、下記を必ず実装してください。
       // ①処理の経過を書き込むログファイルを作成する。
        //②処理の開始、終了のタイミングで、ログファイルに開始・終了の書き込みを行う。
        //③書き込む内容は、「日時　状況（開始・終了）」の形式で書き込む。
       // ④最後に、ログファイルを読み込み、その内容を表示してください。
    
       File rog = new File("rog.txt");//ファイル指定、オープン、まとめて書き込む
       FileWriter op = new FileWriter(rog);
       BufferedWriter bw = new BufferedWriter(op);
     
       String b = ("<br>");//この処理がないと31行めbw.writeでエラーがでる。?
       Date sDate = new Date();            
        bw.write(sDate + b); 

        int num = -5;     //Math計算
        double r = 10; 
        double en; 
        out.println("int_numの絶対値=" + Math.abs(num)); 
        en = r * r * Math.PI; 
        out.println("円の面積(circle) = "+en); 
       
        Date fDate = new Date();//終了日時取得、処理を閉じる
        bw.write(fDate + b);
        bw.close();
        
       FileReader ow = new FileReader(rog);//ファイル読み込みバッファリング
       BufferedReader br = new BufferedReader(ow);
       
       String str;//まとめて読み込む
       while((str = br.readLine()) != null){
        out.print(str);
    }
       br.close();//ファイル閉じる
 %>
    </body>
</html>