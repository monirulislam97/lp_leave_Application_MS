
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
            <br /><p class="head">Staff Registration</p>
            <br />
            <form method="post" class="form" name="login_form" action="../add_user" onsubmit="return validateLoginForm()"><br />
                <p>Username: <input type="text" size="30" placeholder="username" name="username" /></p>
                <p>User's ID:  <input type="text" placeholder="id" name="id" size="30"/></p>
                <p>Password: <input type="password" size="30" placeholder="password" name="password" id="myInput" /></p>
                 <input type="hidden" name="level" value="register">
               
                <input type="checkbox" onclick="myFunction()"> Show Password 
                <br />
                <p><input type="submit" class="btn" value="Register" /></p><br />
                
                <a href="login.jsp" >Log in Page</a>
            </form>
            
        </div>
    </body>

</html>