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
String text1=request.getParameter("text1");
String text2=request.getParameter("text2");
String text3=request.getParameter("text3");
String choose1=request.getParameter("choose1");
String choose2=request.getParameter("choose2");
String name=session.getAttribute("name").toString();
if(text1!=null){
	String sql="insert into task(project,aim,finish_state,finish_date,self_evaluate,name) values('"+text1+"','"+text2+"','"+choose1+"','"+text3+"','"+choose2+"','"+name+"')";
	int count=state.executeUpdate(sql);
	}
response.sendRedirect("/web/frame3.jsp");
 %>
 <!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
 </head>
 <body>

    
 </body>
 </html>
