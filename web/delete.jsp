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
//ResultSet rs=null;


Class.forName(driver);
conn=DriverManager.getConnection(url);
state=conn.createStatement();
request.setCharacterEncoding("gbk");
String l=request.getParameter("del");
int rs=state.executeUpdate("delete from task where project='"+l+"'or project='null'");
response.sendRedirect("/web/frame3.jsp");



 %>
 <!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
 </head>
 <body>
 
    
 </body>
 </html>
