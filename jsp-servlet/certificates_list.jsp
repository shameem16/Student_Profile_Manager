<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("rollno");
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
<h2 style="margin-top:50px;"align="center"><font><strong>Certification Details Available in Database</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
</tr>
<tr bgcolor="#DEB887">
<td><b>ROLL NO</b></td>
<td><b>FIRST CERTIFICATE</b></td>
<td><b>FIRST CERT PROOF</b></td>
<td><b>SECOND CERTIFICATE</b></td>
<td><b>SECOND CERT PROOF</b></td>
<td><b>THIRD CERTIFICATE</b></td>
<td><b>THIRD CERT PROOF</b></td>
<td><b>FOURTH CERTIFICATE</b></td>
<td><b>FOURTH CERT PROOF</b></td>
<td><b>FIFTH CERTIFICATE</b></td>
<td><b>FIFTH CERT PROOF</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM certificates";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#FFEBCD">
<td><%=resultSet.getString("rollno") %></td>
<td><%=resultSet.getString("cert1") %></td>
<td><%=resultSet.getString("proof1") %></td>
<td><%=resultSet.getString("cert2") %></td>
<td><%=resultSet.getString("proof2") %></td>
<td><%=resultSet.getString("cert3") %></td>
<td><%=resultSet.getString("proof3") %></td>
<td><%=resultSet.getString("cert4") %></td>
<td><%=resultSet.getString("proof4") %></td>
<td><%=resultSet.getString("cert5") %></td>
<td><%=resultSet.getString("proof5") %></td>
</tr>
<% 
}
} 
catch (Exception e) {
e.printStackTrace();
}
%>
</table>