<%-- 
    Document   : JSPUpdate
    Created on : 20.okt.2018, 15:39:27
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
        
        <div class = velkommen><p>Velkommen til det nye Slit systemet!</p>
            <p>Du er logget inn som ${username1}.</p>
            <p>Her blir det lagt ut informasjon om fagene IS-109 og IS-110</p>
        </div>

<ul class =menyListe>
     <li><a href="IS109Teacher.jsp">IS-109</a></li>
      <li><a href="VisInnleveringer.jsp">IS-110</a></li>
         <li><a href="mainPageTeacher.jsp">Tilbake</a></li> 
                 
</ul>
        
        
        <div class = bunntekst> <a href="https://github.com/herms97/SLIT_system">SLIT-system 2018 </a>
                 
        </div>
        
    </body>
</html>