<%-- 
    Document   : AddCse
    Created on : 17 Oct, 2014, 11:27:51 PM
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
        <title>Cse Registration</title>
        <link rel="stylesheet" href="mystyle.css" type="text/css" />
        <html:base/>
    </head>
    <center><body style="background-color: white">
            <h1>CSE REGISTRATION FORM</h1>

        <html:form action="/CseRegServ" method="post">
            <table  border="0">

                <tbody>
                    <tr>
                        <td><img src="img/che.png"></td>
                    </tr>
                    <tr>
                        <td>Username:</td>
                        <td><html:text property="uname"/></td><td><html:errors property="uname"/></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><html:password property="password"/></td><td><html:errors property="password"/></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><html:text property="email"/></td><td><html:errors property="email"/></td>
                    </tr>
                    <tr>
                        <td>Phone number:</td>
                        <td><html:text property="phno"/></td><td><html:errors property="phno"/></td>
                    </tr>
                    <tr>
                        <td>Status:</td>
                        <td><html:text property="loadStatus"/></td><td><html:errors property="loadStatus"/></td>
                    </tr>
                    <tr>
                        <td><html:submit value="Register"/></td><td><html:reset value="Reset"/></td>
                    </tr>
                </tbody>
            </table>
          </html:form >
          <a href="adminHomeTile.jsp">Back</a>
        </body>
      </center>
    </html:html>
