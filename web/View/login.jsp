
<!--

session_start();
require('./Table/config.php');

$_SESSION["Login"] = "XXX";



echo "<script> 
document.getElementById('user').value = '$user';
document.getElementById('pass').value = '$pass'; 
</script>";

}-->

<% request.getSession().setAttribute("Login", "XXX" );     %>

<html>

<head>
	<title>Login Page</title>
	<link rel="stylesheet" href="./css/style_login.css">
	<script src="./Js/login.js"></script>
        <script src="./Js/pass.js"></script>
</head>

<body>
	<div id="container">
		<p class="head">Leave Application Management System</p>
		<br />
		<br />
		<form method="post" class="form" name="login_form" action="../check_login" onsubmit="return validateLoginForm()">
			<p>Username: <input type="text" size="30" placeholder="username" name="username" /></p>
			<p>Password: <input type="password" size="30" placeholder="password" name="password" id="myInput" /></p>
			<input type="checkbox" onclick="myFunction()"> Show Password </input>
			<br />
			<p><input type="submit" class="btn" value="Login" /></p>
		</form>
	</div>
</body>

</html>