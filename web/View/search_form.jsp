

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

    <button onclick="window.location.href = 'admin_main.jsp'">Main Page</button>
</body>

</html>