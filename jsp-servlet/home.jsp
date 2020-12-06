<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.pill-nav a {
  display: block;
  color: black;
  padding: 14px;
  text-decoration: none;
  font-size: 17px;
  border-radius: 5px;
  text-align:center; background-color: #ddd;margin-left:600px;
}
.pill-nav a:hover {
   background-color: dodgerblue;
  color: black;
}

body {
background-color:#FFEBCD; 
}
ul {
  list-style-type: none;
  padding: 0;
  overflow: hidden;
  background-color: #000;
  height: 60px;
  font-size:20px;
}
li {
  float: left;
}

li a {
display: block;
  color: white;
  text-align: center;
  padding: 16px 16px;
  text-decoration: none;
}
</style>
</head>
<body>
<header><nav>
	<ul>
	  <li><a href="home.jsp">Home</a></li>
	  
	  <li style="float:right"><a href="success.jsp">Logout</a></li>
	</ul></nav></header>
	
<br><br>
<center><h1>Student Portal</h1></center>

<div class="pill-nav" style="width:60%">
  <a href="projects.jsp">Projects</a> <br>
  <a href="grades.jsp">Grades</a><br>
  <a href="skills.jsp">Skills</a><br>
  <a href="certificates.jsp">Certifications</a><br>
  <a href="languages.jsp">Languages</a><br>
  <a href="sports.jsp">Sports</a><br>
  <a href="socials.jsp">Socials</a><br>
  <a href="about.html">About</a><br>
</div>
</body>
</html>