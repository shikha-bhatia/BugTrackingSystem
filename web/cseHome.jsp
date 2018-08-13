<%-- 
    Document   : cseHome
    Created on : 17 Oct, 2014, 9:13:12 PM
    Author     : Santanu Saha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cse HomePage</title>
        <link rel="stylesheet" href="mystyle2.css" type="text/css" />
    </head>
    <body>
        <FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE class="marque" WIDTH=100% BEHAVIOR=ALTERNATE BGColor=yellow>Welcome ${sessionScope.Cse.uname}...</MARQUEE></FONT>
        <center><h1>SERVICE ENGINEER WORKS</center>
        <center><table>
            <tr>
                <td><a href="AssignedComp1.do">Assigned Complaints!</a></td>
            </tr>
            
           
             <tr>
                <td><a href="CseLogoutServ.do">Logout!</a></td>

            </tr>
        </table></center>
    </body>
</html>

