<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

int kadai1 = 1;
final int kadai2 = 2;

int tasi = kadai1 + kadai2;
int hiki = kadai1 - kadai2;
int kakeru = kadai1 * kadai2;
int waru = kadai1 / kadai2;//ここまで課題4です。

out.println(tasi+"<br>");//ここから課題5です。
out.println(hiki+"<br>");
out.println(kakeru+"<br>");
out.println(waru);

%>