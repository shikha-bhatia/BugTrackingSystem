<%-- 
    Document   : clerkHomeTile
    Created on : 22 Oct, 2014, 11:51:55 AM
    Author     : Santanu Saha
--%>

<%@ page language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insert page="/layout.jsp" flush="true">
   <tiles:put name="title" type="string" value="Welcome - Login Using Tiles" />
   <tiles:put name="header" value="/header.jsp" />
   <tiles:put name="body" value="/clerkHome.jsp"/>
   <tiles:put name="footer" value="/footer.jsp" />
</tiles:insert>