<%-- 
    Document   : chckAsgCom
    Created on : 19 Oct, 2014, 10:32:27 PM
    Author     : Santanu Saha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Asg</title>
        <link rel="stylesheet" href="mystyle.css" type="text/css" />
        <html:base/>
    </head>
    <center><body style="background-color: white">
        <h1>Please Enter Cse Name to view Complaints....</h1>

    <html:form action="/AssignedComp" method="post">
            <table>
                <tr>
                    <td>Cse Name:</td>
                    <td><html:text property="cuname"/></td>
                </tr>
                <tr>
                    <td><html:submit value="Enter"/></td>
                </tr>
            </table>

        </html:form>

        </body></center>
</html:html>

