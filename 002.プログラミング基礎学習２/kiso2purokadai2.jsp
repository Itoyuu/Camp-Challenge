<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
char num = 'A' ;//２．switch文を利用して、以下の処理を実現してください。値が"A"なら「英語」、値が"あ"なら「日本語」、それ以外は何も表示しない処理

    switch(num) {
        case 'A':
            out.print("英語");break;
        case 'あ':
            out.print("日本語");
            break;
    
    }

%>

