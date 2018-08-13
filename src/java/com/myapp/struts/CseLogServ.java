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
import java.util.*;

/**
 *
 * @author Santanu Saha
 */
public class CseLogServ extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private String S = "success";

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
         SessionFactory sf = HibernateUtil.getSessionFactory();
            Session session = sf.openSession();
            Transaction tx = null;
            Cse lb = (Cse)form;
            List l = null;
            try{
                tx = session.beginTransaction();
                Query q = session.createQuery("From Cse where uname = ? and password = ?");
                q.setString(0,lb.getUname());
                q.setString(1,lb.getPassword());
                l = q.list();
                if(l.size()>0)
                {
                    S="success";
                }
                else
                {
                    S="fail";
                }
                tx.commit();
                session.close();
            }
            catch(Exception e){
                response.sendRedirect("error.jsp?msg="+e.toString());
            }

        return mapping.findForward(S);
    }
}
