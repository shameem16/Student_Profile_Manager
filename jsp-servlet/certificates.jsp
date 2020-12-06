<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html> 
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Certificates Page</title> 
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Cormorant:ital,wght@0,700;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> <!--for the buttons on the certificates page without it the name and link fields will be down by down-->
<style>
body {
background-color:#FFEBCD;
background-repeat: repeat;  
}
.input-group-addon
{
font-size:14px;
}
input.form-control:hover
{
background-color:#d9d9d9;
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
li a:hover{
text-decoration: none;
color: #fff;
}
</style>
</head>
<body >
	<ul>
	  <li><a href="home.jsp">Home</a></li>
	  
	  <li style="float:right"><a href="success.jsp">Logout</a></li>
	</ul>
<div class="container">
<div class="card border-0 shadow my-5">
<div class="card-body p-5"  style="background-color: #ffff6d;" >
	<form action="insertcert" method="post" name="myform" id="myform" >
	<h1 class="font-weight-light" style="font-family: 'Cormorant', serif;"><center><b> FILL YOUR CERTIFICATIONS	 DETAILS HERE</b></center></h1>
    <center>  <small style="font-size:15px;">(name of the cetificate can start with alphabets or digits & upload google drive link of the certificates and make sure to enter your roll number without fail)</small></center>
	  <div style="height: 850px" name="req" id="req"><br><br>
	 <div class="form-group">
      <label for="inputdefault" style="font-size:20px; font-family: 'Cormorant', serif;font-size: 22px;">Enter your full Roll Number <small style="color:red; 	size="10px">*</small></label>
      <input class="form-control" style="width:100%;" pattern="CB\.EN\.U4CSE[1][7-9][0-9]{3}"  required id="roll" autofocus = "autofocus"  maxlength="20"  name="rollno"  type="text"><br>
    </div>
<div class="card border-0 shadow my-5">
<div class="card-body p-5">
    <div style="height: 600px" >
			<div class="row">
			<div class="col-sm-6">
	        <div class="input-group">
    			<span class="input-group-addon">Certification</span>
    			<input class="form-control" type="text" pattern="[A-Z][a-zA-Z0-9\s]*" name="cert1" maxlength="50" id="cert1" style="width:900px;" placeholder="Name of the Certification"/>
    			<input class="form-control" pattern="https://drive.google.com/(.+)" type="url" name="proof1" id="proof1"   style="width:900px;" maxlength="350" placeholder="Drive Link of the Certificate"/>
    		</div>
    		</div>
			</div><br>
			<div class="row">
			<div class="col-sm-6">
	        <div class="input-group">
    			<span class="input-group-addon">Certification</span>
    			<input class="form-control" type="text" pattern="[A-Z][a-zA-Z0-9\s]*" name="cert2"  style="width:900px;" id="cert2" maxlength="50" placeholder="Name of the Certification"/>
    			<input class="form-control" type="url" name="proof2"  pattern="https://drive.google.com/(.+)"  style="width:900px;"  id="proof2" maxlength="350" placeholder="Drive Link of the Certificate"/>
    		</div>
    		</div>
			</div>	
		<br>
			<div class="row">
			<div class="col-sm-6">
	        <div class="input-group">
    			<span class="input-group-addon">Certification</span>
    			<input class="form-control" type="text" name="cert3"  pattern="[A-Z][a-zA-Z0-9\s]*" maxlength="50" id="cert3" style="width:900px;" placeholder="Name of the Certification"/>
    			<input class="form-control" type="url" name="proof3"  pattern="https://drive.google.com/(.+)"  style="width:900px"  id="proof3" maxlength="350" placeholder="Drive Link of the Certificate"/>
    		</div>
    		</div>
			</div>
		<br>
			<div class="row">
			<div class="col-sm-6">
	        <div class="input-group">
    			<span class="input-group-addon">Certification</span>
    			<input class="form-control" type="text" name="cert4" pattern="[A-Z][a-zA-Z0-9\s]*" id="cert4"  style="width:900px"  maxlength="50" placeholder="Name of the Certification"/>
    			<input class="form-control" type="url" name="proof4" pattern="https://drive.google.com/(.+)"  style="width:900px" id="proof4" maxlength="350" placeholder="Drive Link of the Certificate"/>
    		</div>
    		</div>
			</div>
		<br>
			<div class="row">
			<div class="col-sm-6">
	        <div class="input-group">
    			<span class="input-group-addon">Certification</span>
    			<input class="form-control" type="text" name="cert5" pattern="[A-Z][a-zA-Z0-9\s]*"  maxlength="50"  id="cert5" style="width:900px;"  placeholder="Name of the Certification"/>
    			<input class="form-control" type="url" name="proof5" pattern="https://drive.google.com/(.+)"   maxlength="350" id="proof5" style="width:900px;" placeholder="Drive Link of the Certificate"/>
    		</div>
    		</div>
			</div>
	<br>
			<div class="row">
			<div class="col-sm-6">
	        <div class="input-group">
    			<span class="input-group-addon">Certification</span>
    			<input class="form-control" type="text" name="cert6" pattern="[A-Z][a-zA-Z0-9\s]*" id="cert6"  maxlength="50"  style="width:900px;" placeholder="Name of the Certification"/>
    			<input class="form-control" type="url" name="proof6" pattern="https://drive.google.com/(.+)"  style="width:900px;" id="proof6"  maxlength="350" placeholder="Drive Link of the Certificate"/>
    		</div>
    		</div>
			</div>
	<br>
			<div class="row">
			<div class="col-sm-6">
	        <div class="input-group">
    			<span class="input-group-addon">Certification</span>
    			<input class="form-control" type="text" name="cert7" pattern="[A-Z][a-zA-Z0-9\s]*" id="cert7" style="width:900px;" maxlength="50" placeholder="Name of the Certification"/>
    			<input class="form-control" type="url" name="proof7" pattern="https://drive.google.com/(.+)"  id="proof7" style="width:900px" maxlength="350" placeholder="Drive Link of the Certificate"/>
    		</div>
    		</div>
			</div>
</div>
</div>
</div>
</div>
			<div class="form-group">
				<input class="form-control"  style="color:black;font-size:15px;"name="Submit"  type="Submit" value="SUBMIT"><br>
			</div>

</form>
</div>
</div>
</div>
</body>  
</html>