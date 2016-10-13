<%-- 
    Document   : db8-2
    Created on : 2016/10/06, 10:24:19
    Author     : itou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
request.setCharacterEncoding("UTF-8");
String Name = request.getParameter("Name");
Connection controle = null;
PreparedStatement get = null;
ResultSet res = null;

try{Class.forName("com.mysql.jdbc.Driver").newInstance();
    controle = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db",
    "itou","s2011026");
    get = controle.prepareStatement("select*from profiles where name like'%"+ Name +"%'");
    res = get.executeQuery();
    while(res.next()){
       out.print("ID"+res.getInt("profilesID"));
       out.print("氏名" + res.getString("name"));
       out.print("tel" + res.getString("tell"));
       out.print( "年齢" + res.getInt("age"));
       out.print( "生年月日" + res.getDate("birthday") + "<br>");
    }
    controle.close();
    }
    catch(SQLException e_sql){out.print("エラーが発生しました" + 
    e_sql.toString());
    }catch(Exception e){out.print("エラーが発生しました" + e.toString());}
    finally{if(controle != null){controle.close();}}
    %>

