<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="GBK" %>


<!DOCTYPE html>
<html>
<head>
<title>����ϵͳ</title>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<meta name="keywords" content="����ϵͳ">
<meta name="discription" content="����ϵͳ">
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
	<div class="title">�����ص㹤���ƻ�</div>
	<%
       while(rs.next()){
       %>
    <div class="text"><p><%out.print(rs.getString(1)); %></p></div>
    <%} %>
</div>	
</body>
</html>
