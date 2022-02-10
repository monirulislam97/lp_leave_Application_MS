
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

    <head>
        <title>History</title>
        <link rel="stylesheet" href="./View/css/table_report.css" type="text/css" />

    </head>

    <body>


        <h1>All Applications </h1>


       
        <br>


        <div class="content-box">
        <table width="600px" border="1" cellspacing="0" cellpadding="3">

            <!-- Print table heading -->
            <tr>
               
                <th align="center"><strong>Name</strong></th> 
                <th align="center"><strong>Start Date</strong></th>
                <th align="center"><strong>End Date</strong></th>
                <th align="center"><strong>Number of Days</strong></th>
                <th align="center"><strong>Reason</strong></th>
                <th align="center"><strong>Status</strong></th>
            </tr>



            <c:forEach items="${NewAppList}" var="p1"   step="1">      

               
                <tr> 
                  
                    <td>${p1.getName()}</td>
                    <td>${p1.getSdate()}</td>
                    <td>${p1.getEdate()}</td>
                    <td>${p1.getDays()}</td>
                    <td>${p1.getReason()}</td>
                    <td>${p1.getStatus()}</td>
                 </tr>
                 
            </c:forEach>
                 
                   <c:forEach items="${PreAppList}" var="p2"   step="1">      

              
                <tr>
                    
                    <td>${p2.getName()}</td>
                    <td>${p2.getSdate()}</td>
                    <td>${p2.getEdate()}</td>
                    <td>${p2.getDays()}</td>
                    <td>${p2.getReason()}</td>
                    <td>${p2.getStatus()}</td>
                 </tr>
                
            </c:forEach>


        </table>
        <br>
        <br>
        <c:if test="${user.level==1}" >
        <button onclick="window.location.href = 'View/admin_main.jsp'">Main Page</button>
        </c:if>
        
        <c:if test="${user.level==2}" >
        <button onclick="window.location.href = 'View/manager_main.jsp'">Main Page</button>
        </c:if>
        
        
        </div>
    </body>

</html>