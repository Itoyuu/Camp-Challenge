<%-- 
    Document   : db12-2
    Created on : 2016/10/06, 20:18:31
    Author     : itou
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    request.setCharacterEncoding("UTF-8");
    String name = (request.getParameter("Name"));
    String birthday = (request.getParameter("year") + "-" + request.getParameter("month") + "-" + request.getParameter("day"));
    int age = Integer.parseInt(request.getParameter("age"));
    Connection controle = null;
    PreparedStatement set = null;
    ResultSet res = null;

    try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        controle = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db",
                "itou", "s2011026");
        set = controle.prepareStatement("select* from profiles where name like'%" + name + "%' and birthday = '" + birthday + "'and age = " + age);
        res = set.executeQuery();
        while (res.next()) {
            out.print("該当データ");
            out.print("ID" + res.getInt("profilesID"));
            out.print("氏名" + res.getString("name"));
            out.print("tel" + res.getString("tell"));
            out.print("年齢" + res.getInt("age"));
            out.print("生年月日" + res.getDate("birthday") + "<br>");
        }
    } catch (SQLException e_sql) {
        out.print("エラーが発生しました"
                + e_sql.toString());
    } catch (Exception e) {
        out.print("エラーが発生しました" + e.toString());
    } finally {
        if (controle != null) {
            controle.close();
        }
    }
%>

