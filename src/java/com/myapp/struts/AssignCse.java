/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
/**
 *
 * @author 1370053
 */
public class AssignCse extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        Complaint c = (Complaint)form;
          int cid = Integer.parseInt(request.getParameter("cid"));
         String s = request.getParameter("cse");
         DateFormat df=new SimpleDateFormat("dd-MMM-yyyy");
         String d=df.format(new java.util.Date());
      try{

            Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hlpdsk","hlpdsk");
        PreparedStatement pstm=con.prepareStatement("update complaint set  status = ?,cse=?,adate=?  where cid=?");
            pstm.setString(1,"ASG");
            pstm.setString(2, s);
             pstm.setString(3,d);
             pstm.setInt(4,cid);
            pstm.executeUpdate();
            con.close();
        }catch(Exception e){
           response.sendRedirect("error.jsp?msg="+e.toString());
        }
        return mapping.findForward(SUCCESS);
    }
}