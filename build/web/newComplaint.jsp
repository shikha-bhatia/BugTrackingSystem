<%-- 
    Document   : newComplaint
    Created on : 19 Oct, 2014, 12:41:46 PM
    Author     : Santanu Saha
--%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Complaint Form</title>
        <link rel="stylesheet" href="mystyle.css" type="text/css" />
        <html:base/>
    </head>
    <center><body style="background-color: white">
        <h1>Complaint Registration</h1>
        <html:form action="/NewComplaintServ" method="post">
            <table border="0">
                <tbody>
                    <tr>
                        <td><IMG src="img/che.png"></td>
                    </tr>
                    <tr>
                        <td>Client Name</td>
                        <td><html:text property="cuname" /></td>
                    </tr>
                    <tr>
                        <td>Complaint Description</td>
                        <td><html:text property="ctext" /></td>
                    </tr>
                    <tr>
                        <td><html:submit value="submit" /></td>
                    </tr>
                </tbody>
            </table>
       </html:form>
    </body></center>
</html:html>
