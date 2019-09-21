<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	%>
	<%
		User me = (User) session.getAttribute("user");
		List<usedThing> usedthing = new UserDaoImp().getMyUsedThing(me.getUserName());
		List<usedLost> usedlost = new UserDaoImp().getMyLostThing(me.getUserName());
		List<usedJob> usedjob = new UserDaoImp().getMyPublishedJop(me.getUserName());

		session.setAttribute("usedthing", usedthing);
		session.setAttribute("usedlost", usedlost);
		session.setAttribute("usedjob", usedjob);
		response.sendRedirect("../page/published.jsp");
	%>

</body>
</html>