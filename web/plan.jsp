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

Class.forName(driver);
conn=DriverManager.getConnection(url);
state=conn.createStatement();
request.setCharacterEncoding("gbk");
String text2=request.getParameter("text2");
int rs=state.executeUpdate("update point set plan='"+text2+"'");
response.sendRedirect("/web/frame1hou.jsp");



 %>
