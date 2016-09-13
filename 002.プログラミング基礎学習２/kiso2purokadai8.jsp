<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%                       

//８．７で作成した配列の"soeda"を"33"に変更してください。

String hairetu []={"10", "100", "soeda", "hayashi", "-20", "118", "END"};

for(int i = 0; i < hairetu.length; i++){

out.println(hairetu[i]);
}

out.print("<br>");
hairetu[2]="33";
for(int i = 0; i < hairetu.length; i++){

out.println(hairetu[i]);
}


%>

