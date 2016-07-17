<%-- 
    Document   : itemSave
    Created on : Feb 12, 2013, 8:03:43 AM
    Author     : Pallavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
     <jsp:useBean  id="itemMaster" class="BLC.ItemMaster" scope="session"/>
        <jsp:setProperty name="itemMaster" property="*"/>
        <%! String nextPage; %>
        <%
        
         

              if (!itemMaster.saveItemData())
              {
               nextPage= "ItemMaster.jsp?req="+"Data save operation failed,Please try again";
          
             }
            else 
            {
              nextPage= "ItemMaster.jsp?req="+"Data Saved Successfully.";
            }
          
        
        %>
        <jsp:forward page="<%= nextPage %>" />
       
</html>