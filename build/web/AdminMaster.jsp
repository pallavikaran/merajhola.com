<%-- 
    Document   : AdminMaster
    Created on : Feb 3, 2013, 8:19:14 PM
    Author     : e3659
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% String strUser=session.getAttribute("user").toString(); 
          if (strUser.length()==0) {%>

  <jsp:forward page="AdminLogin.jsp" />
  <% } %>
                
    <frameset rows="10%,90%">
        <frame src="header.jsp" >
            <frameset cols="15%, 85%" noresize="noresize">
                <frame src="menu.jsp" name="menu" />
                 <frame src="welcome.jsp" name="maint"/>  
               
            </frameset>
        
    </frameset>
    
    
</html>
