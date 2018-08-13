<%-- 
    Document   : adminHome
    Created on : 16 Oct, 2014, 11:59:55 PM
    Author     : Santanu Saha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
        <link rel="stylesheet" href="mystyle.css" type="text/css" />
    </head>
    <body>
        <FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE class="marque" WIDTH=100% BEHAVIOR=ALTERNATE BGColor=yellow>Welcome ${sessionScope.Admin.uname}...</MARQUEE></FONT>
        <center><h1>ADMIN WORKS</center>
        <center><table>
            <tr>
            <td><a href="ListCompServ.do">List Of Complaints!</a></td>
            </tr>
            <tr>
                <td><a href="UnassignedServ.do">Unassigned Complaints!</a></td>
            </tr>
            <tr>
                <td><a href="chckAsgComTile.jsp">Particular CSE Assigned Complaints!</a></td>
            </tr>
            <tr>
            <td><a href="AddClerkTile.jsp">Add New Clerk!</a></td>
            </tr>
            <tr>
            <td><a href="AddCseTile.jsp">Add New Cse!</a></td>
            </tr>
            <tr>
            <td><a href="LogoutServ.do">Logout</a></td>
            </tr>
        </table></center>
    </body>
</html>

