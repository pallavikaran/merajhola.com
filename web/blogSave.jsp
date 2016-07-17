<%-- 
    Document   : blogSave
    Created on : Mar 1, 2013, 9:32:01 PM
    Author     : Pallavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
     <jsp:useBean  id="blogMaster" class="BLC.BlogMaster" scope="session"/>
        <jsp:setProperty name="blogMaster" property="*"/>
        <%! String nextPage; %>
        <%
        
         

              if (!blogMaster.saveBlogData())
              {
               nextPage= "BlogMaster.jsp?req="+"Data save operation failed,Please try again";
          
             }
            else 
            {
              nextPage= "BlogMaster.jsp?req="+"Data Saved Successfully.";
            }
          
        
        %>
        <jsp:forward page="<%= nextPage %>" />
       
</html>