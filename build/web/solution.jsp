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
    <center>
    <body style="background-color: white">
        <h1>Solution Page</h1>
        <html:form action="/SolutionServ.do" method="post">
            <table>
                <tr>
                    <td><IMG src="img/fg.png">
                </tr>
                <tr>
                <td>Cse Name:</td>
                <td><input type="text" name="cse" value="${requestScope.cdata.cse}" readonly="readonly" /></td>
            </tr>
                 <tr>
                <td>Complaint Id: </td>
                <td><input type="text" name="cid" value="${requestScope.cdata.cid}" readonly="readonly" /></td>
            </tr>
            <tr>
                <td>Complaint Details:</td>
                <td><input type="text" name="ctext" value="${requestScope.cdata.ctext}" readonly="readonly" /></td>
            </tr>
            <tr>
                <td>Client Name:</td>
                <td><input type="text" name="cuname" value="${requestScope.cdata.cuname}" readonly="readonly" /></td>
            </tr>

                <tr>
                    <td>Solution:</td>
                    <td><html:textarea property="soltext"/></td>
                </tr>
                <tr>
                    <td><html:submit value="submit"/></td>
                </tr>

            </table>
        </html:form>
    </body></center>
</html:html>

