/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.post;

import com.database.Dbconnection;
import com.database.Queries;
import java.io.IOException;
import java.io.InputStream;

import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.io.IOUtils;


/**
 *
 * @author KishanVenky
 */
@MultipartConfig(maxFileSize=16*1024*1024)
public class UploadMark extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
               String name=request.getParameter("landmark");
String address=request.getParameter("address");
String description=request.getParameter("description");
String category=request.getParameter("category");
            Part p=request.getPart("image");
            InputStream in=p.getInputStream();

            
       
    int count=0;
    
  String query="select count(*) from landmark where name='"+name+"'and address='"+address+"'";
            ResultSet r=Queries.getExecuteQuery(query);
       while(r.next()){
     count=r.getInt(1);   
       }
       if(count==0){
      
           Connection con=Dbconnection.getcon();
           PreparedStatement pst=con.prepareStatement("insert into landmark values(null,?,?,?,?,?,now())");
            pst.setString(1, name);
             pst.setString(2, address);
              pst.setString(3, description);
              pst.setString(4, category);
               pst.setBlob(5, in);
               
         int i=pst.executeUpdate();
         if(i>0){
         response.sendRedirect("ViewLandmarks.jsp?msg=success");  
    }else{
 response.sendRedirect("ViewLandmarks.jsp?msg=failed");
}
       }else{
response.sendRedirect("ViewLandmarks.jsp?msg=exist");
}
   
            
            
        }catch(Exception e){
          System.out.println(e);  
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
