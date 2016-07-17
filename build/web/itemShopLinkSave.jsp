<%-- 
    Document   : item_shopSave
    Created on : Feb 17, 2013, 9:40:25 AM
    Author     : Pallavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
     <jsp:useBean  id="itemShopLink" class="BLC.ItemShopLink" scope="session"/>
     
        <jsp:setProperty name="itemShopLink" property="*"/>
        <%! String nextPage; %>
        <%
        
         if (!itemShopLink.checkLinkData())
            { 

              if (!itemShopLink.saveItemShopData())
              {
               nextPage= "itemShopLink.jsp?req="+"Data save operation failed,Please try again";
                        
             } 
              
                               
              
            else 
            {
              nextPage= "itemShopLink.jsp?req="+"Data Saved Successfully.";
            }
          }
         else
             
             {
                nextPage= "itemShopLink.jsp?req="+"Shop and item already linked."; 
             }
        
        %>
        <jsp:forward page="<%= nextPage %>" />
       
</html>

