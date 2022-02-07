
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<html>

	<head>
		<title>Staff Data</title>
		
 <link rel="stylesheet" href="./View/css/table_report.css" type="text/css" />
		<head>

		<body>

			<h1>Staff Details</h1>



				<table width="600" border="1" cellspacing="0" cellpadding="3">

					<tr>
                                                                                                        <th align="center"><strong>ID</strong></th>
						<th align="center"><strong>Staff Name</strong></th>
						<th align="center"><strong>Password</strong></th>
						<th align="center"><strong>Level</strong></th>	
					</tr>

	
                                                                                                                <c:forEach items="${UserList}" var="p"   step="1">      
   
                                                                                                                              <tr>
                                                                                                                                  <td>${p.id}</td>
                                                                                                                                  <td>${p.username}</td>
                                                                                                                                  <td>${p.password}</td>
                                                                                                                                  <td>${p.level}</td>                                                                                           
                                                                                                                               </tr>
                                                                                                                               
                                                                                                                          </c:forEach>

				</table>

			
                                
                                <h1>Edit User Data</h1>
                   <form name="form1" method="post" action="update_info">
            <table class="center" border="0" cellspacing="5" cellpadding="0">

                <tr>
                    <th class="Username" align="center"><strong>Username</strong></th>
                    <th class="Id" align="center"><strong>ID</strong></th>
                    <th class="password" align="center"><strong>Password</strong></th>
                    <th class="level" align="center"><strong>Level</strong></th>
                    <th align="center">&nbsp;</td>
                </tr>
                <tr>
                   
                    <td align="center"><input name="username" type="text" id="username" size="50" required="" ></td>
                     <td align="center"><input name="id" type="text" id="id"  required=""></td>
                    <td align="center"><input name="password" type="text" id="password" size="13" required=""></td>
                  
                    <td align="center"><input name="level" type="text" id="level" size="1" required=""></td>
                    <input name="datatype" type="hidden" id="datatype" value="edit">
                    <td align="center"><input type="submit" id="update" name="Submit" ></td>
                </tr>
            </table>
       
            
        </form>  
                                
                            <h1>Delete User </h1>
                               <form name="form2" method="post" action="update_info">
            <table class="center" border="0" cellspacing="5" cellpadding="0">

                <tr>
                    <th class="ID" align="center"><strong>ID</strong></th>  
                    <th align="center">&nbsp;</td>
                </tr>
                <tr>
                     <td align="center"><input name="id" type="text" id="id"  required=""></td>
                     <input name="datatype" type="hidden" id="datatype" value="delete">
                    <td align="center"><input type="submit" id="update" name="Submit" value="Delete"></td>
                </tr>
            </table>
           
        </form>        

         
                    
               <button onclick="window.location.href = './View/admin_main.jsp'">Main Page</button>
                                                            


        
        </body>

	</html>