<%-- 
    Document   : db4
    Created on : 2016/10/05, 19:53:41
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    Connection controle = null;
    PreparedStatement set = null;
    ResultSet res = null;
    try{Class.forName("com.mysql.jdbc.Driver").newInstance();
    controle = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db",
    "itou","s2011026");
    set = controle.prepareStatement("select*from profiles where profilesID = 1");
    res = set.executeQuery();
    while(res.next()){
       out.print("ID"+res.getInt("profilesID"));
       out.print("氏名" + res.getString("name"));
       out.print("tel" + res.getString("tell"));
       out.print( "年齢" + res.getInt("age"));
       out.print( "生年月日" + res.getDate("birthday") + "<br>");
    }
    }
    catch(SQLException e_sql){out.print("エラーが発生しました" + 
    e_sql.toString());
    }catch(Exception e){out.print("エラーが発生しました" + e.toString());}
    finally{if(controle != null){controle.close();}}
    %>
