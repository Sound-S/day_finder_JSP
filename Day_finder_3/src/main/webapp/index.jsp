<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Day Finder</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

<style>
body
{
	background-color:#E4E4E4;
	font-family: Verdana;
}
</style>

</head>
<body >

<div class="container-sm d-flex justify-content-center">
 <div class="container-sm col-12 col-md-6  bg-white mb-4  " style="box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);background-attacment: fixed;  background-position: center; margin-top:100px; border-radius:10px;">
    
    <!-- Day finding Heading -->
    <div class="container d-flex justify-content-center Login_title mt-5">
        <h4 class="text-primary">Day finding</h4>
        </div>

        <div class="ps-5 pe-5">
       
    <form action="day" method="post">
    
        
        <!-- Email input -->
        <div class="form-outline mb-4">
        <label class="form-label" for="form2Example1">Date<span style="color:red;font-size: 18px;">*</span></label>
          <input type="number" id="form2Example1" class="form-control" name="day" value="${Date }" placeholder="Enter Date" required/>
          
        </div>
        
        
           <!-- Select Month --> 
        <div class="form-outline mb-4">
          <label class="form-label" for="form2Example1">Month<span style="color:red;font-size: 18px;">*</span></label>
          <select class="form-select" aria-label="Default select example" name="month" required>
                            <option selected value="${Month }">--Select--${Month }</option>
							<option value="1">January</option>
							<option value="2">February</option>
							<option value="3">March</option>
							<option value="4">April</option>
							<option value="5">May</option>
							<option value="6">June</option>
							<option value="7">July</option>
							<option value="8">August</option>
							<option value="9">September</option>
							<option value="10">October</option>
							<option value="11">November</option>
							<option value="12">December</option>
          </select>
						
          
        </div>
      
        <!-- Password input -->
        <div class="form-outline mb-4">
         <label class="form-label" for="form2Example2">Year<span style="color:red;font-size: 18px;">*</span></label>
          <input type="number"  class="form-control" id="myInput" name="year" placeholder="Enter Year" value="${Year }" required/>
          </div>
      
      
        <!-- 2 column grid layout for inline styling -->
        <div class="row mb-4">
          
          
          <div class="col">
            <!-- Error_Message_Login -->
            <h6 class="text-success">${Day }</h6>
            <h6 class="text-success">${pass_error_msg }</h6>
          </div>
        </div>
      
        <!-- Submit button -->
        <div class="container d-flex justify-content-center">
        <input type="submit" value="Find" class="btn btn-primary btn-block mb-4 w-50">
        
        </div>
      </form>
      </div>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>


</body>
</html>