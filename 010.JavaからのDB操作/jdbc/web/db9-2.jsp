<%-- 
    Document   : db9-2
    Created on : 2016/10/06, 13:23:02
    Author     : itou
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  request.setCharacterEncoding("UTF-8");
  String name = (request.getParameter("Name"));
  String birthday =(request.getParameter("year") + "-"  +request.getParameter("month") + "-" + request.getParameter("day"));
  String tell = (request.getParameter("tell"));
  int age = Integer.parseInt(request.getParameter("age"));
  Connection controle = null;
  PreparedStatement set = null;
 
  try{Class.forName("com.mysql.jdbc.Driver").newInstance();
    controle = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db",
    "itou","s2011026");
    set = controle.prepareStatement("insert into profiles select MAX(profilesID)+1,'" + name + "','" + tell +"'," + age + ",'" + birthday +"' from profiles");
    set.executeUpdate();
    out.print("登録しました");
  }catch(SQLException e_sql){out.print("エラーが発生しました" + 
    e_sql.toString());
    }catch(Exception e){out.print("エラーが発生しました" + e.toString());}
    finally{if(controle != null){controle.close();}}
    %>


  
  