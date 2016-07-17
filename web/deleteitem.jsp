<%-- 
    Document   : deleteitem
    Created on : Feb 26, 2013, 6:48:00 PM
    Author     : Pallavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
     <jsp:useBean  id="itemMaster" class="BLC.ItemMaster" scope="session"/>
        <jsp:setProperty name="itemMaster" property="*"/>
        <%! String nextPage; %>
        <%
        
         

              if (!itemMaster.deleteitemData())
              {
               nextPage= "ItemMaster.jsp?req="+"Data deletion operation failed,Please try again";
          
             }
            else 
            {
              nextPage= "ItemMaster.jsp?req="+"Data deleted Successfully.";
            }
          
        
        %>
        <jsp:forward page="<%= nextPage %>" />
       
</html>
