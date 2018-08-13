<%-- 
    Document   : layout
    Created on : 18 Oct, 2014, 12:42:02 AM
    Author     : Santanu Saha
--%>
<%@ page language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
    <title><tiles:getAsString name="title" ignore="true"/></title>
	<link rel="stylesheet" href="mystyle.css" type="text/css" />
</head>
<body>
<table width="100%" height="100%" align="center">
<tr>
<td><tiles:insert attribute="header"/></td>
</tr>
<tr>
<td><tiles:insert attribute="body"/></td>
</tr>
<tr>
<td><tiles:insert attribute="footer"/></td>
</tr>
</table></body></html>

