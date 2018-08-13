<%-- 
    Document   : adminLoginTile
    Created on : 22 Oct, 2014, 11:02:00 AM
    Author     : Santanu Saha
--%>

<%@ page language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insert page="/layout.jsp" flush="true">
   <tiles:put name="title" type="string" value="Welcome - Login Using Tiles" />
   <tiles:put name="header" value="/header.jsp" />
   <tiles:put name="body" value="/adminLogin.jsp"/>
   <tiles:put name="footer" value="/footer.jsp" />
</tiles:insert>