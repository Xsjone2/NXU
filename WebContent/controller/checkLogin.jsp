<%@ page language="java" import="java.util.*,bean.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CheckLogin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head>
  
  <body>
  <%request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="myUser" class="bean.User" scope="page"/>
	<jsp:setProperty property="*" name="myUser"/>
	<%
		int res = new UserDaoImp().add(myUser);
		if(res > 0){
			out.println("<h1>register successfully and  will skip to the login page in 3 seconds  </h1>");
			response.setHeader("Refresh", "3;URL=../page/userLogin.jsp");
		}else{
			out.println("<h1>register failed,please check and try again</h1>");
			response.setHeader("Refresh", "3;URL=../page/userRegiest.jsp");
		}
	 %>
  </body>
</html>
