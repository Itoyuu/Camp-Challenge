/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author itou
 */
public class javadb2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        SimpleDateFormat hiduke = new SimpleDateFormat("yyyy-MM-dd");
       
        Connection db_con = null;
        //課題2:前回の課題1で作成したテーブルに自由なメンバー情報を格納する処理を構築してください
         try  {
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","itou","s2011026");
         
         
         PreparedStatement dbst = null;
         dbst = db_con.prepareStatement("insert into profiles values(?,?,?,?,?)");
         dbst.setInt(1,2);
         dbst.setString(2,"伊藤優");
         dbst.setString(3,"080-1111-0000");
         dbst.setInt(4,24);
         dbst.setDate(5, new java.sql.Date(hiduke.parse("1992-11-6").getTime()));
         
         dbst.executeUpdate();
         
         dbst.close();
         db_con.close();
          
         } catch (SQLException e_sql){
             out.println("接続時にエラーが発生しました:"+e_sql.toString());
         } catch (Exception e){
             out.println("接続時にエラーが発生しました:"+e.toString());
         } finally {
             if (db_con != null){   
                try {
                    db_con.close();
          } catch (SQLException e_con){
              System.out.println(e_con.getMessage());
          }
    }
}
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    
    }