<%--
    Document   : solution
    Created on : 20 Oct, 2014, 3:43:57 PM
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
        <title><bean:message key="welcome.title"/></title>
        <link rel="stylesheet" href="mystyle.css" type="text/css" />
        <html:base/>
    </head>
    <body style="background-color: white">

        <html:form action="/SolutionServ1.do" method="post">
            <table>
                 <tr>
                <td>Cse </td>
                <td><input type="text" name="cse" value="${requestScope.cdata.cse}" /></td>
            </tr>
                 <tr>
                <td>Complaint id </td>
                <td><input type="text" name="cid" value="${requestScope.cdata.cid}" /></td>
            </tr>
            <tr>
                <td>Complaint Details</td>
                <td><input type="text" name="ctext" value="${requestScope.cdata.ctext}"  /></td>
            </tr>
            <tr>
                <td>Client </td>
                <td><input type="text" name="cuname" value="${requestScope.cdata.cuname}" /></td>
            </tr>

                <tr>
                    <td>Solution</td>
                    <td><html:textarea property="soltext"/></td>
                </tr>
                <tr>
                    <td><html:submit value="submit"/></td>
                </tr>

            </table>
        </html:form>
    </body>
</html:html>

