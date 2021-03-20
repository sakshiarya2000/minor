<%@page import="Dao.Dao"%>
<%! 
  int bid;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<td><input type="text" name="txtbid" value=<%=bid%>></td>   
</tr>   
    
<tr><th><b><h2>User Name</h2></b></th>
<td><input type="text" name="txtName" placeholder="Enter User Name"></td>
</tr>

<tr>
<th><b><h2>Password</h2></b></th>
<td><input type="password" name="txtPassword" placeholder="Enter  Password" ></td>
</tr>

<tr>
<th><b><h2>Confirm Password</h2></b></th>
<td><input type="password" name="txtCpassword" placeholder="Enter  Password" ></td>
</tr>

<tr>
<th><b><h2>First Name</h2></b></th>
<td><input type="text" name="txtFname" placeholder="Enter First Name" ></td>
</tr>  

<tr>
<th><b><h2>Last Name</h2></b></th>
<td><input type="text" name="txtLname" placeholder="Enter  Last Name" ></td>
</tr>

<tr>
<th><b><h2>Email Address</h2></b></th>
<td><input type="email" name="txtEmail" placeholder="Enter  Email Address" ></td>
</tr>

<tr>
<th><b><h2>Mobile No.</h2></b></th>
<td><input type="number" name="txtMobile" placeholder="Enter  Mobile" ></td>
</tr>

<tr>
<th><b><h2>Residential Area</h2></b></th>
<td><input type="text" name="txtAddress" placeholder="Enter  Address" ></td>
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
