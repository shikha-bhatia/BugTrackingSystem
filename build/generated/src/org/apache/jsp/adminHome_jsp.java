package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminHome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin Home</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"mystyle.css\" type=\"text/css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <FONT SIZE=\"4\" FACE=\"courier\" COLOR=blue><MARQUEE class=\"marque\" WIDTH=100% BEHAVIOR=ALTERNATE BGColor=yellow>Welcome ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.Admin.uname}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("...</MARQUEE></FONT>\n");
      out.write("         <table>\n");
      out.write("            <tr>\n");
      out.write("            <td><a href=\"ListCompServ.do\"><h4>List Of Complaints!</h4></a></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><a href=\"UnassignedServ.do\"><h6>Unassigned Complaints!</h6></a></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><a href=\"chckAsgCom.jsp\">Particular CSE Assigned Complaints!</a></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("            <td><a href=\"AddClerk.jsp\">Add New Clerk!</a></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("            <td><a href=\"AddCse.jsp\">Add New Cse!</a></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("            <td><a href=\"LogoutServ.do\">Logout</a></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("   </body\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
