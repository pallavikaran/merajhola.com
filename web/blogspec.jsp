<%-- 
    Document   : blogspec
    Created on : Mar 11, 2013, 2:57:57 PM
    Author     : Pallavi
--%>



<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:directive.include file="selecttrial.jsp"> </jsp:directive.include>
        <title>Blog Master</title>
         <jsp:useBean  id="blogMaster" class="BLC.BlogMaster" scope="session"/>
         <jsp:setProperty name="blogMaster" property="*"/>
         

<link rel="stylesheet" type="text/css" href="style.css" >
    <body>
      
         <h1>Current Selection</h1>
         
               <%
           String strReq1 = request.getParameter("req1");
           String strReq2 = request.getParameter("req2");
           
           if( strReq1 != null)
           { %>
           
         <%  } String strBlogid = request.getParameter("icode");
           String[] editblogdata =new String[4];  
              
           if (strBlogid != null)
                         {
                             

                                System.out.println("Enter:"+ strBlogid); 
                            

                              ArrayList blogTempList = new ArrayList();
                             blogTempList=blogMaster.editBlogData(strBlogid);
                             System.out.println("blog size="+ blogTempList.size());
                             
                               System.out.println("Blog Data="+blogTempList.get(0).toString());
                              editblogdata=blogTempList.get(0).toString().split(",",5);
                                System.out.println(" Array Value"+editblogdata[2]);
                                                               
                               
           }    
  %>
         
          <form method="post" name="form" action="editblogsave.jsp">
              <table border="0" width ="80%" align ="center">
                  <tbody>
                      <tr>
                          <td>Title</td>
                          <td> 
                              <% out.println(editblogdata[1].toString());%>
                          </td>
                      </tr>
                      
                      <tr>
                          <td>Content</td>
                          <td>
                              <textarea  name="blogcontent" rows="4" cols="20">
                                   <% out.println(editblogdata[2].toString()); %>
                              </textarea>
                                 
                          </td>
                      </tr>
                      
                      <tr>
                          
                          <td>
                              <img src ="/<%=editblogdata[4] %>" height="100" width="100">
                              <input type ="hidden" id ="blogid" name="blogid" value=" <%=editblogdata[0].toString() %> ">
                          </td>
                      </tr>
                     
                  </tbody>
              </table>        
<jsp:directive.include file="footer.jsp"> </jsp:directive.include>
          </body>
         </html>
