<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

		int res = new usedThingDaoImp().update(newThing);
		
		if (res > 0) {
			out.println("<h1>updated successfully!</h1>");
			response.setHeader("refresh", "3;URL=../page/index.jsp");
		} else {
			out.println("<h1>fail to update !</h1>");
			response.setHeader("refresh", "3;URL=../page/index.jsp");
		}
	%>
</body>
</html>