<%-- 
    Document   : deleteblog
    Created on : Mar 2, 2013, 8:40:53 AM
    Author     : Pallavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
     <jsp:useBean  id="blogMaster" class="BLC.BlogMaster" scope="session"/>
        <jsp:setProperty name="blogMaster" property="*"/>
        <%! String nextPage; %>
        <%
        
         

              if (!blogMaster.deleteblogData())
              {
               nextPage= "deleteblogdata.jsp?req="+"Data deletion operation failed,Please try again";
          
             }
            else 
            {
              nextPage= "BlogMaster.jsp?req="+"Data deleted Successfully.";
            }
          
        
        %>
        <jsp:forward page="<%= nextPage %>" />
       
</html>
