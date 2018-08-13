<%-- 
    Document   : error
    Created on : 20 Oct, 2014, 3:25:21 PM
    Author     : Santanu Saha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="mystyle.css" type="text/css" />
    </head>
    <body>
        <%= request.getParameter("msg") %>
    </body>
</html>
