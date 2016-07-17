<%-- 
    Document   : search
    Created on : Mar 18, 2013, 8:07:15 PM
    Author     : Pallavi
--%>

<%@ page import="java.util.ArrayList" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Item Display</title>
          <jsp:useBean  id="itemMaster" class="BLC.ItemMaster" scope="session"/>
         <jsp:setProperty name="itemMaster" property="*"/>
    </head>
     <jsp:directive.include file="selecttrial.jsp"> </jsp:directive.include>
    <body>

        <%
           String strReq1 = request.getParameter("search");
           String strReq2 ="3" ;//request.getParameter("req2");
           
           if( strReq1 != null)
           { %>
           
           <p align ="center"><% out.print(strReq1); %> </p>
               
         <%  } %>
         

         <table align="center" cellspacing="2">
       <%
                              
                              ArrayList objTempList = new ArrayList();
                              objTempList=itemMaster.displayItemData(strReq1, Integer.parseInt(strReq2));
                              System.out.println("req:"+strReq2);
                              int tdCount=0;
                              int trCount =0;
                              %>
                              
                              <tr>
                              <%
                             for (int rc=0;rc<objTempList.size(); rc++)
                               {%>
                               
                                   <%
                                String[] itemdata =new String[12];
                                itemdata=objTempList.get(rc).toString().split(",", 13);
                                   
                               System.out.println("item display:"+itemdata[3]);
                               System.out.println("item display:"+itemdata[11]);                                                        
                               
                                
                                 if (trCount>0)
                                 {%>
                              <tr>
                              <% 
                                 trCount=0;
                               }%>
                                
                             
                               <td colspan="3">
                                    <% tdCount++; %>
                                 
          <a href="http://localhost:8080/emarket/itemspec.jsp?icode=<%=itemdata[0]%>"> <img src ="/<%=itemdata[11] %>" height="200" width="200"> </a> <br>
                                       <%out.println(itemdata[2]);%>
                                    
                                    </td>
                                        
                                    <% if (tdCount==4) 
                                    {  tdCount=0;
                                       trCount++;
   
                                     %>  
                                   
                                                                
                               </tr>
                               <%}%> 
                              <%   }
                              %>
              
                
              </table>
    </body>
</html>
