<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

    <head>
        <title>Updating User Data</title>
        <link rel="stylesheet" href="./css/table_report.css" type="text/css" />



    </head>

    <body>

        <h1>Update User Data Form</h1>
        <br>
        <br>



        <form name="form1" method="post" action="../update_info">
            <table class="center" border="0" cellspacing="5" cellpadding="0">
            
                <tr>
                    <th align="center">&nbsp;</td>
                    <th class="Username" align="center"><strong>Username</strong></th>
                    <th class="password" align="center"><strong>Password</strong></th>
                    <th class="level" align="center"><strong>Level</strong></th>
                    <th align="center"><input name="datatype" type="hidden" id="datatype" value="update"> 
                        <input name="level" type="hidden" id="level" value="${user.level}"></th>
                </tr>
                <tr>
                    <td align="center"><input name="id" type="hidden" id="id" value="${user.id}"></td>
                    <td align="center"><input name="username" type="text" id="username" size="50" value="${user.username}"></td>
                    <td align="center"><input name="password" type="text" id="password" size="13" value="${user.password}"></td>
                  <c:if test="${user.level==3}">
                  <td align="center"><input name="level" type="text" id="level" size="1" value="${user.level}" readonly></td>
                   </c:if>
                    <c:if test="${user.level!=3}">
                    <td align="center"><input name="level" type="text" id="level" size="1" value="${user.level}"></td>
                   </c:if>
                    <td align="center"><input type="submit" id="update" name="Submit" value="Update"></td>
                </tr>
            </table>
            <br>
            <br>
            <br>
        </form>
                  
                  <c:if test="${user.level==3}">
                 <button id="p_page" onclick="window.location.href = 'staff_main.jsp';">Main Page</button>
                   </c:if>
                    <c:if test="${user.level==1}">
                   <button id="p_page" onclick="window.location.href = 'admin_main.jsp';">Main Page</button>
                   </c:if>
                   <c:if test="${user.level==2}">
                   <button id="p_page" onclick="window.location.href = 'manager_main.jsp';">Main Page</button>
                   </c:if>
      
    </body>

</html>

