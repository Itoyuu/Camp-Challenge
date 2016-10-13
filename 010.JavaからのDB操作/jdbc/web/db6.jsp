<%-- 
    Document   : db6
    Created on : 2016/10/05, 20:16:29
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
    set = controle.prepareStatement("delete from profiles where profilesID = 6");
    set.executeUpdate();

    controle.close();
    }
    catch(SQLException e_sql){out.print("エラーが発生しました" + 
    e_sql.toString());
    }catch(Exception e){out.print("エラーが発生しました" + e.toString());}
    finally{if(controle != null){controle.close();}}
    %>

