<!DOCTYPE html>
<html>
<head>
<title> Login Page</title>
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

.form-signin {
  max-width: 380px;
  padding: 15px 35px 45px;
  margin: 0 auto;
  background-color: #fff;
  border: 1px solid rgba(0,0,0,0.1);  

  .form-signin-heading,
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
    <form class="form-signin" action="login" method="post">       
      <h2 class="form-signin-heading">Please login</h2>
      <input type="text" class="form-control" name="email" placeholder="Email Address" required="required"/>
      <input type="password" class="form-control" name="password" placeholder="Password" required="required"/>          
      <button class="btn btn-outline-primary" type="submit">Login</button>
      <br>
      <br>
      <h6>Create Account?</h6>
      <a href="signup.jsp">Sign up</a>  
    </form>
    
  </div>

</body>
</html>