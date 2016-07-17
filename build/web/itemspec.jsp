<%-- 
    Document   : display
    Created on : Feb 24, 2013, 1:48:08 PM
    Author     : Pallavi
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:directive.include file="selecttrial.jsp"> </jsp:directive.include>
        <title>JSP Page</title>
        <jsp:useBean  id="itemMaster" class="BLC.ItemMaster" scope="session"/>
         <jsp:setProperty name="itemMaster" property="*"/>
         <jsp:useBean  id="shopMaster" class="BLC.ShopMaster" scope="session"/>
         <jsp:setProperty name="shopMaster" property="*"/>
         <link rel="stylesheet" type="text/css" href="index.css" >
    </head>
    <body>
        
        <h1>Current Selection</h1>
        <%
                String Itemid = request.getParameter("icode");
                System.out.print("Item Code:"+Itemid);
     
                 String[] edititemdata =new String[11]; 
                
                 boolean bolMale=false;
                 boolean bolFemale=false;
      
           if (Itemid != null)
                         {
                                System.out.println("Enter:"+ Itemid); 
                              ArrayList itemTempList = new ArrayList();
                              itemTempList=itemMaster.editItemData(Itemid);
                              System.out.println("Item size="+itemTempList.size());
                                System.out.println("Item Data10="+itemTempList.get(0).toString());
                              edititemdata=itemTempList.get(0).toString().split(",", 12);
                                System.out.println(" Array Value");
                                if (edititemdata[4].toString().equalsIgnoreCase("male"))
                                      {
                                       bolMale =true;
                                      }
                                else
                                     {
                                       bolFemale=true;
                                
                                    }
                                }
           //This is for Shop list dispaly                    
           
                              ArrayList shopTempList = new ArrayList();
                              shopTempList=shopMaster.getShoplist(Itemid);
                              System.out.println("Shop size="+shopTempList.size());
                                System.out.println("Item Data10="+shopTempList.get(0).toString());
                              
                                System.out.println(" Array Value");
                              
                 
                 
                 
  %>
         
          
        
        <table width ="60%" align ="center">
            <tr>
                <td>
            <table>
                <tr>
                    <td>
                             <input type ="hidden" id ="itemid" name="itemid" value=" <%=edititemdata[0].toString() %>" >
                              <img src ="/<%=edititemdata[11] %>" height="350" width="350"> 
                    </td>
                
                <tr>
            </table>
            </td>
            <td>
                <table>
                    <tr>
                  <td>
                Item Code
                </td>
                <td>
                    <% out.println(edititemdata[1].toString());%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
            <td>
                Brand
                
            </td>
            <td>
            
            <% out.println(edititemdata[5].toString());%>
            </td>
            </tr>            
            
           <tr>
                
                <td>
                    Name 
            </td>
            <td>
                 
            <% out.println(edititemdata[2].toString());%>    
            </td>
            
            </tr>            
           <tr>
              
               <td>
               Description
               </td>
                <td>
                 <% out.println(edititemdata[8].toString());%>
            </td>
            
           </tr>
           <tr>
            <td>
                Type
                
            </td>
            <td>
               <% out.println(edititemdata[3].toString());%>
            
            </td>
           </tr>
             <tr>
                <td>
                Item Colour
                </td>
                <td>
                    <% out.println(edititemdata[6].toString());%> 
            </td>
            </tr>
           <tr>
            <td>
           <tr>
               
               <td><% out.println(edititemdata[4].toString());%></td>
               </td></tr>
           
           
            <tr>
           
                <td>
                    Size
            </td>
            <td>
                 <% out.println(edititemdata[7].toString());%>
                
            </td>
            
            </tr>            
           <tr>
           
                <td>
                    price
            </td>
            <td>
                <% out.println(edititemdata[9].toString());%>
                
            </td>
           </tr>
                </table>
                </td>
                </tr>
                
        </table>
            
            
            <hr>
            <p>Shop list</p>
            <table>
                 <% for(int rcm=0;rcm<shopTempList.size();rcm++)
                   {  String[] editshopdata =new String[8];
                      System.out.println("shopdata"+shopTempList.get(0).toString());
                       editshopdata=shopTempList.get(0).toString().split(",", 8);                      
     %>
                            <tr>
                                   <% for(int rc1=0;rc1<editshopdata.length;rc1++) 
                                   { %>
                                  <td>
                        <% out.println(editshopdata[rc1]); %>
                    </td>
                    <% } %> 
                </tr>
                <% } %>
            </table>
            
            <jsp:directive.include file="footer.jsp"> </jsp:directive.include>
    </body>
</html>
