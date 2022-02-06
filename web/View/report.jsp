
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

    <head>
        <title>History</title>
        <link rel="stylesheet" href="./View/css/table_report.css" type="text/css" />

    </head>

    <body>


        <h1>Check Application Status</h1>


        <!-- Start table -->
        <table>
            <tr>
                <td> Staff Username : </td>
                <td> ${user.username}</td>
            </tr>


            <tr>
                <td> Staff ID : </td>
                <td> ${user.id}</td>
            </tr>
        </table>
        <br>
        <br>


        <table width="600" border="1" cellspacing="0" cellpadding="3">

            <!-- Print table heading -->
            <tr>

                <th align="center"><strong>Start Date</strong></th>
                <th align="center"><strong>End Date</strong></th>
                <th align="center"><strong>Number of Days</strong></th>
                <th align="center"><strong>Reason</strong></th>
                <th align="center"><strong>Status</strong></th>
            </tr>



            <c:forEach items="${NewAppList}" var="p"   step="1">      

                <c:if test="${p.getId()==user.id}">
                <tr>
                    <td>${p.getSdate()}</td>
                    <td>${p.getEdate()}</td>
                    <td>${p.getDays()}</td>
                    <td>${p.getReason()}</td>
                    <td>${p.getStatus()}</td>
                 </tr>
                 </c:if>
            </c:forEach>


        </table>
        <br>
        <br>
        <button onclick="window.location.href = 'View/staff_main.jsp'">Main Page</button>
    </body>

</html>