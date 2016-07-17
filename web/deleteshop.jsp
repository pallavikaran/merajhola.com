<%-- 
    Document   : deleteshop
    Created on : Feb 24, 2013, 2:19:44 PM
    Author     : Pallavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
     <jsp:useBean  id="shopMaster" class="BLC.ShopMaster" scope="session"/>
        <jsp:setProperty name="shopMaster" property="*"/>
        <%! String nextPage; %>
        <%
        
         

              if (!shopMaster.deleteshopData())
              {
               nextPage= "deleteshopdata.jsp?req="+"Data deletion operation failed,Please try again";
          
             }
            else 
            {
              nextPage= "ShopMaster.jsp?req="+"Data deleted Successfully.";
            }
          
        
        %>
        <jsp:forward page="<%= nextPage %>" />
       
</html>
