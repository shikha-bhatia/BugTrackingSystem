<%-- 
    Document   : clerkHome
    Created on : 17 Oct, 2014, 12:14:21 AM
    Author     : Santanu Saha
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clerk Home</title>
        <link rel="stylesheet" href="mystyle1.css" type="text/css" />
        <html:base/>
    </head>
    <body style="background-color: white">
        <FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE class="marque" WIDTH=100% BEHAVIOR=ALTERNATE BGColor=yellow>Welcome ${sessionScope.Clerk.uname}...</MARQUEE></FONT>
        <center><h1>CLERK WORKS<h1></center>
        <center><table>
            <tr>
                <td> <a href ="chckStatTile.jsp"/>Check Complain Status!</td>
            </tr>
            <tr>
                <td> <a href ="newComplaintTile.jsp"/>Lodge New Complaint!</td>
            </tr>
            <tr>
                <td> <a href ="ClLogoutServ.do"/>Log out</td>
            </tr>
        </table></center>
    </body>
</html:html>