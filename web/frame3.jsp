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

function keep(){
			var table=document.getElementById("table1");
			var row = table.insertRow(-1); //为-1时往下加（升序），为0时往上加（id降序）
			var add1 = row.insertCell(0);
			var add2 = row.insertCell(1);
			var add3 = row.insertCell(2);
			var add4 = row.insertCell(3);
			var add5 = row.insertCell(4);
			var add6 = row.insertCell(5);
			var add7 = row.insertCell(6);
			var add8 = row.insertCell(7);
			var add9 = row.insertCell(8);
			var add10 = row.insertCell(9);
			var add11 = row.insertCell(10);
			var add12 = row.insertCell(11);
			var add13 = row.insertCell(12);

			add1.innerHTML = document.getElementById("a").value;//不加-1时id从二开始；原因：标题占一个
			add2.innerHTML = document.getElementById("b").value;
			
			var tall = document.getElementById("c");
			var index = tall.selectedIndex;// 当前坐标
			var option = tall.options[index];
			add3.innerHTML = option.text
			add4.innerHTML = document.getElementById("d").value;
			var tall2 = document.getElementById("e");
			var index2 = tall2.selectedIndex;// 当前坐标
			var option2 = tall2.options[index2];
			add5.innerHTML = option2.text
			add13.innerHTML = "<th class='exec'><p class='execact' > <input type='button' value='删除' onclick='deleteRow(this)' class='execbtn'></p></td>";
			document.getElementById("add").style.display = "none";
			alert("添加成功！！");
			document.form2.submit();
		
	}

function deleteRow(s) {
		var l=document.getElementById("del");
		l.value=s;
		//var s = input.parentNode.parentNode.parentNode.rowIndex;
		//document.getElementById("table1").deleteRow(s);
		alert("删除成功！！");
		document.form1.submit();
	}
	</script> 

<script type="text/javascript">
function add(){
	document.getElementById("add").style.display = "block"; 
}
</script>

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
     	//String id=session.getAttribute("id").toString();
      %>
      <%

      		Class.forName(driver);
      		conn=DriverManager.getConnection(url);
      		String name=session.getAttribute("name").toString();
      		String sql="SELECT * FROM task where name='"+name+"'";
      		state=conn.createStatement();
      		rs=state.executeQuery(sql)	;
      		
       %>
       <form name="form1" id="form1"  method="post" action="delete.jsp">
	   <div class="container">
    	<table class="table"  border="1" id="table1">
        	<caption>任务情况</caption>
        	<tr >
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
                <th class="exec"><p class="execact" ><input type="button" value="新增" class="execbtn" onClick="add()" /></p></th>
            </tr>
       <%
       while(rs.next()){
       %>
       		<tr >
       			<td ><%out.print(rs.getString(1)); %></td>
       			<td ><%out.print(rs.getString(2)); %> </td>
       			<td ><%out.print(rs.getString(3)); %></td>
       			<td ><%out.print(rs.getString(4)); %></td>
       			<td ><%out.print(rs.getString(5));%></td>
       			<td ><%out.print(rs.getInt(6)); %></td>
       			<td ><%out.print(rs.getString(7)); %></td>
       			<td ><%out.print(rs.getInt(8)); %></td>
       			<td ><%out.print(rs.getInt(9)); %></td>
       			<td ><%out.print(rs.getInt(10)); %></td>
       			<td ><%out.print(rs.getString(11)); %></td>
       			<td ><%out.print(rs.getString(12)); %></td>
       			<td class="exec"><p class="execact" ><input type="button" value="删除" class="execbtn" onclick="deleteRow('<%out.print(rs.getString(1));%>')"/></p></td>
       		</tr>
       		
       <%} %>
       <tr><td><input type="hidden" value="" name="del" id="del"/></td></tr>
       		</table>
         </div>
       </form>
      <div id="add">
	<form name="form2" id="form2"  method="post" action="deal.jsp">
      <table border="0" id="table2">
        <br/><br/>
        <tr>
        	<td  >工作事项<input type="text" id="a" name="text1"/></td>  
        </tr>
        <tr>
        	<td valign="top" style="text-indent:2em" >目标<textarea id="b" name="text2"></textarea></td>
        </tr>
        <tr>
            <td>是否完成<select id="c" name="choose1"><option value="是">是</option><option value="否">否</option></select></td>
         </tr>
         <tr>
         	<td>完成日期<input type="text" size="5px" id="d" name="text3"/></td>
         </tr>
         <tr>
         	<td style="text-indent:-2.1em">完成情况自评<select id="e" name="choose2">
            		<option value="优秀">优秀</option>
            		<option value="完成">完成</option>
               		<option value="基本完成">基本完成</option>
                	<option value="未及时完成">未及时完成</option>
                	<option value="重大失误">重大失误</option>
                	<option value="未执行">未执行</option>
                	</select></td>
         </tr>
         <tr>
         	<td style="text-indent:6em"><input type="button" value="保存" class="execbtn" onClick="keep()"/></td>
         </tr>
      </table>
 	</form>
 </div>    
       
      
  </body>

</html>
