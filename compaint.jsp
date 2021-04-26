<% 
   if(session.isNew())
       response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>complaint Page</title>
        
        
        
        
        
    </head>
    <body>
    <center> <h1>Costumer Registration</h1></center>
    
    
    <!-- this script got from www.htmlbestcodes.com - Coded by: Krishna Eydat -->



    
    




    <form method=post  action=report.jsp>
<table style="  width: 1000px; height: 500px" >

    <tr><th><b><h2>User Name</h2></b></th>
        <td><input type="text" name="name" placeholder="Enter User Name" required=""></td>
</tr> <tr>

    <tr><th><b><h2>Complaint ID</h2></b></th>
        <td><input type="text" name="compid" required=""></td>
</tr> <tr>
    
       
    <th><b><h2><label for="comptype" id="comptype" name="comptype">Choose complaint type</label></h2></b></th>


<td><select name="comp" id="comptype" >
  <option value="Family disputes">Family disputes</option>
  <option value="Commercial offences">Commercial offences</option>
  <option value="Medical Negligence cases">Medical Negligence cases</option>
  <option value="Corruption Cases">Corruption Cases</option>
  <option value="Thief">Thief</option>
</select></td>
</tr>


<tr><th>
<label for="story"><h2>Description</h2></label></th>
<td>
<textarea id="story" name="nature"
          rows="10" cols="40">
</textarea></td></tr>



<tr>
<th><b><h2>Email Address</h2></b></th>
<td><input type="email" name="email" placeholder="Enter  Email Address" ></td>
</tr>

<tr>
<th><b><h2>Date and Time</h2></b></th>

<td><input type="Dates" name="date" value="<%= (new java.util.Date()).toLocaleString()%>  ">  
<br>     </td>
</tr>

<tr>
<th><b><h2>Aadhar No.</h2></b></th>
<td><input type="number" name="aadhar" placeholder="Enter  Mobile" ></td>
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
<input type=reset value=Reset>

</td>
</tr>
</table>
</form>
        
    </body>
</html>
