<%-- 
    Document   : shopSave
    Created on : Feb 10, 2013, 2:16:06 PM
    Author     : e3659
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
     <jsp:useBean  id="shopMaster" class="BLC.ShopMaster" scope="session"/>
        <jsp:setProperty name="shopMaster" property="*"/>
        <%! String nextPage; %>
        <%
        
         

              if (!shopMaster.saveShopData())
              {
               nextPage= "ShopMaster.jsp?req="+"Data save operation failed,Please try again";
          
             }
            else 
            {
              nextPage= "ShopMaster.jsp?req="+"Data Saved Successfully.";
            }
          
        
        %>
        <jsp:forward page="<%= nextPage %>" />
       
</html>
