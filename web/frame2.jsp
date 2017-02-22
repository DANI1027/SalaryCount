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
<script type="text/javascript">
$(document).ready(function(){
	$("#selectall").click(function(){
	var s=$(this).attr("src");
	if(s.indexOf("up")>0){//未选中状态
		$(".sysinfo .chk").attr("src","images/index/ck_down.gif")
		$(".sysinfo input:checkbox").attr("checked","checked");
	}
	else{
			$(".sysinfo .chk").attr("src","images/index/ck_up.gif")
			$(".sysinfo input:checkbox").removeAttr("checked");
		}
	});
	$(".list .chk").click(function(){
		var s=$(this).attr("src");
		if(s.indexOf("up")>0){//未选中状态
			$(this).attr("src","images/index/ck_down.gif")
			//$(".sysinfo input:checkbox").attr("checked","checked");
		}
		else{
				$(this).attr("src","images/index/ck_up.gif")
				//$(".sysinfo input:checkbox").removeAttr("checked");
			}
	});
});


</script>

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
      %>
      <%

      		Class.forName(driver);
      		conn=DriverManager.getConnection(url);
      		String sql="SELECT * FROM final_score";
      		state=conn.createStatement();
      		rs=state.executeQuery(sql)	;
       %>
       <form name="form" id="form"  method="get" action="">
	   <div class="container">
    	<table class="table"  border="1" id="table">
        	<caption>月最终得分</caption>
        	<tr >
            	<th>员工</th>
                <th>关联考核绩效</th>
                <th>KPI得分</th>
                <th>额外激励</th>
                <th>按部门得分100计算</th>
                <th>本月最终得分</th>
                <th>应发</th>
                <th>补贴</th>
                <th>月实发</th>                
            </tr>
       <%
       while(rs.next()){
       %>
       		<tr >
       			
       			<td><%out.print(rs.getString(1)); %></td>
                        <td><%out.print(rs.getInt(2)); %></td>		         
       			<td><%out.print(rs.getInt(3)); %></td>
       			<td><%out.print(rs.getInt(4)); %></td>
       			<td><%out.print(rs.getInt(5)); %></td>
       			<td><%out.print(rs.getInt(6)); %></td>
       			<td><%out.print(rs.getInt(7)); %></td>
       			<td><%out.print(rs.getInt(8)); %></td>
       			<td><%out.print(rs.getInt(9)); %></td>
       		</tr>
       <%} %>
       		</table>
         </div>
       </form>    
  </body>
</html>
