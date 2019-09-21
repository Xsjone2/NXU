<%@ page contentType="text/html;charset=UTF-8" language="java"
	import="bean.*"%>
<%
	request.setCharacterEncoding("utf-8");
	User me = (User) session.getAttribute("user");
	session.setAttribute("user", me);
%>
<!--  用户 登录 注册返回的realname-->

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<title>宁大生活信息服务平台</title>
<link rel="shortcut icon" type="image/x-icon"
	href="../static/images/web-icon.png" media="screen" />
<link rel="stylesheet" href="../static/css/bootstrap.min.css">
<link rel="stylesheet" href="../static/css/style.css">
<script src="../static/js/jquery-3.2.1.min.js"></script>
<script src="../static/js/bootstrap.min.js"></script>

<style>
* {
	padding: 0;
	margin: 0;
}

#bg:after {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, .4);
	z-index: 1;
} /*给背景图片设置蒙版*/
body {
	font: 14px/1.5 微软雅黑, arial, sans-serif;
	width: 100%;
	overflow: scroll;
}

#header {
	position: fixed;
	top: 23px;
	left: 0;
	width: 100%;
	height: 66px;
	color: #fff;
	z-index: 9999;
	transition: all .3s;
} /*设置页眉*/
#header nav {
	position: relative;
	width: 80%;
	height: 100px;
	margin: 0 auto;
}

ul {
	list-style: none;
} /*去掉列表样式*/
#header nav li a {
	padding: 0 12px;
	white-space: nowrap;
	color: #fff;
}

a {
	text-decoration: none;
} /*去掉链接下划线*/
#bg {
	position: relative;
	background: url("../static/images/296494-106.jpg") no-repeat gray;
	background-size: cover;
} /*设置背景图片*/
#bg p {
	position: relative;
	padding: 95px 0 70px;
	color: hsla(0, 0%, 100%, .9);
	text-align: center;
	font-size: 26px;
	line-height: 2;
	z-index: 2;
	letter-spacing: 2.5px;
	text-shadow: 0 3px 25px rgba(0, 0, 0, .3);
	cursor: progress;
	padding-top: 210px;
	padding-right: 0px;
	padding-bottom: 210px;
	padding-left: 0px;
} /*设置文字属性*/
#bg p i {
	text-decoration: line-through;
	font-size: 20px;
	color: hsla(0, 0%, 100%, .8);
	text-shadow: 0 0 0 transparent;
	font-style: normal;
} /*设置第二行文字属性*/
#header nav figure {
	background: url("");
	height: 50px;
	width: 50px;
	background-size: cover;
}

#header nav .my-info {
	position: absolute;
	top: 8px;
	right: 0;
}

figure {
	display: block;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 40px;
	-webkit-margin-end: 40px;
	border-radius: 100px;
}

#header nav span {
	font-size: 18px;
	margin: 0 10px;
}

#header nav figure, #header nav span {
	display: inline-block;
	vertical-align: middle;
}

#copyright {
	position: absolute;
	top: 0;
	left: 0;
	background: #0e0e0e;
	width: 100%;
	height: 100%;
	transform-origin: 100% 0;
	transition: all .5s;
	z-index: 2;
}

#copyright p {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	line-height: 2;
}

#footer {
	position: relative;
	height: 160px;
	border-top: 1px solid #eee;
	color: hsla(0, 0%, 100%, .69);
	font-size: 12px;
	text-align: center;
	border-top: 2px dashed #98b7ff;
	transition: height .1s 1s;
}

#hiddenewm p {
	color: #444;
}

#hiddenewm {
	background: #fff;
	text-align: center;
	position: absolute;
	left: 25px;
	top: 70px;
}

#container {
	position: relative;
	max-width: 95%;
	margin: 0 auto;
}

.article {
	box-shadow: 5px 5px 25px #dadada;
	position: relative;
	padding: 0 20px;
	margin: 40px auto;
	max-width: 950px;
	background: #fff;
	text-align: center;
}

