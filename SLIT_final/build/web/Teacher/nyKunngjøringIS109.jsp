<%-- 
    Document   : lagNyInnlevering
    Created on : 01.nov.2018, 13:39:54
    Author     : herma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            
        <p class="tittelNyMelding">Lag en ny Kunngjøring</p>
        
        <form ul class = "nyMelding" action ="insertKunngjøringIS109.jsp">
       
            <li>Beskrivelse<input type=text name="txtNotificationInfo"</li>          
            <li><textarea placeholder = "Skriv her..." style=overflow:auto rows="4" cols="50" name="txtBeskrivelse"></textarea></li>
            <li><input type=submit value= publiser></li>
            <li><input type=reset value= clear></li>

        </ul>
    </form>
        <li class="tilbake"><form action = "VisInnleveringer.jsp"><input type="Submit" value="Tilbake"</li></form>
        
    </body>
</html>
