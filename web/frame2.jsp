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
<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#selectall").click(function(){
	var s=$(this).attr("src");
	if(s.indexOf("up")>0){//δѡ��״̬
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
		if(s.indexOf("up")>0){//δѡ��״̬
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
        	<caption>�����յ÷�</caption>
        	<tr >
            	<th>Ա��</th>
                <th>�������˼�Ч</th>
                <th>KPI�÷�</th>
                <th>���⼤��</th>
                <th>�����ŵ÷�100����</th>
                <th>�������յ÷�</th>
                <th>Ӧ��</th>
                <th>����</th>
                <th>��ʵ��</th>                
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
