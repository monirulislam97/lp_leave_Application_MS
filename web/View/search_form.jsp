
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>Search for Staff Leave details</title>
    <link rel="stylesheet" href="./css/table_report.css" type="text/css" />
</head>
<script src="./Js/search_form.js"></script>

<body>

    <h1>Search for Staff Leave details</h1><br /><br />

    <form name="form_search" method="get" action="../allapplications" onsubmit="return validation()">

        <table>
            <tr>
                <td>Type Staff ID :</td>
                 <input name="datatype" type="hidden" id="datatype" value="search">
                <td><input type="text" name="staffID" size="20"></td>
                <td><input type="submit" name="button1" value="Search"></td>
            </tr>
        </table>

    </form>
    <br>

    
                    <c:if test="${user.level==1}">
                   <button id="p_page" onclick="window.location.href = 'admin_main.jsp';">Main Page</button>
                   </c:if>
                   <c:if test="${user.level==2}">
                   <button id="p_page" onclick="window.location.href = 'manager_main.jsp';">Main Page</button>
                   </c:if>
</body>

</html>