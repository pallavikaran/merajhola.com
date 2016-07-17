<%-- 
    Document   : editshopsave
    Created on : Feb 23, 2013, 5:21:16 PM
    Author     : Pallavi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
     <jsp:useBean  id="shopMaster" class="BLC.ShopMaster" scope="session"/>
        <jsp:setProperty name="shopMaster" property="*"/>
        <%! String nextPage; %>
        <%
        
         

              if (!shopMaster.updatshopData())
              {
               nextPage= "editshopdata.jsp?req="+"Data updation operation failed,Please try again";
          
             }
            else 
            {
              nextPage= "ShopMaster.jsp?req="+"Data updated Successfully.";
            }
          
        
        %>
        <jsp:forward page="<%= nextPage %>" />
       
</html>
