<%-- 
    Document   : db3
    Created on : 2016/10/05, 18:17:39
    Author     : itou
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection controle = null;
    PreparedStatement set = null;
    ResultSet res = null;
    try{Class.forName("com.mysql.jdbc.Driver").newInstance();
    controle = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db",
    "itou","s2011026");
    set = controle.prepareStatement("select*from profiles");
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
    
    