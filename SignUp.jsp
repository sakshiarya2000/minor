<% 
   if(session.isNew())
       response.sendRedirect("index.jsp");
%>

<%@page import="Dao.Dao"%>
<%! 
  int bid;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/javascript; charset=UTF-8">
        <title>Registration Page</title>
    </head>
    <body>
    <center> <h1>Costumer Registration</h1></center>
     <form method=post action=Registered.jsp>
<table style="  width: 1000px; height: 500px" >
<tr>
    
 <th><b><h2>Sno.</h2></b></th>
<% 
                        Dao bd=new Dao();
                        
                        bid=bd.autoIncr();
                      %>  
<td><input type="text" name="sno" value=<%=bid%>></td>   
</tr>   
    
<tr><th><b><h2>User Name</h2></b></th>
<td><input type="text" name="uname" placeholder="Enter User Name"></td>
</tr>

<tr>
<th><b><h2>Password</h2></b></th>
<td><input type="password" name="pass" placeholder="Enter  Password" ></td>
</tr>

<tr>
<th><b><h2>Confirm Password</h2></b></th>
<td><input type="password" name="cpass" placeholder="Enter  Password" ></td>
</tr>

<tr>
<th><b><h2>First Name</h2></b></th>
<td><input type="text" name="fname" placeholder="Enter First Name" ></td>
</tr>  

<tr>
<th><b><h2>Last Name</h2></b></th>
<td><input type="text" name="lname" placeholder="Enter  Last Name" ></td>
</tr>

<tr>
<th><b><h2>Email Address</h2></b></th>
<td><input type="email" name="email" placeholder="Enter  Email Address" ></td>
</tr>

<tr>
<th><b><h2>Mobile No.</h2></b></th>
<td><input type="number" name="mobile" placeholder="Enter  Mobile" ></td>
</tr>

<tr>
<th><b><h2>Residential Area</h2></b></th>
<td><input type="text" name="adr" placeholder="Enter  Address" ></td>
</tr>

<tr>
<td></td>
<td>
<input type="submit" value="Submit">

</td>
</tr>
</table>
</form>
        
    </body>
</html>
