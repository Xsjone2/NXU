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
	style="border:1px lightblue solid; text-align: center;font-size: 20px;">
	<tr>
		<td>宝贝名称</td>
		<td>价格</td>
		<td>宝贝详情</td>
		<td>宝贝状态</td>
		<td>发布人</td>
		<td>联系方式</td>
	</tr>
	<%
	List<usedThing> used = new usedThingDaoImp().getUsedThings();
		session.setAttribute("used", used);
		response.sendRedirect("../page/detail.jsp");
	%>
</table>
</body>
</html>
