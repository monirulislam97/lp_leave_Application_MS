<!DOCTYPE html>

<!--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>-->

<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8" />
        <title>Staff Main</title>
        <link rel="stylesheet" href="./css/staff_main1.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css"
            />
    </head>

    <body>
        <input type="checkbox" id="check" />
        <!--header area start-->
        <header>
            <label for="check">
                <i class="fas fa-bars" id="sidebar_btn"></i>
            </label>
            <div class="left_area">
                <h3>Staff <span>Dashboard</span></h3>
            </div>
        </header>

        
        
        <!--sidebar start-->
        <div class="sidebar">
            <center>
                <img src="./css/images/user.png" class="profile_image" alt="">
                <h4>${user.username} </h4>
            </center>
            <a href="update_info_form.jsp"><i class="fas fa-user"></i><span>Edit Profile</span></a>
            <a href="leave_form.jsp"><i class="fa fa-th"></i><span>Leave Form</span></a>
            <a href="<c:url value='../application_status' />  "><i class="fas fa-eye"></i><span>Check Application Status</span></a>
            <a href="Leave_history.php"><i class="fas fa-copy"></i><span>Result History</span></a>
            <a href="#"><i class="fas fa-list"></i><span>Work List</span></a>
            <a href="#"><i class="fas fa-sliders-h"></i><span>Settings</span></a>
            <a href="logout.php" class="icon-a"><i class="fas fa-sign-out-alt"></i><span> Logout</span></a>
        </div>
        <!--sidebar end-->
        
        
        
        
        

        <div class="content"></div>

        <div class="nature">
            <h1>Like Nature Be Creative</h1>
            <p>
                Findings from this study show that nature does indeed have the capacity
                to enhance creativity. This study explains how nature has the ability to
                evoke the creative way of thinking by making us more curious, able to
                get new ideas as well as flexible in our way of thinking.
            </p>

            <p>
                Findings from this study show that nature does indeed have the capacity
                to enhance creativity. This study explains how nature has the ability to
                evoke the creative way of thinking by making us more curious, able to
                get new ideas as well as flexible in our way of thinking.
            </p>
            <button onclick="window.location.href = 'https://positivepsychologynews.com/news/cordele-glass/2020012440097';" >
                More Info
            </button>
        </div>
    </body>
</html>
