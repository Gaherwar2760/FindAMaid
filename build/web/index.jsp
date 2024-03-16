<%-- 
    Document   : index
    Created on : 07-Feb-2024, 3:04:05 pm
    Author     : POONAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>FindAMaid</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="style.css" type="text/css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">

    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
        <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
        <input type="hidden" id="registerStatus" value="<%= request.getAttribute("registerStatus")%>">
       <input type="hidden" id="applied" value="<%= request.getAttribute("applied")%>">
<nav class="navbar navbar-default navbar-fixed-top">
<div class="container-fluid">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>                        
</button>

</div>
<!-- Image and text -->

<div class="collapse navbar-collapse" id="myNavbar">

<ul class="nav navbar-nav navbar-right">

<li><a href="#myPage">HOME</a></li>
<li><a href="#portfolio">categories</a></li>
<li><a href="#Apply">Apply for a job</a></li>
<li><a href="#working">how it works</a></li>
<li><a href="#contact">Contact</a></li>
</ul>
</div>
</div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
<!-- Indicators -->
<ol class="carousel-indicators">
<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel" data-slide-to="1"></li>
<li data-target="#myCarousel" data-slide-to="2"></li>
</ol>

<!-- Wrapper for slides -->
<div class="carousel-inner" role="listbox">
<div class="item active">
<img src="Project_img/HouseMaid.jpg" alt="New York" width="200" height="200">

     
</div>

<div class="item">
<img src="Project_img/Maid2_1.jpeg" alt="Chicago" width="200" height="200">
      
</div>

<div class="item">
<img src="Project_img/Maid3.jpeg" alt="Los Angeles" width="200" height="200">
     
</div>
</div>

<!-- Left and right controls -->
<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
<span class="sr-only">Next</span>
</a>
</div>


<!-- Container (Portfolio Section) -->
<div id="portfolio" class="container-fluid text-center bg-grey">
<h2>Our Services</h2><br>
<h4>What we provide</h4>
<div class="row text-center slideanim">
<div class="col-sm-3">
<div class="thumbnail">
   
<img src="Project_img/baby.jpeg" alt="" width="400" height="300">
<button class="btn1" data-toggle="modal" data-target="#myModal" name="act" value="baby" data-id="baby">Baby sitter</button>
<p>we care for your babies</p>
</div>
</div>
<div class="col-sm-3">
<div class="thumbnail">
<img src="Project_img/cook.jpeg" alt="" width="400" height="300">
<button class="btn1" data-toggle="modal" data-target="#myModal" name="act" value="cook" data-id="cook">Cooking</button>
<p>we cook for you</p>
</div>
</div>
<div class="col-sm-3">
<div class="thumbnail">
<img src="Project_img/clean.jpeg" alt="" width="400" height="300">
<button class="btn1" data-toggle="modal" data-target="#myModal" name="act" value="cleaning" data-id="clean">Cleaning</button>
<p>Yes,we clean like a pro</p>
</div>
</div>
<div class="col-sm-3">
<div class="thumbnail">
<img src="Project_img/elder.jpeg" alt="" width="400" height="300">
<button class="btn1" data-toggle="modal" data-target="#myModal" name="act" value="elderly" data-id="elder">Elderly</button>
<p>They are our parents as well</p>
</div>
</div>
</div><br> 
<div id="Apply" class="container-fluid bg-orange">
<h2 class="text-center">APPLY FOR A JOB</h2>
<div class="row">
<div class="col-sm-5">
 
    <img src="Project_img/girl.jpeg" alt="" height="200px"/>
</div>
<div class="text-center col-sm-5 slideanim">
    <h3>Seeking for job opportunities</h3>
    <h5>join Us today</h5>
    <p>click the below button to apply<p>
    <center><button class="btn btn-default pull-right" data-toggle="modal" data-target="#signin" type="submit">Apply</button></center>
