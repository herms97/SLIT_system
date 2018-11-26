
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Servlet File Upload/Download</title>
</head>
<body>
<br><br><br><br>
<center>   
    
<form action="UploadServlet" method="post" enctype="multipart/form-data">
<table width="400px" align="center" border=2>
<tr>
<tr>
<td>Select File </td>
<td>
<input type="file" required="" name="file">
</td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Submit"></td>
</tr>
</table>
</form>
<br><a href = "VisFiler.jsp">View List</a>
</center>
</body>
</html>

