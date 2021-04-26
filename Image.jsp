<%@page import="com.uploadimage" %>
<% 
   if(session.isNew())
       response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>
<html>
    <head>
       
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" enctype="multipart/form-data" action="uploadimage">

    <center> <b><h2>Upload File</h2></b>
<input type="file" name="image" ></center>
            <b><h2>File Name</h2></b>
<input type="text" name="name" >
            
            <input type="submit" value="Submit">
        </form>

    </body>
</html>
