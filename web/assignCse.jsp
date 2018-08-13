<%-- 
    Document   : assignCse
    Created on : 19 Oct, 2014, 7:20:29 PM
    Author     : Santanu Saha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
    <head>
        <link rel="stylesheet" href="mystyle.css" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center"><h1>Assign CSE</h1> </div>
        <form action="AssignCse.do" method="post">
            <div align="center"><table>
                    <tr>
                        <td><IMG src="img/oper.png"></td>
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
                <td>Client: </td>
                <td><input type="text" name="cuname" value="${requestScope.cdata.cuname}" readonly="readonly" /></td>
            </tr>
            <tr>
                <td>Cse Name: </td>
                <td><input type="text" name="cse" /></td>
            </tr>
            <tr>
                <td><input type="submit" value="Assign" /></td>
            </tr>
        </table>
            </div>
        </form>
    </body>
</html>

