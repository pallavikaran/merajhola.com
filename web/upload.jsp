<%-- 
    Document   : upload
    Created on : Feb 24, 2013, 2:40:58 PM
    Author     : Pallavi
--%>

<%-- 
    Document   : euploadimage
    Created on : Feb 5, 2013, 2:14:54 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% 
    String strRes = request.getParameter("icode");
           System.out.println("Response string="+strRes);
          session.setAttribute("icode", strRes);
    %>
    <form enctype="multipart/form-data" action="uploadconfirm.jsp"   
    method="POST"> 
    Select image for uploading:  
    <input type="file" name="userfile">
    <br>
    <input type="submit" value="Upload">
  </form>
</html>
