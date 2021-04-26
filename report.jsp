<% 
   if(session.isNew())
       response.sendRedirect("index.jsp");
%>
<%@page import="Dao.Dao" %>
<jsp:useBean class="Model.Comp" id="C">
    <jsp:setProperty property="*" name="C"></jsp:setProperty>  
</jsp:useBean>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <% 
        
       Dao bd=new Dao();
         if(bd.insertComplaint(C)>0)
         {
         out.println("Your complaint is registered successfully.......<br><br>");
         out.println("if you want to upload any type of image as a proof or descrition then click here........");
         
          }
         
                 %>
                 
                 <a href="Image.jsp"><h3>Upload Image</h3> </a><br><br> 
                 
        <a href="index.jsp"><h3>Go To Home Page</h3></a><br><br> 
    </body>
</html>
