<%-- 
    Document   : chckStat
    Created on : 18 Oct, 2014, 4:37:33 PM
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
        <title>Clerk login</title>
        <link rel="stylesheet" href="mystyle.css" type="text/css" />
        <html:base/>
    </head>
    <center><body style="background-color: white">
        <h1>SUBMIT CLIENT NAME</h1>
         <c:if test="${param.msg != null}">
			<div class='boldred'>${param.msg}</div>
        </c:if>
    <html:form action="/ChkClientServ" method="post">
            <table>
                <tr>
                    <td>Client Name:</td>
                    <td><html:text property="cuname"/></td>
                </tr>
                <tr>
                    <td><html:submit value="Enter"/></td>
                </tr>
            </table>

        </html:form>
 <a href="clerkHomeTile.jsp">Back</a>
        </body></center>
</html:html>

