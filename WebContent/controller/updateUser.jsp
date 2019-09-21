<%@ page language="java" contentType="text/html; charset=UFT-8"
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
	<jsp:useBean id="user" class="bean.User" scope="page" />
	<jsp:setProperty property="*" name="user" />

	<%=user.getClassId()%><br>
	<%=user.getPhoneNumber()%><br>
	<%=user.getSex()%><br>
	<%=user.getUserID()%><br>
	<%=user.getUserName()%><br>
	<%=user.getPassword()%>
	
<%
	int res =  new UserDaoImp().update(user);
	if(res>0){
		session.setAttribute("user",user);//更新session
		out.println("<h1>Update successfully ,will jump  to the home page in 3 seconds.</h1>");
		response.setHeader("refresh", "3;URL=../page/index.jsp");
	}else{
		out.println("<h1>failed to update  ,will jump  to the update page in 3 seconds.</h1>");
		response.setHeader("refresh", "3;URL=../page/user-detail.jsp");
	}
%>


</body>
</html>