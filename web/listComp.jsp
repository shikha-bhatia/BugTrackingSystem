<%-- 
    Document   : listComp
    Created on : 19 Oct, 2014, 1:54:37 PM
    Author     : Santanu Saha
--%>

<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>List of Complaints</title>
    <link rel="stylesheet" href="mystyle.css" type="text/css" />
    <link rel="stylesheet" href="mystyle4.css" type="text/css" />
  </head>
 <body>
<div class="adjusttable">
<h2>Complaint List</h2>
 <table width="100%" cellpadding="3" cellspacing="0">
 <tr bgcolor="#dfecf7" style="font-weight:bold">
     <td>ComplaintID</td><td>Description</td><td>Reg Date</td><td>Client</td><td>Solution</td><td>Lfd</td><td>Status</td>
 </tr>
	 <c:forEach var="xx" items="${requestScope.clist}">
	 <tr>
		 <td><c:out value="${xx.cid}"/></td>
		 <td><c:out value="${xx.ctext}"/></td>
		 <td><c:out value="${xx.doc}"/></td>
		 <td><c:out value="${xx.cuname}"/></td>
                 <td><c:out value="${xx.lfeed}"/></td>
                 <td><c:out value="${xx.lfd}"/></td>
                 <td><c:out value="${xx.status}"/></td>
                 <td><a href="Delete.do?cid=${xx.cid}">Delete</a></td>
	 </tr>
	 </c:forEach>
 <tr bgcolor="#dfecf7">
 <td colspan="7">&nbsp;</td>
 </tr>
 </table>
 <a href="adminHomeTile.jsp">Back</a>
 </div>
 </body>
</html>

