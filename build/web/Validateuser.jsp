<%-- 
    Document   : Validateuser
    Created on : Feb 3, 2013, 10:32:08 PM
    Author     : e3659
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
     <jsp:useBean  id="loginManager" class="BLC.userauth" scope="application"/>
        <jsp:setProperty name="loginManager" property="*"/>
 

        
<%! String nextPage; %>
<!session.setAttribute is used to keep the user in session>

        <%
              if (!loginManager.validateUser())
              {
               nextPage= "emarketadmin.jsp?req="+"Invalid UserName or Password, Please try again.";
          
             }
            else 
            {
                  session.setAttribute("user", loginManager.getUsername());
              nextPage= "AdminMaster.jsp";
            }
          
        %>
        <jsp:forward page="<%= nextPage %>" />
       
           
