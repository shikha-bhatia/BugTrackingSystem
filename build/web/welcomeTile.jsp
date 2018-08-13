<%-- 
    Document   : welcomeTile
    Created on : 18 Oct, 2014, 12:16:39 AM
    Author     : Santanu Saha
--%>

<%@ page language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insert page="/layout.jsp" flush="true">
   <tiles:put name="title" type="string" value="Welcome - Login Using Tiles" />
   <tiles:put name="header" value="/header.jsp" />
   <tiles:put name="body" value="/welcome.jsp"/>
   <tiles:put name="footer" value="/footer.jsp" />
</tiles:insert>
