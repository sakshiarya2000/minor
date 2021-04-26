package com;



import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Connection.MyCon;
import java.io.InputStream;
import java.sql.Connection;
import javax.servlet.http.Part;
import Model.Imagevar;
import java.sql.PreparedStatement;


@WebServlet("/uploadimage");
@MultipartConfig(maxFileSize= 32354432)//upto 32 mb

public class uploadimage extends HttpServlet 
{
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet uploadimage</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet uploadimage at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
    PrintWriter out;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
         Connection con=null;
         out=response.getWriter();
         int result=0;
         Part part=request.getPart("image");
         String name=request.getParameter("name");
         if(part!= null)
         {
             
             try
             {
                 
                 String sql="insert into image(image,name) values(?,?)";
                 InputStream is= part.getInputStream();
                  PreparedStatement ps=null;
                 con=MyCon.getConnection();
                ps=con.prepareStatement(sql);
                 ps.setBlob(1, is);
                 ps.setString(2,name);
                 
                 result= ps.executeUpdate();
                 if(result>0)
                 {
                     
                     out.println("<h2> Image inserted successfully.......</h2>");
                 }
                     
             }
             
             
             catch(Exception e)
                     {
                         out.println("size of image is too large");
                         
                     }
         }
         
        
        
       
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
