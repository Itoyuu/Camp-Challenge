<%-- 
    Document   : db11-2
    Created on : 2016/10/06, 18:37:34
    Author     : itou
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     request.setCharacterEncoding("UTF-8");
     int changeID = Integer.parseInt(request.getParameter("change"));
     String name = (request.getParameter("Name"));
  String birthday =(request.getParameter("year") + "-"  +request.getParameter("month") + "-" + request.getParameter("day"));
  String tell = (request.getParameter("tell"));
  int age = Integer.parseInt(request.getParameter("age"));
  Connection controle = null;
  PreparedStatement set = null;
 
  try{Class.forName("com.mysql.jdbc.Driver").newInstance();
    controle = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db",
    "itou","s2011026");
    set = controle.prepareStatement("update profiles set name = '" + name + "',tell = '" + tell + "',age = " + age + ",birthday = '" + birthday + "'where profilesID = " + changeID);
    set.executeUpdate();
    controle.close();
    out.print("変更しました");
  }catch(SQLException e_sql){out.print("エラーが発生しました" + 
    e_sql.toString());
    }catch(Exception e){out.print("エラーが発生しました" + e.toString());}
    finally{if(controle != null){controle.close();}}
    %>
