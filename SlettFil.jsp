<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("Oppgave_ID");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SLIT", "root", "root");
Statement st=conn.createStatement();
st.executeUpdate("DELETE FROM Oppgave WHERE Oppgave_ID="+id);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

 <p><a href="VisFiler.jsp">Tilbake</a></p>
 
 
 