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
Class.forName(driver);
conn=DriverManager.getConnection(url);
state=conn.createStatement();
request.setCharacterEncoding("gbk");
int i,j;
int rows=Integer.parseInt(request.getParameter("rows"));
String text[][]=new String[100][100];
String project[]=new String[100];
for(i=1;i<=rows;i++){
	for(j=1;j<8;j++){
	 text[i][j]=request.getParameter("text"+i+j);
	}
	 project[i]=request.getParameter("project"+i);
	 int rt=state.executeUpdate("update  task set grade="+text[i][1]+",grade_reason='"+text[i][2]+"',value="+text[i][3]+",score="+text[i][4]+
	 ",regrade="+text[i][5]+",regrade_reason='"+text[i][6]+"',explanation='"+text[i][7]+"' where project='"+project[i]+"'");
	
}

/*
int i=0;
String name[]=new String[100];
String score[]=new String[100];
int final_salary[]=new int[100];
rs=state.executeQuery("SELECT * FROM employee");
while(rs.next()){
	name[i]=rs.getString(1);
	i++;
}
int n=i;
for(i=0;i<n;i++){
	rs=state.executeQuery("select avg(score) from task where name='"+name[i]+"'");
	score[i]=rs.getInt(1);
	final_salary[i]=3000*score[i]/100;
}
for(i=0;i<n;i++){	
	 rt=state.executeUpdate("update  final_score set score="score[i]",final_salary="final_salary[i]" where name='"+name[i]+"'");
}
*/

	
response.sendRedirect("/web/frame4.jsp");
 %>
 <!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
 </head>
 <body>
<%=text[1][2] %>
<%=text[3][5] %>
<%=text[1][7] %>
    
 </body>
 </html>
