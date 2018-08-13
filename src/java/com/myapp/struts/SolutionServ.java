/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.*;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
/**
 *
 * @author Santanu
 */
public class SolutionServ extends org.apache.struts.action.Action {

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
        Solution f=(Solution)form;

        int cid=Integer.parseInt(request.getParameter("cid"));
        DateFormat df=new SimpleDateFormat("dd-MMM-yyyy");
           String s=df.format(new java.util.Date());
           f.setSdate(s);
        SessionFactory sf=HibernateUtil.getSessionFactory();
        Session session=sf.openSession();
        String soltext=request.getParameter("soltext");
        Transaction tx=null;
        try
        {
            tx=session.beginTransaction();
            session.save(f);
            tx.commit();
            session.close();

           Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hlpdsk","hlpdsk");
            PreparedStatement pstm=con.prepareStatement("update complaint set status=?,lfeed=?,lfd=? where cid=?");
            pstm.setString(1,"VST");
            pstm.setString(2,soltext);
            pstm.setString(3,s);
            pstm.setInt(4,cid);
            pstm.executeUpdate();
            con.close();

        }catch(Exception e)
        {
            response.sendRedirect("error.jsp?msg"+e.toString());
        }


        return mapping.findForward(SUCCESS);
    }
}
