<%-- 
    Document   : blogDisplay
    Created on : Mar 11, 2013, 3:00:04 PM
    Author     : Pallavi
--%>

<%@ page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:directive.include file="selecttrial.jsp"> </jsp:directive.include>
        <title> Display</title>
          <jsp:useBean  id="blogMaster" class="BLC.BlogMaster" scope="session"/>
         <jsp:setProperty name="blogMaster" property="*"/>
    </head>
     
    <body>

        <%
           String strReq1 = request.getParameter("req1");
           String strReq2 = request.getParameter("req2");
           
           if( strReq1 != null)
           { %>
           
           <p align ="center"><% out.print(strReq1); %> </p>
               
         <%  } %>
         <table align="center">
       <%
                              
                              ArrayList objTempList = new ArrayList();
                              objTempList=blogMaster.displayBlogData(strReq1, Integer.parseInt(strReq2));
                              System.out.println("req:"+strReq2);
                              int tdCount=0;
                              int trCount =0;
                              %>
                              
                              <tr>
                              <%
                             for (int rc=0;rc<objTempList.size(); rc++)
                               {%>
                               
                                   <%
                                String[] blogdata =new String[4];
                                blogdata=objTempList.get(rc).toString().split(",", 5);
                                   
                               System.out.println("blog display:"+blogdata[2]);
                               System.out.println("blog display:"+blogdata[4]);                                                        
                               
                                
                                 if (trCount>0)
                                 {%>
                              <tr>
                              <% 
                                 trCount=0;
                               }%>
                                
                             
                               <td colspan="3">
                                    <% tdCount++; %>
                                 
          <%-- <a href="http://localhost:8080/emarket/blogspec.jsp?icode=<%=blogdata[0]%>"> --%> <img src ="/<%=blogdata[3] %>" height="1000" width="1000"> </a> <br>
                                       <%out.println(blogdata[2]);%>
                                    
                                    </td>
                                        
                                    <% if (tdCount==1) 
                                    {  tdCount=0;
                                       trCount++;
   
                                     %>  
                                   
                                                                
                               </tr>
                               <%}%> 
                              <%   }
                              %>
              
                
              </table>
<jsp:directive.include file="footer.jsp"> </jsp:directive.include>
    </body>
</html>
