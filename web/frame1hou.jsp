<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="GBK" %>
<!DOCTYPE html>
<html>
<head>
<title>公告</title>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<meta name="keywords" content="工资系统">
<meta name="discription" content="工资系统">
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/system.css" />
<link rel="stylesheet" type="text/css" href="css/table.css" />
</head>
<body class="sysmenub">
<%!
        public static final String driver="com.mysql.jdbc.Driver";
    	public static final String url="jdbc:mysql://localhost/richard?user=root&password=root";
    	public static final String user="root";
    	public static final String password="root";
%>
     <%
     	Connection conn=null;
     	Statement state=null;
     	ResultSet rs=null;
     	//String id=session.getAttribute("id").toString();
      %>
      <%

      		Class.forName(driver);
      		conn=DriverManager.getConnection(url);
      		String sql="SELECT * FROM point ";
      		state=conn.createStatement();
      		rs=state.executeQuery(sql)	;
       %>
<div class="container">
	<div class="title">本月重点任务</div>
    <div class="textarea">
    <form name="form1" action="plan.jsp" method="post" >
    <%
       while(rs.next()){
       %>
       <textarea id="b" name="text2" rows="20" cols="55"><%out.print(rs.getString(1)); %></textarea>/    <!--  <textarea  rows="10" cols="55" name="palns" ></textarea> -->
    <%} %>
    <p > <input type="submit" value="提交"  class="execbtn"/></p>
    </form></div>
</div>	
</body>
</html>
