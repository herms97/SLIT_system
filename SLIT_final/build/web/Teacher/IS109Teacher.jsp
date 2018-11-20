<%-- 
    Document   : JSPUpdate
    Created on : 20.okt.2018, 15:47:10
    Author     : herma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Front Page</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS_folder/CssMainFrame.css"> <%-- / root -> folder til CSS mappen --%>
    </head>
    <body>
        <%
            if(session.getAttribute("username1")==null)
            {
                
                response.sendRedirect("../login.jsp");
            }
        %>
        
        <div class = velkommen><p>Innleveringer:</p>
            <p>Her er innleveringer for IS-109</p>
        </div>

<ul class =menyListe>
     <li><a href="kunngjøringerIS109.jsp">Kunngjøringer</a></li>
      <li><a href="mainPageTeacher.jsp">Hovedside</a></li>
         <li><a href="emnerTeacher.jsp">Tilbake</a></li> 
                 
</ul>
        
        
        <div class = bunntekst> <a href="https://github.com/herms97/SLIT_system">SLIT-system 2018 </a>
                 
        </div>
        
    </body>
</html>