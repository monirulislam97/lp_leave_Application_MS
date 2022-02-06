<html>

    <head>
        <title>Adding New User</title>
        <link rel="stylesheet" href="./css/user_form.css" type="text/css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="./Js/user_form.js"></script>
    </head>

    <body>

        <div id="mySidenav" class="sidenav">
        <p class="level">Admin</p>
        <a href="#" class="icon-a"><i class="fa fa-dashboard icons"></i> &nbsp;&nbsp;Dashboard</a>
        <a href="user_form.jsp" class="icon-a"><i class="fa fa-users icons"></i> &nbsp;&nbsp;Add new user</a>
        <a href="../userlist" class="icon-a"><i class="fa fa-list icons"></i> &nbsp;&nbsp;Edit/Delete User </a>
        <a href="../allapplications?datatype=''" class="icon-a"><i class="fa fa-file"></i> &nbsp;&nbsp;Leave Applications Report</a>
        <a href="search_form.jsp" class="icon-a"><i class="fa fa-search" ></i> &nbsp;&nbsp;Search A Staff's Records</a>
        <a href="#" class="icon-a"><i class="fa fa-user icons"></i> &nbsp;&nbsp;Accounts</a>
        <br>
        <br>
        <a href="login.jsp" class="icon-a"><i class="fa fa-sign-out"></i> &nbsp;&nbsp;Logout</a>
    </div>

        <div id="main">

            <div class="head">
                <div class="col-div-6">
                    <span style="font-size:30px;cursor:pointer; color: white;" class="nav">&#9776; Dashboard</span>
                    <span style="font-size:30px;cursor:pointer; color: white;" class="nav2">&#9776; Dashboard</span>
                </div>

                <div class="col-div-6">
                    <div class="profile">
                        <img src="./css/images/UserPhoto.png" class="pro-img" />
                        <p>${user.username}
                            <br>
                            ${user.id}
                        </p>
                    </div>
                </div>

                <br>
                <br>
                <br>
                <br>

                <div class="clearfix"></div>
            </div>

            <div class="clearfix"></div>
            <br />

            <div class="col-div-3">
                <div class="box">
                    <p>67<br /><span>Total Applications</span></p>
                    <i class="fa fa-list box-icon"></i>
                </div>
            </div>
            <div class="col-div-3">
                <div class="box">
                    <p>30<br /><span>New Applications</span></p>
                    <i class="fa fa-list box-icon"></i>
                </div>
            </div>
            <div class="col-div-3">
                <div class="box">
                    <p>7<br /><span>Pending Approval</span></p>
                    <i class="fa fa-list box-icon"></i>
                </div>
            </div>
            <div class="col-div-3">
                <div class="box">
                    <p>50<br /><span>Approve Applications</span></p>
                    <i class="fa fa-tasks box-icon"></i>
                </div>
            </div>
            <div class="clearfix"></div>
            <br /><br />

            <h1>ADD USER</h1>

            <form name="add_user_form" method="post" action="../add_user" onsubmit="return checkvalidation()">
                <table border="0">
                    <tr>
                        <td>User's Username:</td>
                        <td><INPUT type="text" name="username" size="50"></td>
                    </tr>
                    <tr>
                        <td>User's ID:</td>
                        <td><INPUT type="text" name="id" size="50"></td>
                    </tr>
                    <tr>
                        <td>User's password:</td>
                        <td><INPUT type="text" name="password" size="50"></td>
                    </tr>
                    <tr>
                        <td>User's Level:</td>
                        <td><input type="" name="level" size="50"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="center"><br /><input type="submit" class="add" name="button1" value="Add"></td>
                    </tr>
                </table>
            </form>
    </body>

</html>