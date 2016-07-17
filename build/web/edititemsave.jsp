
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
     <jsp:useBean  id="itemMaster" class="BLC.ItemMaster" scope="session"/>
        <jsp:setProperty name="itemMaster" property="*"/>
        <%! String nextPage; %>
        <%
        
        

              if (!itemMaster.updateitemData())
              {
               nextPage= "edititemdata.jsp?req="+"Data updation operation failed,Please try again";
          
             }
            else 
            {
              nextPage= "ItemMaster.jsp?req="+"Data updated Successfully.";
            }
          
        
        %>
        <jsp:forward page="<%= nextPage %>" />
       
</html>
