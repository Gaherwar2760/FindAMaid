<%-- 
    Document   : MaidApply
    Created on : 08-Feb-2024, 7:19:02 pm
    Author     : POONAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>Application Form</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="style.css" type="text/css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
</style>
</head>

<body id="myPage1" >
   
    <nav class="navbar navbar-default  navbar stickey-top navbar-fixed-top ">
<div class="container-fixed">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>                        
</button>

</div>
    <div class="collapse navbar-collapse" id="myNavbar">

<ul class="nav navbar-nav navbar-left">

<li><a href="index.jsp">HOME</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li><a href="#profile">Hello <%= request.getAttribute("user")%></a></li>

<li><a href="#Logout">Logout</a></li>

</ul>
</div>
</div>
</nav>

<h1 style="color:#ffffff;font-size:10 px" class="text-center">APPLY</h1><br>

<form  name="ApplyForm" action="ApplyServlet" method="post" enctype="multipart/form-data">
        <h1 style="color:#f4511e;font-size:10 px" class="text-center">APPLY</h1><br>
   <div class="form-row">
    <div class="col-md-4">
        <label for="fname">First Name</label>
      <input type="text" class="form-control" placeholder="First name" name="fname" maxlength=45 required>
    </div>
       <div class="col-md-4">
        <label for="mname">Middle Name</label>
      <input type="text" class="form-control" placeholder="Middle name" name="mname" maxlength=45 required>
    </div>
    <div class="col-md-4">
        <label for="lname">Last Name</label>
      <input type="text" class="form-control" placeholder="Last name"  name="lname" maxlength=45 required>
    </div>
  </div>
        <br>
        
           <div class="form-row">
    <div class="col-md-4">
        <label for="dob">Date Of Birth</label>
        <input type="date" class="form-control" placeholder="Date Of Birth" name="dob" max="2006-01-01">
    </div>
       <div class="col-md-4">
        <label for="age">Age</label>
      <input type="text" class="form-control" placeholder="Age" name="age" required>
    </div>
    <div class="col-md-4">
        <label for="inputmno">Mobile Number</label>
      <input type="text" class="form-control" placeholder="Mobile No." name="mob" required>
    </div>
  </div>
        <br>
    <div class="form-row">
<div class="col-md-4">
    <label for="addr">Address </label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment name,street,landmark" name="address" required>
  </div>
    
<div class="col-md-4">
    
      <label for="city">City</label>
      <select id="city" class="form-control" name="city">
        <option selected>Pune</option>
        <option value="pune">Pune</option>
      </select>
    </div>

  
<div class="col-md-4">
    
      <label for="area">Area</label>
      <select id="area" class="form-control" name="area">
        <option selected value="kothrud">Kothrud</option>
        <option value="karvenagar">KarveNagar</option>
        <option value="warje">Warje</option>
        <option value="hadapsar">Hadapsar</option>
      </select>
    </div>
   </div>
  <br>
  <div class="form-row">
<div class="col-md-4">
    
      <label for="exp">Experience</label>
      <input type="int" class="form-control" id="exp" placeholder="Experience" name="exp">
    </div>
      <div class="col-md-4">
    
      <label for="mstatus">Martial Status</label>
      <select id="mstatus" class="form-control" name="mstatus">
        <option selected value="single">Single</option>
        <option value="married">Married</option>
        <option value="sparent">Single Parent</option>
        <option value="separated">Separated</option>
        <option value="widow">Widow</option>
      </select>
    </div>
       <div class="col-md-4">
    
      <label for="salray">Salary range</label>
      <select id="salary" class="form-control" name="salary">
        <option value="five"><5000</option>
        <option value="fiveToTen">5000-10000</option>
        <option value="GTen">>10000</option>
      </select>
    </div>
   </div>
  <br>
  <div class="form-row">
     <label for="inputState">Select Your Categories</label><br>
      <div class="col-md-2">
          
<div class="form-check form-check-inline">
   <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="baby">
  <label class="form-check-label" for="inlineRadio1">1: Baby Sitter</label>
</div>

      </div>
          <div class="col-md-2">
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="cook">
  <label class="form-check-label" for="inlineRadio2">2:cooking</label>
</div>
          </div>
      <div class="col-md-2">
<div class="form-check form-check-inline">
   <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="clean">
  <label class="form-check-label" for="inlineRadio3">3:Cleaning</label>
</div>
      </div>
      <div class="col-md-3">
<div class="form-check form-check-inline">
    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio4" value="elder">
  <label class="form-check-label" for="inlineRadio4">4:Elderly Care</label>
</div>
      </div>
            <div class="col-md-3">
<div class="form-check form-check-inline">
    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio5" value="all">
  <label class="form-check-label" for="inlineRadio5">5: All</label>
</div>
      </div>
  </div>
  </div> 
  <br>
  <div class="form-row">
<div class="col-md-4">
    <label for="img">Add your Image </label>
    <input type="file" class="form-control-file" id="img" name="image">
  </div>
  
<div class="col-md-4">
    <label for="vc">Add your Verification certificate </label>
    <input type="file" class="form-control-file" id="vc" name="vcerti">
  </div>
  

<div class="col-md-4">
    <label for="ap">Add Adhaar Card or Pan Card </label>
    <input type="file" class="form-control-file" id="ap" name="Aadhar">
    <br><br>
  </div>
      
  </div>
  
    <div class="form-row">
<div class="col-md-6 col-md-offset-6">
    
   
      <button style="background-color: #f4511e; border: 1px solid #f4511e;color: #fff !important;"type="submit" class="btn5 btn-primary">Apply</button>
</div>
  </div>
</form>
<script>
function validateApplyForm() {
            
            var fname = document.forms["ApplyForm"]["fname"].value;
            //var mname = document.forms["myForm"]["email"].value;
            //var address = document.forms["myForm"]["address"].value;
           

           
            var name =/^[A-Za-z]$/;
           // var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
            
           
             if (!name.match(fname)) {
                alert("name should contain only alphabets");
                return false;
                }

            
           
            }
</script>
 
 
</body>
</html>