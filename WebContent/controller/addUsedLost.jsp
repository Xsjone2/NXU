<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="bean.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String OwnerName = request.getParameter("OwnerName");
		String lostName = request.getParameter("lostName");
		String lostIntro = request.getParameter("lostIntro");
		String lostPickup = request.getParameter("lostPickup");
		String lostState = request.getParameter("lostState");
	%>
	<jsp:useBean id="newLost" class="bean.usedLost" />
	<%--<jsp:setProperty property="*" name="newThing" /> --%>
	<%
		newLost.setOwnerName(OwnerName);
		newLost.setLostName(lostName);
		newLost.setLostIntro(lostIntro);
		newLost.setLostPickup(lostPickup);
		newLost.setLostState(lostState);

		int res = new usedLostDaoImp().add(newLost);
		if (res > 0) {
			out.println("<h1>added successfully!</h1>");
			response.setHeader("refresh", "3;URL=../page/index.jsp");
		} else {
			out.println("<h1>fail to add !</h1>");
			response.setHeader("refresh", "3;URL=../page/lost-publish.jsp");
		}
	%>

</body>
</html>