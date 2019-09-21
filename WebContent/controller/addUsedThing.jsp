<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="bean.*" pageEncoding="utf-8"%>

<%--  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String thingsName = request.getParameter("thingsName");
		int thingsPrice = Integer.parseInt(request.getParameter("thingsPrice"));
		String thingsIntro = request.getParameter("thingsIntro");
		String OwnerName = request.getParameter("OwnerName");
		String thingsState = request.getParameter("thingsState");
		String OwnerPhone = request.getParameter("OwnerPhone");
	%>
	<jsp:useBean id="newThing" class="bean.usedThing" scope="page" />

	<%
		newThing.setOwnerName(OwnerName);
		newThing.setOwnerPhone(OwnerPhone);
		newThing.setThingsIntro(thingsIntro);
		newThing.setThingsName(thingsName);
		newThing.setThingsPrice(thingsPrice);
		newThing.setThingsState(thingsState);
		int res = new usedThingDaoImp().add(newThing);
		if (res > 0) {
			out.println("<h1>added successfully!</h1>");
			response.setHeader("refresh", "3;URL=../page/index.jsp");
		} else {
			out.println("<h1>fail to add !</h1>");
			response.setHeader("refresh", "3;URL=../page/publish.jsp");
		}
	%>


</body>
</html>