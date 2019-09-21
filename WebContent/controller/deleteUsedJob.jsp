<%@page import="bean.usedJobDaoImp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="usedJob" class="bean.usedJob" />
	<jsp:setProperty property="*" name="usedJob" />

	<%
		usedJob.setOwnerName(request.getParameter("OwnerName"));
		int res = new usedJobDaoImp().delete(usedJob.getJobIntro(), usedJob.getOwnerName());
		if (res > 0) {
			out.println("<center><h1>delete successfully,will jump to the home page in 3 seconds !<h1></center>");
			response.setHeader("refresh", "3;URL=../page/index.jsp");
		} else {
			out.println("<center><h1>delete failed,will jump to the home page in 3 seconds !<h1></center>");
			response.setHeader("refresh", "3;URL=../page/index.jsp");

		}
	%>
</body>
</html>