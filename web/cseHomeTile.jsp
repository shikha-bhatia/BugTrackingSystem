<%-- 
    Document   : cseHomeTile
    Created on : 22 Oct, 2014, 12:45:15 PM
    Author     : Santanu Saha
--%>

<%@ page language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insert page="/layout.jsp" flush="true">
   <tiles:put name="title" type="string" value="Welcome - Login Using Tiles" />
   <tiles:put name="header" value="/header.jsp" />
   <tiles:put name="body" value="/cseHome.jsp"/>
   <tiles:put name="footer" value="/footer.jsp" />
</tiles:insert>