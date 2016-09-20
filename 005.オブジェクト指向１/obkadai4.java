/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author itou
 ４．３のクラスを継承し、以下の機能を持つクラスを作成してください。
　　　・２つの変数の中身をクリアするパブリックなメソッド
 */
public class obkadai4 extends HttpServlet {

    String dorink = "";
    int katati = 0;
   
    public obkadai4(){}
    public void setName(String name){
        this.dorink = name;
    }
   public String getName(){
       return dorink;
   } 
  public void setKata(int kata){
        this.katati = kata;
    }
   public int getkata(){
       return katati;
   }
  class Kuria extends obkadai4 {

        private boolean katati;
        private String dorink;
      public void setKuria(String name,boolean kata){
        this.dorink = name ;
        this.katati = kata;
        }
   public String getName(){
       return dorink;
        }
   public boolean katati(){
       return katati;
   }

        private void setKuria(String string, int i) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }

        
  
  
  }
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet obzyekutokadai3</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("</body>");
            out.println("オブジェクト指向課題4");
            
             this.setName("みかん");
             this.setKata(777);
             out.println(this.getName());
             out.println(katati+"<br>");
             
             Kuria kuria = new Kuria();
             kuria.setKuria("",0);
             out.println(kuria.getName());
             out.println(kuria.katati);
           out.println("</body>");
           out.println("<html>");
        
        
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
