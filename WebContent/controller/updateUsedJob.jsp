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
	String OwnerName = request.getParameter("OwnerName");
	String jobIntro = request.getParameter("jobIntro");
	String  jobNumber = request.getParameter("jobNumber");
	String jobRequire = request.getParameter("jobRequire");
	String jobPrice = request.getParameter("jobPrice");
	String jobState = request.getParameter("jobState");
	%>
	<jsp:useBean id="newJob" class="bean.usedJob" scope="page" />

	<%
	System.out.println(OwnerName);
	newJob.setOwnerName(OwnerName);
	newJob.setJobIntro(jobIntro);
	newJob.setJobNumber( jobNumber);
	newJob.setJobRequire(jobRequire);
	newJob.setJobPrice(jobPrice);
	newJob.setJobState(jobState);

		int res = new usedJobDaoImp().update(newJob);
		
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