.article>time {
	position: absolute;
	top: 0;
	left: 0;
	border-bottom: 1px solid #ccc;
	font-size: 14px;
	padding: 4px 5px 0;
	color: #999;
}

.article h2 {
	padding-bottom: .5em;
	font-size: 1.75em;
	line-height: 1.225;
}

.article>h2 {
	padding: 35px 0 45px;
	font-size: 22px;
	font-weight: 700;
	cursor: pointer;
}

#container a {
	color: #333;
}

.article>span {
	position: absolute;
	top: 0;
	right: 0;
	color: #999;
	padding: 3px 10px;
	background: #f1f1f1;
	font-size: 14px;
}

.article section {
	text-align: left;
	padding: 10px;
	font-size: 16px;
}

.article blockquote {
	padding: 0 15px;
	color: #777;
	border-left: 4px solid #ddd;
}

.article footer {
	padding: 25px 0 20px;
}

.article footer a {
	display: inline-block;
	color: #18bc9c;
	cursor: pointer;
	padding: 4px 20px;
	border-radius: 5px;
	transition: all .5s;
	border: 1px solid #18bc9c;
}

.study {
	top: 20px;
	font-size: 18px;
}

.disabled {
	pointer-events: none;
	cursor: default;
}

.isabled {
	pointer-events: auto;
	cursor: default;
}
</style>

</head>
<body background="img/bg.png">
	<div>
		<header id="header">
			<nav>


				<div id="nav-d" class="nav-d">
					<ul>
						<li><a href="index.jsp">网站首页</a></li>
						<li><a href="#">跳蚤市场</a>
							<ul>
								<li><a <%if (me == null) {%> href="#" <%} else%>
									href="../controller/GetUsedThing.jsp">信息浏览</a></li>
								<li><a <%if (me == null) {%> href="#" <%} else%>
									href="publish.jsp">发布信息</a></li>
							</ul></li>
						<li><a href="#">失物招领</a>
							<ul>
								<li><a <%if (me == null) {%> href="#" <%} else%>
									href="../controller/GetUsedLost.jsp">信息浏览</a></li>
								<li><a <%if (me == null) {%> href="#" <%} else%>
									href="lost-publish.jsp">发布信息</a></li>
							</ul></li>
						<li><a href="#">兼职信息</a>
							<ul>
								<li><a <%if (me == null) {%> href="#" <%} else%>
									href="../controller/GetUsedJob.jsp">信息浏览</a></li>
								<li><a <%if (me == null) {%> href="#" <%} else%>
									href="part-publish.jsp">发布信息</a></li>
							</ul></li>
						<li><a href="#">关于我们</a>
							<ul>
								<li><a <%if (me == null) {%> href="#" <%} else%>
									href="./user-detail.jsp">个人信息</a></li>
								<li><a <%if (me == null) {%> href="#" <%} else%>
									href="../controller/getMyBaby.jsp">我的发布</a></li>
								<li><a href="about.jsp">联系我们</a></li>
							</ul>
					</ul>
				</div>
				<div class="my-info">
					<%
						if (me == null) {
					%>
					<span id="userName" class="study">您好，欢迎来到宁大生活助手</span> <a
						href="../page/userLogin.jsp" class="study" id="loginBtn">登录</a> <a
						href="../page/userRegiest.jsp" class="study" id="registerButton">注册</a>
					<%
						} else {
					%>

					<span id="userName" class="study">你好,<%=me.getUserName()%></span> <a
						class="study" id="loginBtn" disabled>已登录</a> <a
						href="../controller/logout.jsp" class="study" id="registerButton">退出登入</a>
					<%
						}
					%>
				</div>
			</nav>
		</header>
		<div id="bg">
			<p>
				和所有以梦为马的诗人一样 <br> <i>岁月易逝 一滴不剩</i>
			</p>
		</div>
	</div>


	</div>
	</div>

	<footer id="footer">
		<section id="copyright">
			<p style="font-size: 20px">© 2019 宁大生活信息助手	Made by Daniel </p>
		
		</section>
	</footer>

</body>
</html>