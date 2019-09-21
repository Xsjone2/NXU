<%@ page language="java" import="java.util.*,bean.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'checkLogin1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head>
  
  <body>
	<%
		request.setCharacterEncoding("utf-8");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		User res = new UserDaoImp().userLogin(userName, password);
		if(res!=null){
			session.setAttribute("user", res);
			//getServletContext().getRequestDispatcher("../index.jsp").forward(request,response);
			response.sendRedirect("../page/index.jsp");
		}
		else{
			out.println("Your Password was wrong ,try again in 3 seconds");
			response.setHeader("refresh", "3;URL=../page/userLogin.jsp");
		}
	 %>

  </body>
</html>
