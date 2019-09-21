<%@page import="java.util.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
	import="bean.*"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>跳槽市场-信息浏览</title>

<link rel="stylesheet" type="text/css"
	href="../static/css/styleFastLogin.css">
<script type="text/javascript" src="../static/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
        $(document).ready(function($){

            $('.theme-login').click(function(){
                $('.theme-popover-mask').show();
                $('.theme-popover-mask').height($(document).height());
                $('.theme-popover').slideDown(200);
            })
            $('.theme-poptit .close').click(function(){
                $('.theme-popover-mask').hide();
                $('.theme-popover').slideUp(200);
            })

        });
    </script>
<link rel="shortcut icon" type="image/x-icon"
	href="../static/images/web-icon.png" media="screen" />
<link rel="stylesheet" href="../static/css/bootstrap.min.css">
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
	top: 0;
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
	margin: 0 auto;
}

ul {
	list-style: none;
} /*去掉列表样式*/
#header nav li {
	border: 0;
	display: inline-block;
	height: 66px;
	line-height: 66px;
	font-size: 16px;
	position: relative;
	cursor: pointer;
}

#header nav li a {
	display: inline-block;
	padding: 0 12px;
	white-space: nowrap;
	color: #fff;
}

a {
	text-decoration: none;
} /*去掉链接下划线*/
#bg {
	position: relative;
	background: url("../static/images/105905-106.jpg") no-repeat gray;
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

#header nav figure,#header nav span {
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

#pagebar {
	text-align: center;
}

.comment {
	width: 60%;
	position: relative;
	left: 20%;
	border: 1px;
	text-align: center;
	margin: 9px;
	background-color: #fff;
	border-radius: 5px;
	transition: all .5s;
}

.sp {
	text-align: center;
}

.divP {
	text-align: center;
	border: 2px solid #2D93CA;
	padding: 10px 40px;
	width: 350px;
	border-radius: 25px;
	-moz-border-radius: 25px;
}
table.yangshi tr{border-top-width:1px;
		  border-top-style:solid;
		  border-top-color:rgb(230,189,189);
		  }
table.yangshi thead{border-top-width:1px;
		  border-top-style:solid;
		  border-top-color:rgb(230,189,189);
		  }	
table.yangshi{border-bottom-width:1px;
		  border-bottom-style:solid;
		  border-bottom-color:rgb(230,189,189);
		  }	   
table.yangshi td{padding:5px 10px;
				font-size:12px;
				color:rgb(177,106,104);
		  }	  
table.yangshi th{padding:5px 10px;
				font-size:12px;
				color:rgb(177,106,104);
		  }	
 
</style>
</head>
<body background="/img/bg.png">
	<div>
		<header id="header">
			<nav>
				<ul>
					<li><a href="./index.jsp">返回首页</a> <%--<a href="/about">关于</a>--%>
					</li>
				</ul>
				<div class="my-info">
					<figure></figure>
					<span id="showLogin"> </span>
					<%--在这个页面显示是否登录,script中有控制显示--%>
					<div id="hiddenewm" hidden="true">
						<img src="/img/me.jpg" width="200px" height="200px">
						<p></p>
					</div>
				</div>
			</nav>
		</header>
		<div id="bg">
			  <p>
            小市场，大收获，来吧！
            <br>
            <i>让旧货飞一会儿</i>
        </p>
		</div>


		<div id="container">
			<article class="article">
				<section>
					<p
						style="text-align:center;color:#ccc;font-size:12px;margin-top:40px;">
						旧物找家 <br> 未来终会有回报
					</p>


					<center><table class="yangshi">
						<tr>
							<td style="font-size:20px">宝贝名称</td>
							<td style="font-size:20px">价格</td>
							<td style="font-size:20px">宝贝详情</td>
							<td style="font-size:20px">宝贝状态</td>
							<td style="font-size:20px">发布人</td>
							<td style="font-size:20px">联系方式</td>
						</tr>
						<%
							List whh = (List) session.getAttribute("used");
							Iterator it = whh.iterator();
							System.out.println("helllo1");
							
							while (it.hasNext()) {
							System.out.println("helllo1");
					
								usedThing t = (usedThing) it.next();
						%>
						<tr>
							<td style="font-size:20px"><%=t.getThingsName()%></td>
							<td style="font-size:20px"><%=t.getThingsPrice()%></td>
							<td style="font-size:20px"><%=t.getThingsIntro()%></td>
							<td style="font-size:20px"><%=t.getOwnerName()%></td>
							<td style="font-size:20px"><%=t.getOwnerPhone()%></td>
							<td style="font-size:20px"><%=t.getThingsState()%></td>
						</tr>
						<%
							}
						%>
					</table></center>

					<p
						style="margin: 5em 0 1em;text-align: center;color: #83b8ec;font-size: .8em">
						<span>今天也要加油呀！</span>
					</p>
				</section>
			</article>
			
		</div>

		
	</div>

	<footer id="footer">
		<section id="copyright">
			<p style="font-size: 20px">
				© 2019 <a href="../index.jsp">宁大生活信息服务助手</a>
			</p>
		</section>
	</footer>

	</div>
	</div>

</body>
</html>