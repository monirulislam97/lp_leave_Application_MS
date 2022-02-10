<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

    <head>
        <meta charset="utf-8">
        <title>Leave Application</title>
        <link rel="stylesheet" href="./css/leave_form.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
        <script src="./Js/leave_form.js"></script>

    </head>

    <body>

        <input type="checkbox" id="check">
        <!--header area start-->
        <header>
            <label for="check">
                <i class="fas fa-bars" id="sidebar_btn"></i>
            </label>
            <div class="left_area">
                <h3>Application <span>Page</span></h3>
            </div>
            <div class="right_area">

                <button class="main_btn" onclick="window.location.href = 'staff_main.jsp';"><i class="fas fa-home"></i> Main Page</button>

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
           <a href="<c:url value='../application_history' />  "><i class="fas fa-copy"></i><span>Result History</span></a>
            <a href="#"><i class="fas fa-list"></i><span>Work List</span></a>
            <a href="#"><i class="fas fa-sliders-h"></i><span>Settings</span></a>
            <a href="login.jsp" class="icon-a"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </div>
        <!--sidebar end-->


        <div class="content"></div>


        <div class="leaveform">

            <form name="leave_form" action="../add_NewApplication" method="post" onsubmit="return validateForm()">


                <h2>Application Form </h2>

                <table>

                    <tr>
                        <td> Staff Username : </td>
                        <td> ${user.username} </td>
                    </tr>


                    <tr>
                        <td> Staff ID : </td>
                        <td> ${user.id}</td>
                        <td> <input name="id" type="hidden" id="id" value="${user.id}"></td>

                    </tr>

                    <tr>
                        <td> Staff Full Name : </td>
                        <td> <input type="text" id="name" name="name" size="30" value="" /> </td>
                    </tr>

                    <tr>
                        <td> Start Date: </td>
                        <td>
                            <input type="date" class="textbox" id="start" name="start_date" value="" onchange="cal()" />
                        </td>
                    </tr>

                    <tr>
                        <td> End Date: </td>
                        <td>
                            <input type="date" class="textbox" id="end" name="end_date" value="" onchange="cal()" />
                        </td>
                    </tr>


                    <tr>
                        <td> Number of days: </td>
                        <td>
                            <input type="text" class="textbox" id="numdays2" name="numdays" value="" />
                        </td>
                    </tr>

                    <tr>
                        <td> <input type="hidden" name="status" value="New Application"/></td>
                    </tr>


                    <tr>
                        <td> Reason: </td>
                        <td> <textarea name="reason" rows="8" cols="50"> </textarea> </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="center"><BR><input type="submit" class="button1" name="button1" value="Submit"></td>
                    </tr>

                </table>
            </form>

        </div>
    </body>

</html>