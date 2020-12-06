<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%String id = request.getParameter("rollno");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "userdb";
String userId = "root";
String password = "shameem";
try {
		Class.forName(driverName);
	}
catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 style="margin-top:50px;"align="center"><font><strong>Language Details Available in Database</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
</tr>
<tr bgcolor="#DEB887">
<td><b>ROLL NO</b></td>
<td><b>LANGUAGE1</b></td>
<td><b>LANGUAGE2</b></td>
<td><b>LANGUAGE3</b></td>
<td><b>LANGUAGE4</b></td>
<td><b>LANGUAGE5</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM languages";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#FFEBCD">
<td><%=resultSet.getString("rollno") %></td>
<td><%=resultSet.getString("lang1") %></td>
<td><%=resultSet.getString("lang2") %></td>
<td><%=resultSet.getString("lang3") %></td>
<td><%=resultSet.getString("lang4") %></td>
<td><%=resultSet.getString("lang5") %></td>
</tr>
<% 
}
} 
catch (Exception e) {
e.printStackTrace();
}
%>
</table>