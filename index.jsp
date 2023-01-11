<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <style>
    body {
        text-align: center;
        color: #143d59;
        background-color: #f4b41a;
        font-family: 'Lobster', cursive;
    }
    form {
        width: 30%;
        margin: auto;
        border: 3px solid #143d59;
        padding: 10px;
    }
    input {
        display: block;
        margin: 10px auto;
        font-size: 16px;
    }
  </style>
<title>Login Form</title>
</head>
<body>
  <form>
    <label for="username">Username:</label><br>
    <input type="text" id="username" name="username" maxlength="20"><br>
    <label for="password">Password:</label><br>
    <input type="password" id="password" name="password" maxlength="20"><br><br>
    <input type="button" value="Login" onclick="submitForm()">
  </form> 
  <a href="https://www.saucedemo.com/">Click me</a>
  <div id="error-messages"></div>
  <script>
    function submitForm() {
      // Get the values of the username and password fields
      var username = document.getElementById("username").value;
      var password = document.getElementById("password").value;

      // Clear any previous error messages
      document.getElementById("error-messages").innerHTML = "";

      // Check if the username or password is empty
      if (username == "") {
        // Display an error message
        document.getElementById("error-messages").innerHTML += "<p style='color:red'>Username cannot be empty</p>";
      }
      if (password == "") {
        // Display an error message
        document.getElementById("error-messages").innerHTML += "<p style='color:red'>Password cannot be empty</p>";
      }
	  if(username != "DevOps@final.com" && password != "bestteam" && username != "" && password != "") {
  document.getElementById("error-messages").innerHTML = "<p style='color:red'>Wrong information!</p>";
}
	  if (username == "DevOps@final.com" && password == "bestteam") {
		// Clear the form
		document.getElementById("username").value = "";
		document.getElementById("password").value = "";
		// Show the headline
		document.getElementById("error-messages").innerHTML = "<h1>DevOps final project</h1>";
		}
    }
  </script>
</body>
</html>
