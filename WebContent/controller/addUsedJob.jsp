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
		String jobIntro = request.getParameter("jobIntro");
		String  jobNumber = request.getParameter("jobNumber");
		String jobRequire = request.getParameter("jobRequire");
		String jobPrice = request.getParameter("jobPrice");
		String jobState = request.getParameter("jobState");
	%>
	


	<jsp:useBean id="newJob" class="bean.usedJob" />
	<%--<jsp:setProperty property="*" name="newJob" /> --%>
	<%
	System.out.println(OwnerName);
	newJob.setOwnerName(OwnerName);
	newJob.setJobIntro(jobIntro);
	newJob.setJobNumber( jobNumber);
	newJob.setJobRequire(jobRequire);
	newJob.setJobPrice(jobPrice);
	newJob.setJobState(jobState);
	
		int res = new usedJobDaoImp().add(newJob);
		if (res > 0) {
			out.println("<h1>added successfully!</h1>");
			response.setHeader("refresh", "3;URL=../page/index.jsp");
		} else {
			out.println("<h1>fail to add !</h1>");
			response.setHeader("refresh", "3;URL=../page/part-publish.jsp");
		}
	%>
	
</body>
</html>