</div>
</div>
</div>
<!<!-- login -->
<div class="modal fade" id="signin" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content" id="signinModel">
          <div class="modal-header" style="padding:35px 50px;" id="signinModelHeader">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 style="color:#fff"><span class="glyphicon glyphicon-lock "></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
            <form role="form" onsubmit="return validateForm()" name="myForm" action="LoginServlet" method="post">
            <div class="form-group">
                
              <label for="Email"><span class="glyphicon glyphicon-user"></span> Email</label>
              <input type="email" class="form-control" id="usrname" placeholder="Enter email" name="email" required>
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" id="psw" placeholder="Enter password" name="password" required>
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn btn-success btn-block" style="background-color:#f4511e"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
          
        </div>
        <div class="modal-footer">
            <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal" style="background-color:#f4511e"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
            <p>Not a member? <a onclick="$('#signin').modal('hide');$('#signup').modal('show');" href="#">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
        </div>
      </div> 
      
    </div>
  </div> 

<!<!-- signupmodel -->

<div class="modal fade" id="signup" role="dialog">
    <div class="modal-dialog">
        
      <!-- Modal content-->
      <div class="modal-content" id="signup">
          <div class="modal-header" style="padding:35px 50px;" id="signinModelHeader">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 style="color:#fff"><span class="glyphicon glyphicon-lock "></span> Signup</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
            <form role="form" onsubmit="return validateForm1()" name="myForm1" action="signupServlet" method="post">
            <div class="form-group">
                 <label for="UserName"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="Username" class="form-control" id="uname" placeholder="Enter user name" name="uname" required>
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Email</label>
              <input type="email" class="form-control" id="usrname" placeholder="Enter email" name="email" required>
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" id="psw" placeholder="Enter password" name="password" required>
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn btn-success btn-block" style="background-color:#f4511e" ><span class="glyphicon glyphicon-off"></span> SignUp</button>
          </form>
        </div>
        <div class="modal-footer">
            <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal" style="background-color:#f4511e"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        </div>
          
      </div> 
      
    </div>
  </div> 






<!-- feedback -->

<div id="working" class="container-fluid text-center bg-grey">
<h4>How it works</h4>
<div class="row text-center slideanim">
<div class="col-sm-4">
<div class="thumbnail">
<img src="Project_img/search.jpeg" alt="" width="200" height="200">
<p><strong>Search</strong></p>
<p>Use our simple search and tell us what you require.
See the list of the all the available maids in your area.</p>
</div>
</div>
<div class="col-sm-4">
<div class="thumbnail">
<img src="Project_img/todo.jpeg" alt="" width="200" height="200">
<p><strong>ShortList</strong></p>
<p>View the complete profile of the available maids and Shortlist as per your Preference</p>
</div>
</div>
<div class="col-sm-4">
<div class="thumbnail">
<img src="Project_img/hands.jpeg" alt="Paris" width="200" height="200">
<p><strong>Meet,Select and Relax</strong></p>
<p>Talk to the maid on the phone 
or meet her personally.
if loved the services ,let us know !
</p>
</div>
</div>
</div>
</div>


<div id="working" class="container-fluid text-center bg-grey">
<h4>we,re big on Trust and safety</h4>
<p>Maids go through an extensive gkfgksfks</p>
<div class="row text-center slideanim">
<div class="col-sm-4">
<div class="thumbnail">
<img src="Project_img/girl.jpeg" alt="" width="200" height="200">
<p><strong>Identity Check</strong></p>

</div>
</div>
<div class="col-sm-4">
<div class="thumbnail">
<img src="Project_img/doc.jpeg" alt="" width="200" height="200">
<p><strong>Document verification</strong></p>

</div>
</div>
<div class="col-sm-4">
<div class="thumbnail">
<img src="Project_img/selected.jpeg" alt="Paris" width="200" height="200">
<p><strong>selection</strong></p>

</div>
</div>
</div>
</div>



