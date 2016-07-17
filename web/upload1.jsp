<%-- 
    Document   : upload1
    Created on : Mar 6, 2013, 7:41:15 AM
    Author     : Pallavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% 
    String strRes = request.getParameter("icode");
           System.out.println("Response string="+strRes);
          session.setAttribute("icode", strRes);
    %>
    <form enctype="multipart/form-data" action="uploadconfirm1.jsp"   
    method="POST"> 
    Select image for uploading:  
    <input type="file" name="userfile">
    <br>
    <input type="submit" value="Upload">
  </form>
</html>
