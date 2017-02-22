<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>工资系统</title>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<meta name="keywords" content="工资系统">
<meta name="discription" content="工资系统">
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/system.css" />
<link rel="stylesheet" type="text/css" href="css/table.css" />
<script type="text/javascript">

function change(n){
	if(n==1){
	document.getElementById("frame").src="frame1hou.jsp";
	document.getElementById("a1").className="current";
	document.getElementById("a2").className="unchoose";
	document.getElementById("a3").className="unchoose";
	document.getElementById("a4").className="unchoose";
	}
	else if(n==2){
	document.getElementById("frame").src="frame2.jsp";
	document.getElementById("a2").className="current";
	document.getElementById("a1").className="unchoose";
	document.getElementById("a3").className="unchoose";
	document.getElementById("a4").className="unchoose";
	}
	else if(n==3){
	document.getElementById("frame").src="frame3.jsp";
	document.getElementById("a3").className="current";
	document.getElementById("a1").className="unchoose";
	document.getElementById("a2").className="unchoose";
	document.getElementById("a4").className="unchoose";
	}
	else{
	document.getElementById("frame").src="frame4.jsp";
	document.getElementById("a4").className="current";
	document.getElementById("a1").className="unchoose";
	document.getElementById("a2").className="unchoose";
	document.getElementById("a3").className="unchoose";
	}
}

	
</script>
</head>
<body id="sysmain">
	<div class="content">
		<div class="syshead">
			<div class="clearfix">
				<p class="left"><img alt="中国电信有限公司" title="中国电信有限公司" src="images/logo/syslogo.png" height="40" width="263"></p>
				<p class="right"><span>管理员</span><a href="javascript:void(0);"><%out.print((String)session.getAttribute("name"));%></a><a class="outsys" title="退出系统" href="loginhou.html"><img src="images/index/outsys.gif" width="16" height="16" alt="" />退出</a></p>
			</div>
		</div>
		<div class="sysmain clearfix">
			<div class="sysmenua">
				<ul>
					<li><a  onclick="change(1)" class="current" id="a1">本月任务重点</a></li>
                    <li><a  onclick="change(2)" id="a2">月度最终得分情况</a></li>
					<li><a  onclick="change(3)" id="a3">任务情况</a></li>
                    <li><a  onclick="change(4)" id="a4">评分</a></li>
				</ul>
			</div>
            <div class="sysmenub">
            <iframe  src="frame1hou.jsp" height="70%" width="100%" frameborder="0" border="0"  name="frame"  id="frame"></iframe>
			</div>
            
		</div>
	</div>


</body>
</html>