<%@ page language="java" import="java.util.*,bean.*"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'GetUsedThing.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>

	<table
		style="border: 1px lightblue solid; text-align: center; font-size: 20px;">
		<tr>
			<td>发布人：</td>
			<td>兼职信息名称：</td>
			<td>兼职需要人数：</td>
			<td>兼职具体要求：</td>
			<td>兼职价格：</td>
			<td>兼职情况：</td>
		</tr>
		<%
			List<usedJob> used = new usedJobDaoImp().getUsedJob();
			session.setAttribute("usedJob", used);
			response.sendRedirect("../page/part-detail.jsp");
		%>
	</table>
</body>
</html>