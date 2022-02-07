<!Doctype HTML>
<html>

    <head>
        <title>Manager Main</title>
        <link rel="stylesheet" href="./css/manager_main.css" type="text/css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>


    <body>

        <div id="mySidenav" class="sidenav">
            <p class="level">Manager</p>
            <a href="#" class="icon-a"><i class="fa fa-dashboard icons"></i> &nbsp;&nbsp;Dashboard</a>
            <a href="update_info_form.jsp" class="icon-a"><i class="fa fa-user icons"></i> &nbsp;&nbsp;Edit Profile</a>
            <a href="../manage" class="icon-a"><i class="fa fa-edit"></i> &nbsp;&nbsp; View Applications</a>
            <a href="../allapplications?datatype=''" class="icon-a"><i class="fa fa-file"></i> &nbsp;&nbsp; View Report</a>
            <a href="search_form.jsp" class="icon-a"><i class="fa fa-search"></i> &nbsp;&nbsp;Search A Staff's Records</a>
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
            <div class="col-div-8">
                <div class="box-8">
                    <div class="content-box">
                        <p>Staff of The Month <span>See All</span></p>
                        <br />
                        <table>
                            <tr>
                                <th>Name</th>
                                <th>Position</th>
                                <th>Country</th>
                            </tr>
                            <tr>
                                <td>Chad</td>
                                <td>Marketing Coordinator</td>
                                <td>Germany</td>
                            </tr>
                            <tr>
                                <td>Cindy</td>
                                <td>President of Sales</td>
                                <td>Mexico</td>
                            </tr>
                            <tr>
                                <td>Roland Mendel</td>
                                <td>Web Designer</td>
                                <td>Austria</td>
                            </tr>
                            <tr>
                                <td>Helen Bennett</td>
                                <td>Project Manager</td>
                                <td>UK</td>
                            </tr>


                        </table>

                    </div>
                </div>
            </div>
            <div class="col-div-4">
                <div class="box-4">
                    <div class="content-box">
                        <p>Total Sales <span>See All</span></p>
                    </div>
                    <div class="col-div-3">
                        <div class="box">
                            <p>78<br /><span>Projects</span></p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</div>
</body>

</html>