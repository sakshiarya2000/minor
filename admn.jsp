<% 
   if(session.isNew())
       response.sendRedirect("index.jsp");
%>
<%@page import="Dao.Dao"%>
<html>
<head>
<title>login page</title>
<style type="text/css">
.back-img{
	    background-image: url(images/search1.jpeg);
        height: 850px;
		width: 1600px;
		background-size: cover;
		position: absolute;
		color: white;
}
	
	.text{font-family: cursive;
		padding-top: 80px;
		text-shadow: 2px 2px #ff8080
}
.button{
	text-align: center;
	right: 150px;
   position: absolute;
    top: 50px;
   width: 10%;
   font-size: 18px;
   font-family: cursive;


	}
b{text-align: left;
	font-size: 50px;
	font-family: cursive;
}
ul{
	padding-top: 40px;
	font-family: cursive;
font-size: 20px;
}
.b1{
	font-family: cursive;
	font-size: 20px;
	animation: mymove 5s infinite;
}
	@keyframes mymove {
   {box-shadow: 10px 20px 20px red;}

.b2{
	font-family: cursive;
	font-size: 20px;
	}

input[type=text]{
		box-sizing: border-box;
		width: 200px;
		height: 25px;
		font-family: cursive;
		}
		input[type=password]{
		box-sizing: border-box;
		width: 200px;
		height: 25px;
		font-family: cursive;
		}
</style>
</head>
<body>
	<div class="back-img">
            <form>
                
	<div class="text">
            <center>
                <b>Admin Login........</b><br>
                
                <ul>
                    	
                        <label for="uname">Username</label>
                        <input type="text" placeholder="Enter Username" name="user" required ><br><br>

                        <label for="psw">Password</label>
                        <input type="password" placeholder="Enter Password" name="pass" required><br><br>
                        <label>
                        
                        <button  class="b1" type="submit" >Sign In </button><br><br></label>
                    
                </ul>
            </center>
        </div> 
                        </form>
        </div>
</body>
</html>

<% 
    String user=null,pass=null;
    user=request.getParameter("user");
    pass=request.getParameter("pass");
    if(user!=null && pass!=null)
    {
         Dao bd=new Dao();
         if(bd.checkLogin2(user, pass))
         {
             response.sendRedirect("Admin2.jsp");
             session.setAttribute("user", user);
             session.setAttribute("pass", pass);
             
             
         }  
         else
         {  out.println("<font color=red size=4>invalid user name or password</font>");
         }
         
     }
     
%>

</ul></center></div></div>
</center>
</body>