<%-- 
    Document   : item_shop_link
    Created on : Feb 17, 2013, 9:34:18 AM
    Author     : Pallavi
--%>
<%@ page import="java.util.ArrayList" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        

        <title>Shop Master</title>
    </head>
    
    
     <jsp:useBean  id="itemShopLink" class="BLC.ItemShopLink" scope="session"/>
      <jsp:setProperty name="itemShopLink" property="*"/>
    
    <body>
        <h1>Items available in the shops </h1>
        <hr> <%
           String strRes = request.getParameter("req");
           
           if( strRes != null)
           { %>
           
           <p align ="center"><% out.print(strRes); %> </p>
               
         <%  } %>
         
         
        
        
         <form method="post" name="form" action="itemShopLinkSave.jsp">
        
        <table width ="40%" align ="center">
           
                <thead>
                    <tr>
                        <th>Select the followings:</th>
                        <th></th>
                       
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Shop code</td>
                        <td><select name="shopno">
                                
                               <%
                              
                              ArrayList objTempList = new ArrayList();
                              objTempList=itemShopLink.retriveShopData();
                              
                                for (int rc=0;rc<objTempList.size(); rc++)
                               {
                                String[] shopdata =new String[1];
                                shopdata=objTempList.get(rc).toString().split(",", 2);
     
     %>
     <option value="<%= shopdata[0] %>"><%=  shopdata[1] %></option> 
                              <% }
                               
                               %>
                              
                                
                            </select></td>
                        
                    </tr>
                    <tr>
                        <td>Item Name</td>
                        <td><select name="itemno">
                                <%
                              
                              ArrayList objTempLi = new ArrayList();
                              objTempLi=itemShopLink.retriveItemData();
                              
                                for (int r=0;r<objTempLi.size(); r++)
                               {    String[] itemdata= new String[2];
                                    itemdata=objTempLi.get(r).toString().split(",", 2);
     
                                %>
                                
                                {
                                <option value="<%= itemdata[0] %>"><%=  itemdata[1] %></option> 
                              <% }
                               
                               %>
                            </select></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save" name="submit" /></td>
                        <td><input type ="reset" id ="re" name="Reset" ></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

         </form>
         
    </body>
</html>