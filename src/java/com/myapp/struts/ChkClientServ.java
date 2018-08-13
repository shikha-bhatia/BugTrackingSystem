/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.*;
/**
 *
 * @author 1370055
 */
public class ChkClientServ extends org.apache.struts.action.Action {

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

       // String uname=request.getParameter("uname");
        HttpSession hs=request.getSession();
        Complaint lb=(Complaint)form;
        String s=lb.getCuname();
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session session = sf.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query q=session.createQuery("from Complaint where cuname=?");
            q.setString(0, s);
            ArrayList al=(ArrayList)q.list();
            request.setAttribute("cstatus", al);
            tx.commit();
            session.close();

        }catch(Exception e)
        {
            response.sendRedirect("error.jsp?msg"+e.toString());
        }

        return mapping.findForward(SUCCESS);
    }
}
