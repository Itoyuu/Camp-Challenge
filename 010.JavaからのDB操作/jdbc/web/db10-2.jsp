<%-- 
    Document   : db10-2
    Created on : 2016/10/06, 17:38:52
    Author     : itou
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    request.setCharacterEncoding("UTF-8");
    int res = Integer.parseInt(request.getParameter("deleteID"));
    Connection controle = null;
    PreparedStatement get = null;

    try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        controle = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db",
                "itou", "s2011026");
        get = controle.prepareStatement("delete from profiles where profileID = " + res);
        get.executeUpdate();
        out.print("削除しました");
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

