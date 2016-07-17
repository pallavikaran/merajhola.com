<%-- 
    Document   : editblogsave
    Created on : Mar 2, 2013, 8:35:52 AM
    Author     : Pallavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
     <jsp:useBean  id="blogMaster" class="BLC.BlogMaster" scope="session"/>
        <jsp:setProperty name="blogMaster" property="*"/>
        <%! String nextPage; %>
        <%
        
         

              if (!blogMaster.updateblogData())
              {
               nextPage= "editblogdata.jsp?req="+"Data updation operation failed,Please try again";
          
             }
            else 
            {
              nextPage= "BlogMaster.jsp?req="+"Data updated Successfully.";
            }
          
        
        %>
        <jsp:forward page="<%= nextPage %>" />
       
</html>
