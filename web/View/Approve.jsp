<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

    <head>
        <title>Approving</title>
        <link rel="stylesheet" href="./css/table_report.css" type="text/css" />
        <link rel="stylesheet" href="./View/css/table_report.css" type="text/css" />
    <head>


    <body>

        <h1>Approve/Decline Leave Application</h1>

        <div class="content-box">
            <table width="600px" border="1" cellspacing="0" cellpadding="3">

                <!-- Print table heading -->
                <tr>
                    <th align="center"><strong>Application ID</strong></th>  
                    <th align="center"><strong>Start Date</strong></th>
                    <th align="center"><strong>End Date</strong></th>
                    <th align="center"><strong>Number of Days</strong></th>
                    <th align="center"><strong>Reason</strong></th>
                    <th align="center"><strong>Status</strong></th>
                </tr>



                <c:forEach items="${NewAppList}" var="p1"   step="1">      


                    <tr>
                        <td>${p1.getApplicationId()}</td>
                        <td>${p1.getSdate()}</td>
                        <td>${p1.getEdate()}</td>
                        <td>${p1.getDays()}</td>
                        <td>${p1.getReason()}</td>
                        <td>${p1.getStatus()}</td>
                    </tr>

                </c:forEach>


            </table>
            <br>




            <form name="form2" method="post" action="./aproval">
                <table class="center" border="0" cellspacing="5" cellpadding="0">

                    <tr>
                        <th class="ID" align="center"><strong>Application ID</strong></th>  
                        <th align="center">&nbsp;</td>
                        <th align="center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center"><input name="id" type="text" id="id"  required=""></td>
                    <input name="datatype" type="hidden" id="datatype" value="delete">
                    <td align="center">   <input type="submit" name="Approval" value="Approve"></td>
                    <td><input type="submit" name="Approval" value="Decline"></td>
                    </tr>
                </table>

            </form>  



        </form>

        <button onclick="window.location.href = 'View/manager_main.jsp'">Main Page</button>

</body>

</html>

