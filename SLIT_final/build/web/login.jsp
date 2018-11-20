<%-- 
    Document   : login
    Created on : 15.nov.2018, 18:47:20
    Author     : herma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="CSS_folder/CssLogin.css"> <%-- / root -> folder til CSS mappen --%>
    </head>
    <body>
        
               
       <form ul class="login" action="checkLoginServlet" method="post">
           <p>Logg inn</p>
           <p>teacher - password </p>
           <p>student - password</p>
           <input type="text" class = login-username name="username" placeholder = "Brukernavn" autofocus> <br>
		<input type="password" class = login-password name="password" placeholder = "Passord"><br>
                <input type="submit" class = login-btn value="Login">
	</form>
        
    </body>
</html>