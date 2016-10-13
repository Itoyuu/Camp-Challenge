<%-- 
    Document   : db7
    Created on : 2016/10/05, 20:24:33
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    Connection controle = null;
    PreparedStatement set = null;
    try{Class.forName("com.mysql.jdbc.Driver").newInstance();
    controle = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db",
    "itou","s2011026");
    set = controle.prepareStatement("update profiles set name = '松岡　修造',age = 48,birthday = '1967-11-6' where profilesID = 1");
    set.executeUpdate();
    controle.close();
   out.print("処理完了");  
    } catch(SQLException e_sql){out.print("エラーが発生しました" + 
    e_sql.toString());
    }catch(Exception e){out.print("エラーが発生しました" + e.toString());}
    finally{if(controle != null){controle.close();}}
    
    %>
