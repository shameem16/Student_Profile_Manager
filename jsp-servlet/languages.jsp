<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html> 
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Language Page</title> 
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"> <!--for the elevated portion-->
	<link href="https://fonts.googleapis.com/css2?family=Cormorant:ital,wght@0,700;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet"> <!--google font- coromant-->
<style>
label{
font-family: 'Lato', sans-serif;
font-size: 20px;
}
body {
background-color:#FFEBCD;
}  
.input-group-addon
{
font-size:14px;
}
.require{
  margin-left: 25px;
}
input.form-control:hover
{
background-color:#d9d9d9;
}
select.sel:hover{
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
<div class="container"> <!--the whole container-->
<div class="card border-0 shadow my-5"> <!--the entire card whole thing-->
<div class="card-body p-5" style="background-color: #ffff6d;" >
      <form action="insertlang" name="myform" method="post"><!--the form that should be enetered whole part-->
      <h1 class="font-weight-light" style="font-family: 'Cormorant', serif; "><center><b>  FILL YOUR LANGUAGE DETAILS HERE</b></center></h1>
	  <center>  <small style="font-size:15px;">(enter your roll number and atleast one language that you know without fail)</small></center>
	 <div style="height: 600px" ><br><!--the form until the languages part excluding the submit button-->
			<div class="form-group">
				<label for="inputdefault" style="font-size:18px;">Enter your full Roll Number <small style="color:red; font-size:25px;">*</small></label>
				<input class="form-control" style="width:100%;" required  pattern="CB\.EN\.U4CSE17[0-9]{3}" id="rollno" autofocus = "autofocus"  maxlength="16"  name="rollno"  type="text"><br>
			</div>
		<div class="card border-0 shadow my-5"><!--the 2nd card whole part-->
		<div style="height: 370px;margin-left:100px;" ><br><br>
			<div class="row">
				<div class="col-sm-6">
					<div class="input-group">
						<label for="lang">Language 1</label>&nbsp&nbsp&nbsp&nbsp&nbsp
							<select class="sel" name="lang1" style="width:310px;"id="lang1">
							  <option value="">--Please choose an option--</option>
    		     			  <option value="BENGALI">Bengali</option>
							  <option value="CZECH">Czech</option>
							  <option value="DANISH">Danish</option>
							  <option value="DUTCH">Dutch</option>
							  <option value="ENGLISH">English</option>
							  <option value="FRENCH">French</option>
							  <option value="GUJARATHI">Gujarati</option>
							  <option value="HINDI">Hindi</option>
							  <option value="LATIN">Latin</option>
							  <option value="MALAYALAM">Malayalam</option>
							  <option value="MARATHI">Marathi</option>
							  <option value="PUNJABI">Punjabi</option>
							  <option value="SPANISH">Spanish</option>
							  <option value="TAMIL">Tamil</option>
							  <option value="TELUGU">Telugu</option>
							  <option value="URDU">Urdu</option>
							  </select>
							</div>
							</div>
						</div><br>
				<div class="row">
				<div class="col-sm-6">
				<div class="input-group">
					<label for="lang">Language 2</label>&nbsp&nbsp&nbsp&nbsp&nbsp
					<select name="lang2" class="sel" style="width:310px;"id="lang2">
						 <option value="">--Please choose an option--</option>
    		     			  <option value="BENGALI">Bengali</option>
							  <option value="CZECH">Czech</option>
							  <option value="DANISH">Danish</option>
							  <option value="DUTCH">Dutch</option>
							  <option value="ENGLISH">English</option>
							  <option value="FRENCH">French</option>
							  <option value="GUJARATHI">Gujarati</option>
							  <option value="HINDI">Hindi</option>
							  <option value="LATIN">Latin</option>
							  <option value="MALAYALAM">Malayalam</option>
							  <option value="MARATHI">Marathi</option>
							  <option value="PUNJABI">Punjabi</option>
							  <option value="SPANISH">Spanish</option>
							  <option value="TAMIL">Tamil</option>
							  <option value="TELUGU">Telugu</option>
							  <option value="URDU">Urdu</option>
						</select>
			</div>
    		</div>
			</div><br>
			<div class="row">
			<div class="col-sm-6">
			<div class="input-group">
    			<label for="lang">Language 3</label>&nbsp&nbsp&nbsp&nbsp&nbsp
				<select name="lang3" class="sel" style="width:310px;"id="lang3">
				  <option value="">--Please choose an option--</option>						
				 			  <option value="BENGALI">Bengali</option>
							  <option value="CZECH">Czech</option>
							  <option value="DANISH">Danish</option>
							  <option value="DUTCH">Dutch</option>
							  <option value="ENGLISH">English</option>
							  <option value="FRENCH">French</option>
							  <option value="GUJARATHI">Gujarati</option>
							  <option value="HINDI">Hindi</option>
							  <option value="LATIN">Latin</option>
							  <option value="MALAYALAM">Malayalam</option>
							  <option value="MARATHI">Marathi</option>
							  <option value="PUNJABI">Punjabi</option>
							  <option value="SPANISH">Spanish</option>
							  <option value="TAMIL">Tamil</option>
							  <option value="TELUGU">Telugu</option>
							  <option value="URDU">Urdu</option>
					</select>
			</div>
			</div>
			</div><br>
			<div class="row">
			<div class="col-sm-6">
			<div class="input-group">
    			<label for="lang">Language 4</label>&nbsp&nbsp&nbsp&nbsp&nbsp
				<select name="lang4"style="width:310px;" class="sel" id="lang4">
					  <option value="">--Please choose an option--</option>
    		     			  <option value="BENGALI">Bengali</option>
							  <option value="CZECH">Czech</option>
							  <option value="DANISH">Danish</option>
							  <option value="DUTCH">Dutch</option>
							  <option value="ENGLISH">English</option>
							  <option value="FRENCH">French</option>
							  <option value="GUJARATHI">Gujarati</option>
							  <option value="HINDI">Hindi</option>
							  <option value="LATIN">Latin</option>
							  <option value="MALAYALAM">Malayalam</option>
							  <option value="MARATHI">Marathi</option>
							  <option value="PUNJABI">Punjabi</option>
							  <option value="SPANISH">Spanish</option>
							  <option value="TAMIL">Tamil</option>
							  <option value="TELUGU">Telugu</option>
							  <option value="URDU">Urdu</option>
				</select>
				</div>
				</div>
				</div><br>
				<div class="row">
				<div class="col-sm-6">
				<div class="input-group">
					<label for="lang">Language 5</label>&nbsp&nbsp&nbsp&nbsp&nbsp
					<select name="lang5" class="sel" style="width:310px;" id="lang5">
						 <option value="">--Please choose an option--</option>
    		     			  <option value="BENGALI">Bengali</option>
							  <option value="CZECH">Czech</option>
							  <option value="DANISH">Danish</option>
							  <option value="DUTCH">Dutch</option>
							  <option value="ENGLISH">English</option>
							  <option value="FRENCH">French</option>
							  <option value="GUJARATHI">Gujarati</option>
							  <option value="HINDI">Hindi</option>
							  <option value="LATIN">Latin</option>
							  <option value="MALAYALAM">Malayalam</option>
							  <option value="MARATHI">Marathi</option>
							  <option value="PUNJABI">Punjabi</option>
							  <option value="SPANISH">Spanish</option>
							  <option value="TAMIL">Tamil</option>
							  <option value="TELUGU">Telugu</option>
							  <option value="URDU">Urdu</option>
					</select>
				</div>
				</div>
				</div>
</div>
</div>
</div>
	<div class="form-group">
      <input class="form-control"  name="Submit"  type="Submit" value="Submit"><br>
    </div>
	</form>	
</div>
</div>
</div>
</body>  
</html>