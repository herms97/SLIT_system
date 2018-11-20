package org.apache.jsp.Teacher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Statement;
import java.sql.Connection;
import javax.naming.Context;

public final class kunngjøringerIS109_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Front Page</title>\n");
      out.write("         <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/CSS_folder/CssMainFrame.css\">");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            if(session.getAttribute("username1")==null)
            {
                
                response.sendRedirect("../login.jsp");
            }
        
      out.write("\n");
      out.write("        \n");
      out.write("        <div class = velkommen><p>Kunngjøringer:</p>\n");
      out.write("            <p>Her er kunngjøringer for IS-109</p>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("<ul class =menyListe>\n");
      out.write("      <li><a href=\"mainPageTeacher.jsp\">Hovedside</a></li>\n");
      out.write("      <li><a href=\"emnerTeacher.jsp\">Ny kunngjøring</a></li>\n");
      out.write("         <li><a href=\"emnerTeacher.jsp\">Tilbake</a></li> \n");
      out.write("                 \n");
      out.write("</ul>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div class = bunntekst> <a href=\"https://github.com/herms97/SLIT_system\">SLIT-system 2018 </a>\n");
      out.write("                 \n");
      out.write("        </div>\n");
      out.write("        \n");
                
            
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
         
      out.write("\n");
      out.write("         <table class = \"tabellInnleveringer\">\n");
      out.write("    <tr>\n");
      out.write("    <td>\n");
      out.write("        ");
      out.print(rset.getString("notification_info"));
      out.write("\n");
      out.write("    </td>\n");
      out.write("    <td>\n");
      out.write("        <p>Info:</p>\n");
      out.write("        ");
      out.print(rset.getString("notification_date"));
      out.write("\n");
      out.write("    </td>\n");
      out.write("\n");
      out.write("    </tr>\n");
      out.write("    </table>\n");
      out.write("    \n");
      out.write("         ");

        }
        
      out.write("\n");
      out.write("       \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
