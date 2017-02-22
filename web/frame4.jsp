<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="GBK" %>


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
<script src="js/jquery.min.js" type="text/javascript"></script>


  </head>
  
  <body class="sysmenub" >
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
     
     	
      %>
      <%

      		Class.forName(driver);
      		conn=DriverManager.getConnection(url);
      		String sql="SELECT * FROM task ";
      		state=conn.createStatement();
      		rs=state.executeQuery(sql)	;
      		int i=1;
       %>
      
       <form name="form1" id="form1"  method="post" action="score.jsp">
	   <div class="container">
    	<table class="table"  border="1" id="table1">
        	<caption>任务情况</caption>
        	<tr >
        		<th>姓名</th>
            	<th>工作事项与目标要求</th>
                <th>目标</th>
                <th>是否完成</th>
                <th>完成日期</th>
                <th>完成情况自评</th>
                <th>评分</th>
                <th>评分理由</th>
                <th>重要性与价值</th>
                <th>打分</th>
                <th>分管主任审核</th>
                <th>审核理由</th>
                <th>任务说明</th>
                <th class="exec"><p class="execact" ><input type="submit" value="保存" class="execbtn"  /></p></th>
            </tr>
       <%
       while(rs.next()){
       %>
       		<tr >
       			<td><%out.print(rs.getString(13)); %></td>
       			<td ><%out.print(rs.getString(1)); %> </td>
       			<td ><%out.print(rs.getString(2)); %> </td>
       			<td ><%out.print(rs.getString(3)); %></td>
       			<td ><%out.print(rs.getString(4)); %></td>
       			<td ><%out.print(rs.getString(5));%></td>
       			<td ><select id="a" name="text<%=i %>1">
            		<option value="1.5">1.5</option>
            		<option value="1.0">1.0</option>
               		<option value="0.6">0.6</option>
                	<option value="0">0</option>
                	</select></td>
       			<td ><textarea name="text<%=i %>2" rows="3" cols="12"><%out.print(rs.getString(7)); %></textarea></td>
       			<td ><select id="b" name="text<%=i %>3">
            		<option value="1.0">1.0</option>
            		<option value="1.0">1.5</option>
               		<option value="2.0">2.0</option>
                	<option value="3.0">3.0</option>
                	</select></td>
       			<td ><input type="text" size="1px" name="text<%=i %>4" value="<%out.print(rs.getString(9)); %>"/></td>
       			<td ><select id="c" name="text<%=i %>5">
            		<option value="1.5">1.5</option>
            		<option value="1.0">1.0</option>
               		<option value="0.6">0.6</option>
                	<option value="0">0</option>
                	</select></td>
       			<td ><textarea name="text<%=i %>6" rows="3" cols="12"><%out.print(rs.getString(11)); %></textarea></td>
       			<td ><textarea name="text<%=i %>7" rows="3" cols="12"><%out.print(rs.getString(12)); %></textarea></td>
       			
       		</tr>
       		<tr><td><input type="hidden" value="<%out.print(rs.getString(1)); %>" name="project<%=i %>" /></td></tr>
       <%i++;} %>
       <tr><td><input type="hidden" value="<%=i %>" name="rows" /></td></tr>
       
       		</table>
         </div>
       </form>
      
       
      
  </body>

</html>
