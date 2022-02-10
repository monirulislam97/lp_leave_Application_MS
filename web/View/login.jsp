
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
            <form method="post" class="form" name="login_form" action="../check_login" onsubmit="return validateLoginForm()"><br />
                <p>Username: <input type="text" size="30" placeholder="username" name="username" /></p>
                <p>Password: <input type="password" size="30" placeholder="password" name="password" id="myInput" /></p>
                <input type="checkbox" onclick="myFunction()"> Show Password 
                <br />
                <p><input type="submit" class="btn" value="Login" /></p>
                <br />
                
                <a href="../register.jsp" >Register</a>
            </form>
        </div>
    </body>

</html>