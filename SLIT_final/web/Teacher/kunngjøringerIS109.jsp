<%-- 
    Document   : JSPUpdate
    Created on : 20.okt.2018, 15:50:06
    Author     : herma
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.Context"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Front Page</title>
         <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS_folder/CssMainFrame.css"><%-- / root -> folder til CSS mappen --%>
    </head>
    <body>
        <%
            if(session.getAttribute("username1")==null)
            {
                
                response.sendRedirect("../login.jsp");
            }
        %>
        
        <div class = velkommen><p>Kunngjøringer:</p>
            <p>Her er kunngjøringer for IS-109</p>
        </div>

<ul class =menyListe>
      <li><a href="mainPageTeacher.jsp">Hovedside</a></li>
      <li><a href="emnerTeacher.jsp">Ny kunngjøring</a></li>
         <li><a href="emnerTeacher.jsp">Tilbake</a></li> 
                 
</ul>
        
        
        <div class = bunntekst> <a href="https://github.com/herms97/SLIT_system">SLIT-system 2018 </a>
                 
        </div>
        
<%                
            
            Connection conn; 
            Statement stmt;
            
            
         // Step 1: Allocate a database 'Connection' object
         Context cont = new InitialContext();
         DataSource ds = (DataSource)cont.lookup("java:comp/env/jdbc/localhostDS");  
         //DataSource ds = (DataSource)cont.lookup("jdbc/LocalhostDS");
         conn =  ds.getConnection();
 
         // Step 2: Allocate a 'Statement' object in the Connection
         stmt = conn.createStatement();
                
         
         String data = "select notification_info, notification_date from notifications where course_id = 1";
         
         ResultSet rset = stmt.executeQuery(data);
            
                
         while(rset.next()){
         %>
         <table class = "tabellInnleveringer">
    <tr>
    <td>
        <%=rset.getString("notification_info")%>
    </td>
    <td>
        <p>Info:</p>
        <%=rset.getString("notification_date")%>
    </td>

    </tr>
    </table>
    
         <%
        }
        %>
       
        
    </body>
</html>
