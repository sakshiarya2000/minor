<% 
   if(session.isNew())
       response.sendRedirect("index.jsp");
%>
<%@page import="Model.Criminals"%>
<%@page import=" Dao.Dao"%>


<% 
   
 Criminals S=null;
%>
<html>
<head><title>Table Application</title> 
    <style>  
        .text{
            color:#ffcc66;
            font-family: cursive;
		padding-top: 80px;
		text-shadow: 2px 2px #ff8080

        }
    
        
        
        
    
    </style>
</head>
<body style="background-image: url(images/front.jpg); background-repeat: no-repeat;background-size: cover"><br><br><br><br><br><br><br><br><br><br><br>
    <div class="text"><h1><center> CRIME REPORTING SYSTEM <center></h1><br><br>
    <a href="index.jsp"><h1>Home Page</h1> </a><br><br> 
        <a href="compaint.jsp"><h1>Complaint</h1></a><br><br> 
       <a href="SignOut.jsp"><h1> Sign Out </h1></a>
       
      
      <center>
         <form method="post" action="SignIn2.jsp">
             <h1><b>Search By User Name </b></h1>
      
             </div></form>
          <% 
           String sbid;
           HttpSession sess = request.getSession(false); //use false to use the existing session
            sbid=(String)sess.getAttribute("user");
           //sbid=request.getParameter("txtUname");
           if(sbid!=null)
           {
                 
                 Dao sd=new Dao();
                 S=sd.searchByName(sbid);
                 if(S==null)
                   out.println("<font color=red size=6>Record not found........</font>");
                else
               {
               %>
               <center><table border="1" >  
              <tr bgcolor="blue"><th>User Name</th><th>First Name</th><th>Last Name</th><th>Email</th><th>Address</th><th>Mobile No.</th></tr>     
               <tr>
                   <td><%=S.getUname()%></td>  
                   <td><%=S.getFname()%></td>  
                   <td><%=S.getLname()%></td>  
                   <td><%=S.getEmail()%></td>  
                   <td><%=S.getAdr()%></td>  
                   <td><%=S.getMobile()%></td>  
               </tr>    
               </table>    
            <%   
               }     
           }
   %>      
     </center>    
       
           
    
    
    </body>
    </html>