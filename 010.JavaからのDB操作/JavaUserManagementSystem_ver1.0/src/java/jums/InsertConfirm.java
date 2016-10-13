package jums;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * insertconfirm.jspと対応するサーブレット
 * フォーム入力された情報はここでセッションに格納し、以降持ちまわることになる
 * 直接アクセスした場合はerror.jspに振り分け
 * @author hayashi-s
 */
public class InsertConfirm extends HttpServlet {

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
        try{
            HttpSession session = request.getSession();
            request.setCharacterEncoding("UTF-8");//セッションに格納する文字コードをUTF-8に変更
            String accesschk = request.getParameter("ac");
            if(accesschk ==null || (Integer)session.getAttribute("ac")!=Integer.parseInt(accesschk)){
                throw new Exception("不正なアクセスです");
            }
            
            //フォームからの入力を取得
            String name = request.getParameter("name");
            String year1 = request.getParameter("year");
            String month1 = request.getParameter("month");
            String day1 = request.getParameter("day");
            int day = 0;
            int year=0;
            int month =0;
            
           if(!year1.equals("")){
           year = Integer.parseInt(year1);
           }
          
           if(!month1.equals("")){
           month = Integer.parseInt(month1);
           }
          
           if(!day1.equals("")){
           day = Integer.parseInt(day1);
           }
           
            String type = request.getParameter("type");
            String tell = request.getParameter("tell");
            String comment = request.getParameter("comment");

            //課題.3フォームから受け取ったデータ自体を格納
           UserDataBeans udb = new UserDataBeans();
           
           udb.setName(name); 
           udb.setYear(year);
           udb.setMonth(month);
           udb.setDay(day);
           udb.setType(type);
           udb.setTell(tell);
           udb.setComment(comment);
            
           
          session.setAttribute("udb", udb);
           
//セッションに格納
           // session.setAttribute("name", name);
           // session.setAttribute("year", year);
           // session.setAttribute("month",month);
           // session.setAttribute("day", day);
           // session.setAttribute("type", type);
           // session.setAttribute("tell", tell);
           // session.setAttribute("comment", comment);
           // System.out.println("Session updated!!");
            
            request.getRequestDispatcher("insertconfirm.jsp").forward(request, response);
        }catch(Exception e){
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
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
