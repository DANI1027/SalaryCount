<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="GBK"%>
<%@ page contentType="text/html;charset=GBK"%>
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
int i=1,flag=0;
Class.forName(driver);
conn=DriverManager.getConnection(url);
state=conn.createStatement();
request.setCharacterEncoding("gbk");
String account=request.getParameter("account");
String password=request.getParameter("password");
String sql="select *from employee where account='"+account+"'and password='"+password+"'";
rs=state.executeQuery(sql)	;
if(rs.next()){
	flag=1;
	session.setAttribute("name",rs.getString(1));
	};

if(flag==1){
	response.sendRedirect("/web/index.jsp");
}
else{
	response.sendRedirect("/web/login.jsp");
	};
%>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
 </head>
 <body>

 </body>
 </html>
