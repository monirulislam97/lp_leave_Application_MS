<%-- 
    Document   : leave_applications
    Created on : Feb 5, 2022, 7:25:52 PM
    Author     : Monir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <table class="table table-dark">
                <thead>
                    <tr>
                        <th scope="col">Application ID</th>
                        <th scope="col">Staff Name</th>
                        <th scope="col">Start date</th>
                        <th scope="col">End date</th>
                        <th scope="col">Days</th>
                        <th scope="col">Reason</th>
                        <th scope="col">Status</th>
                    </tr>
                </thead>
                
                <tbody>
                    
                    <tr>
                        <td>${newapplication.id}</td>
                        <td>${newapplication.name}</td>
                        <td>${newapplication.days}</td>
                        
                        
                    </tr>
                    
                </tbody
         </table>
    </body>
</html>