<div class="modal fade" id="myModal" role="dialog">
<div class="modal-dialog">
 <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Requirements</h4>
           <div class="form-group">
               
            </div>
        </div>
        <div class="modal-body">
            <form action="MaidDisplay.jsp" method="post">
    <label class="control-label">Category:</label>
    <input type="text"  name="id"/>
     <div class="form-group">
      <label class="control-label" for="city" class="label-inline">select City:</label>
      
      <select class="form-control" id="sel1" name="city">
        <option>Pune</option>
        
      </select>
     
       
    </div>
   
     <div class="form-group">
      <label for="area" class="label-inline">select area:</label>
      
      <select class="form-control" id="sel2" name="area" required>
        <option value="kothrud">Kothrud</option>
        <option value="karvenagar">Karvenagar</option>
        <option value="warje">Warje</option>
        <option value="hadapsar">Hadapsar</option>
      </select>
     
       
    </div>
       <div class="form-group">
      <label for="city" class="label-inline">Salary</label>
      
      <select class="form-control" id="sel1" name="salary">
        <option value="five"><5000</option>
        <option value="fiveToTen">5000-10000</option>
        <option value="GTen">>10000</option>
       
      </select>
     
       
    </div>
   

           
    <button type="submit" class="btn btn-default" style="background-color:#f4511e">Submit</button>
  </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn1 btn-default" data-dismiss="modal">Close</button>
        </div>
 </div><!--<!-- modal content -->
    </div>
  </div>
</div>

<!-- feedback -->
<div id="contact" class="container-fluid bg-grey">
<h2 class="text-center">FEEDBACK</h2>
<div class="row">
<div class="col-sm-5">
<img src="Project_img/otp.jpeg" alt="Paris" width="200" height="200">
</div>
<div class="col-sm-7 slideanim">
<div class="row">
<div class="col-sm-6 form-group">
<input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
</div>
<div class="col-sm-6 form-group">
<input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
</div>
</div>
<textarea class="form-control" id="comments" name="comments" placeholder="Feedback" rows="5"></textarea><br>
<div class="row">
<div class="col-sm-12 form-group">
<button class="btn btn-default pull-right" type="submit">Send</button>
</div>
</div>
</div>
</div>
</div>
<script type="text/javascript">
    var status=document.getElementById("status").value;
    var registerStatus=document.getElementById("registerStatus").value;
    var applied=document.getElementById("applied").value;
    if(status==="failed"){
        swal("user not found","plz register");
    }
     
    if(registerStatus==="failed"){
        swal("Error occured","Try after sometime");
    }
     if(registerStatus==="success"){
        swal("Welcome","Registration Successfull");
    }
    if(applied==="success"){
        swal("Congratulations","you have applied Successfully");
    }
    </script>
  <script type="text/javascript">
      
    $(".btn1").click(function () {
        var passedID = $(this).data('id');//get the id of the selected button
        $('input:text').val(passedID);//set the id to the input on the modal
    });

  function validateForm1() {
            
            var password = document.forms["myForm1"]["password"].value;
            var email = document.forms["myForm1"]["email"].value;
            //var address = document.forms["myForm"]["address"].value;
           

           
            var passwordRegex =/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
            var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
            
           
             if (!password.match(passwordRegex)) {
                alert("Password must be at least 8 characters long ,contain at least one letter , one number,upper case,lower case letter.");
                return false;
            }

            if (!email.match(emailRegex)) {
                alert("Please enter a valid email address.");
                return false;
            }

           
             }
 
  function validateForm() {
            
            var password = document.forms["myForm"]["password"].value;
            var email = document.forms["myForm"]["email"].value;
            //var address = document.forms["myForm"]["address"].value;
           

           
            var passwordRegex =/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
            var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
            
           
             if (!password.match(passwordRegex)) {
                alert("Password must be at least 8 characters long ,contain at least one letter , one number,upper case,lower case letter.");
                return false;
            }

            if (!email.match(emailRegex)) {
                alert("Please enter a valid email address.");
                return false;
            }

           
             }
 
 
 
 
 
 
 
$(document).ready(function(){
// Initialize Tooltip
$('[data-toggle="tooltip"]').tooltip(); 

// Add smooth scrolling to all links in navbar + footer link
$(".navbar a, footer a[href='#myPage']").on('click', function(event) {

// Make sure this.hash has a value before overriding default behavior
if (this.hash !== "") {

// Prevent default anchor click behavior
event.preventDefault();

// Store hash
var hash = this.hash;

// Using jQuery's animate() method to add smooth page scroll
// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
$('html, body').animate({
scrollTop: $(hash).offset().top
}, 900, function(){

// Add hash (#) to URL when done scrolling (default click behavior)
window.location.hash = hash;
});
} // End if
});
})
</script>

</body>
</html>

