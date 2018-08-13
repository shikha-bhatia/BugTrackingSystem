<%-- 
    Document   : adminLogin
    Created on : 16 Oct, 2014, 11:46:48 PM
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
        <title>Admin login</title>
        <link rel="stylesheet" href="mystyle.css" type="text/css" />
        <html:base/>
    </head>
    <center><body style="background-color: white">
            <h1>Admin Login Page</h1>
            <c:if test="${param.msg != null}">
			<div class='boldred'>${param.msg}</div>
       </c:if>


        <html:form action="/adminLogServ" method="post">
            <table>
                <tr>
                    <td><IMG src="img/admin_login.png"></td>
                </tr>
                <tr>
                    <td>User Name:</td>
                    <td><html:text property="uname"/></td><td><html:errors property="uname"/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><html:password property="password"/></td><td><html:errors property="password"/></td>
                </tr>
                <tr>
                    <td><html:submit value="Login"/></td>
                </tr>
            </table>

        </html:form>

        </body></center>
</html:html>

