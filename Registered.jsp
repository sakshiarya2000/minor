
<%@page import="Dao.Dao" %>
<jsp:useBean class="Model.Criminals" id="C">
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
         if(bd.insertDetails(C)>0)
         {
         out.println("Record Inserted........");
   
         }
                 %>
    </body>
</html>
