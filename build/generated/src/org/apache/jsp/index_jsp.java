package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"icon\" href=\"../Images/11.jpg\" type=\"image/gif\" sizes=\"16x16\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>INSURANCE</title>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"head\" >\n");
      out.write("            <div id='innerl'>\n");
      out.write("            CAR INSURANCE\n");
      out.write("            </div>\n");
      out.write("            <div id='inner'>\n");
      out.write("                contact 7803786484\n");
      out.write("            </div>\n");
      out.write("        </div><br>\n");
      out.write("    <center>\n");
      out.write("        <div id=\"login\" >\n");
      out.write("            <form action=\"\" method=\"post\" >\n");
      out.write("               USERNAME: <input type=\"text\" name=\"uname\" />\n");
      out.write("               PASSWORD: <input type=\"password\" name=\"pwd\" />\n");
      out.write("               <input type=\"submit\" value=\"LOGIN\" id='logb'/>\n");
      out.write("            </form>\n");
      out.write("            ");

    if(request.getMethod().equalsIgnoreCase("post"))
    {
        String uname=request.getParameter("uname");
        String pwd=request.getParameter("pwd");
        Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance", "root", "");
         PreparedStatement ps=con.prepareStatement("select * from cust where username=?");
         ps.setString(1, uname);
         ResultSet rs=ps.executeQuery();
         while(rs.next())
         {
             String x=rs.getString("password");
             if(x.equals(pwd))
                 response.sendRedirect("JSP/main.jsp");
             else
             {
                 
      out.write("\n");
      out.write("                 <div>\n");
      out.write("                     PLEASE ENTER CORRECT PASSWORD\n");
      out.write("                 </div>\n");
      out.write("                 ");

             }
         }
    }
    
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <marquee >\n");
      out.write("            DON'T HAVE AN ACCOUNT??.....REGISTER HERE!!!!!!\n");
      out.write("        </marquee><br>\n");
      out.write("        <button id='btn' ><a href=\"JSP/register.jsp\"><font size='3'>REGISTER HERE</font></a></button><br><br>\n");
      out.write("        <div>\n");
      out.write("            <img src=\"Images/1.jpg\" width=\"50%\"/>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("<style>\n");
      out.write("    #head\n");
      out.write("    {\n");
      out.write("       font-family: cursive;\n");
      out.write("       font-weight: bolder;\n");
      out.write("       text-decoration: underline;\n");
      out.write("        width: 100%;\n");
      out.write("        height: 30px;\n");
      out.write("        padding: 10px;\n");
      out.write("        color: white;\n");
      out.write("        background-color: #3333ff;\n");
      out.write("    }\n");
      out.write("    #innerl\n");
      out.write("    {\n");
      out.write("        float: left;\n");
      out.write("        width: 500px;\n");
      out.write("    }\n");
      out.write("    #inner\n");
      out.write("    {\n");
      out.write("        float: right;\n");
      out.write("        height: 20px;\n");
      out.write("        width: 100px;\n");
      out.write("        margin-right: 50px;\n");
      out.write("    }\n");
      out.write("    #logb\n");
      out.write("    {\n");
      out.write("        background-image: linear-gradient(#00cc33,#ccffcc);\n");
      out.write("        border-radius: 3px;\n");
      out.write("    }\n");
      out.write("    a\n");
      out.write("    {\n");
      out.write("        text-decoration: none;\n");
      out.write("        font-weight: bold;\n");
      out.write("    }\n");
      out.write("    a:visited\n");
      out.write("    {\n");
      out.write("        color: white;\n");
      out.write("    }\n");
      out.write("    a:link\n");
      out.write("    {\n");
      out.write("        color: white;\n");
      out.write("    }\n");
      out.write("    a:active\n");
      out.write("    {\n");
      out.write("        color: white;\n");
      out.write("    }\n");
      out.write("    a:hover\n");
      out.write("    {\n");
      out.write("        color: black;\n");
      out.write("    }\n");
      out.write("    marquee\n");
      out.write("    {\n");
      out.write("        color: #ffffff;\n");
      out.write("        font-weight: bolder;\n");
      out.write("        width: 100%;\n");
      out.write("        height: 20px;\n");
      out.write("        padding: 5px;\n");
      out.write("        background-color: #cc00ff;\n");
      out.write("    }\n");
      out.write("    #btn\n");
      out.write("    {\n");
      out.write("        height: 60px;\n");
      out.write("        width: 150px;\n");
      out.write("        border-radius: 10px;\n");
      out.write("        box-shadow: 2px 3px gray;\n");
      out.write("        background-image: linear-gradient(#ff0066,#ff9999);\n");
      out.write("    }\n");
      out.write("    #login\n");
      out.write("    {\n");
      out.write("        width: 100%;\n");
      out.write("        height: 30px;\n");
      out.write("        margin-bottom: 15px;\n");
      out.write("    }\n");
      out.write("    body\n");
      out.write("    {\n");
      out.write("        background-image: url(\"Images/17.png\");\n");
      out.write("    }\n");
      out.write("</style>\n");
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
