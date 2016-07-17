<%-- 
    Document   : emarketadmin
    Created on : Feb 3, 2013, 8:13:43 PM
    Author     : e3659
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
<jsp:directive.include file="selecttrial.jsp"> </jsp:directive.include>
    </head>
    <body>
         <h1 align ="center">Welcome to shoes administration console!</h1>
        <hr>
      <!To get the request from the admin user and catch it here >

        <%
           String strRes = request.getParameter("req");
           
           if( strRes != null)
           { %>
           
           <p align ="center"><% out.print(strRes); %> </p>
               
         <%  } %>
     
        <form method="post" name="form" action="Validateuser.jsp">  
        
        <table width ="60%" align ="center">
            
            <tr><td>User Name</td>
                <td><input type ="text"   size="20" name ="username"></td>
            </tr>
            
            <tr><td>Password</td>
                <td><input type ="password"  size="21" name ="userpwd"></td>
            </tr>
                
            <tr><td><input type ="submit" name ="login" value="login"  ></td>
                <td><input type ="reset" name ="Reset"></td>
            </tr> 
            
        </table>
     </form>
<jsp:directive.include file="footer.jsp"> </jsp:directive.include>
    </body>
</html>
