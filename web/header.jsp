<%-- 
    Document   : header
    Created on : 18 Oct, 2014, 12:22:15 AM
    Author     : Santanu Saha
--%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*, java.util.*, java.text.* " errorPage="" %>

<div align="right">
<%
	DateFormat df=new SimpleDateFormat("EEEE, dd MMMM, yyyy");
	String date=df.format(new java.util.Date());
	out.print("| "+date+" | ");
%></div><center><h1>HELPDESK</h1></center>
<table align="center" width="100%">
<tr align="center" height="25">
<td width="150" bgcolor="#888888"><a href="welcomeTile.jsp"><font color="ffffff">Home</font></a></td>
<td width="150" bgcolor="#888888"><a href="adminLoginTile.jsp"><font color="ffffff">Administrator</font></a></td>
<td width="150" bgcolor="#888888"><a href="clerkLoginTile.jsp"><font color="ffffff">Clerk</font></a></td>
<td width="150" bgcolor="#888888"><a href="cseLoginTile.jsp"><font color="ffffff">Technical Expert</font></a></td>
</tr></table>

