<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup page</title>
<%@include file="allcomponent/allcss.jsp" %>

<style>
@import "bourbon";

body {
	background: #eee !important;	
}

.wrapper {	
	margin-top: 80px;
  margin-bottom: 80px;
}

.form-signup {
  max-width: 380px;
  padding: 15px 35px 45px;
  margin: 0 auto;
  background-color: #fff;
  border: 1px solid rgba(0,0,0,0.1);  

  .form-signup-heading,
	.checkbox {
	  margin-bottom: 30px;
	}

	.checkbox {
	  font-weight: normal;
	}

	.form-control {
	  position: relative;
	  font-size: 16px;
	  height: auto;
	  padding: 10px;
		@include box-sizing(border-box);

		&:focus {
		  z-index: 2;
		}
	}

	input[type="text"] {
	  margin-bottom: -1px;
	  border-bottom-left-radius: 0;
	  border-bottom-right-radius: 0;
	}

	input[type="password"] {
	  margin-bottom: 20px;
	  border-top-left-radius: 0;
	  border-top-right-radius: 0;
	}
}

</style>

</head>
<body>
		<div class="wrapper">
    <form class="form-signup">       
      <h2 class="form-signup-heading">Sign Up</h2>
      <input type="text" class="form-control mb-3" name="username" placeholder="Enter Name" required="required">
      <input type="text" class="form-control mb-3" name="qualification" placeholder="Qualification" required="required">
      <input type="text" class="form-control mb-3" name="passout_year" placeholder="Passout Year" required="required">
      <textarea class="form-control mb-3" name="skills" placeholder="Enter your skills" required="required"></textarea>
      <input type="password" class="form-control mb-3" name="password" placeholder="Password" required="required"/>      
      <button class="btn btn-outline-primary" type="submit">Register</button>
      <br>
      <br>
      <h6>Already have an account?</h6>
      <a href="login.jsp">Login</a>  
    </form>
    
  </div>
</body>
</html>