
<%@page import="Dao.Dao"%>
<%@page  session="true" %>
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
                <b>Welcome Back...</b><br>
                <label>Go to home page...
       <a href="index.jsp">Home</a></label>
                <ul>
                    	
                        <label for="uname">Username</label>
                        <input type="text" placeholder="Enter Username" name="txtName" required ><br><br>

                        <label for="psw">Password</label>
                        <input type="password" placeholder="Enter Password" name="txtPassword" required><br><br>
                        <label>
                        <input type="checkbox" name="remember">I'm not a Robot...<br><br>
                        <button  class="b1" type="submit" >Sign In </button><br><br></label>
                    
                </ul>
            </center>
        </div> 
            <label>Dont't have an account than Register here....
                <a href="SignUp.jsp">Register</a>
                
            </label>
            </form>
        </div>
</body>
</html>

<% 
    String user=null,pass=null;
    user=request.getParameter("txtName");
    pass=request.getParameter("txtPassword");
    if(user!=null && pass!=null)
    {
         Dao bd=new Dao();
         if(bd.checkLogin(user, pass))
         {
             response.sendRedirect("SignIn2.jsp");
             session.setAttribute("user", user);
             session.setAttribute("pass", pass);
             
             
         }  
         else
         {  out.println("<font color=white>Invalid user name or password<br><br></font>");
         }
         
     }
     
%>

</ul></center></div></div>
</center>
</body>