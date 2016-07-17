<%-- 
    Document   : deleteshopdata
    Created on : Feb 24, 2013, 2:14:47 PM
    Author     : Pallavi
--%>

<%@ page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop Master</title>
        <jsp:useBean  id="shopMaster" class="BLC.ShopMaster" scope="session"/>
         <jsp:setProperty name="shopMaster" property="*"/>
    </head>
         <script language="JavaScript" type="text/JavaScript">

function checkForm(thisform)

{
if (confirm('Do you wish to delete this record?'))
    {
        

     thisform.submit();
 }
}

</script>

    <body>
        <h1>Shop Master </h1>
        <hr> <%
           String strRes = request.getParameter("req");
           
           if( strRes != null)
           { %>
           
           <p align ="center"><% out.print(strRes); %> </p>
               
         <%  } 
          
           String strShopno = request.getParameter("icode");
           String[] editshopdata =new String[7];  
              
           if (strShopno != null)
                         {
                             

                                System.out.println("Enter:"+ strShopno); 
                            

                              ArrayList shopTempList = new ArrayList();
                             shopTempList=shopMaster.editShopData(strShopno);
                             System.out.println("shop size="+shopTempList.size());
                             
                               
                              editshopdata=shopTempList.get(0).toString().split(",", 8);
                                System.out.println(" Array Value");
                                                               
                               
           }    
  
  
  
  
  %>
   
        <form method="post" name="form" action="deleteshop.jsp">
        
            
            
        <table width ="60%" align ="center">
            
            <tr>
                <td>
                Shop No
                </td>
                <td>
                    <input type ="text" id ="shopno" name ="shopno" value=" <%=editshopdata[1].toString() %>" > 
            </td>
            </tr>
            <tr>
            <td>
                Shop Name
                
            </td>
          
            <td>
            <input type ="text" id ="shopname" name ="shopname" value=" <%=editshopdata[2].toString() %>">
            
            </td>
            </tr>            
            
           <tr>
                
                <td>
                    Location     </td>
            <td>
                 <input type ="text" id ="shoplocation" name="shoplocation" value=" <%=editshopdata[3].toString() %>">
                
            </td>
            
            </tr>            
           <tr>
              
               <td>
               Description
               </td>
                <td>
                     <input type ="text" id ="shopdesc" name="shopdesc" value=" <%=editshopdata[4].toString() %>">
            </td>
            
           </tr>
           <tr>
            <td>
                Country
                
            </td>
            <td>
          <input type ="text" id ="shopcountry" name="shopcountry" value=" <%=editshopdata[5].toString() %>" >
             
               
               
               </td></tr>
           
           
            <tr>
           
                <td>
                    State
            </td>
            <td>
                 <input type ="text" id ="shopstate" name="shopstate" value=" <%=editshopdata[6].toString() %>" >
                
            </td>
            
            </tr>            
            
           
           <tr>
           
                <td>
                    District
            </td>
            <td>
                 <input type ="text" id ="shopdist" name="shopdist" value=" <%=editshopdata[7].toString() %>" >
                
            </td>
            
             <td>
                 <input type ="hidden" id ="shopid" name="shopid" value=" <%=editshopdata[0].toString() %>" >
                
            </td>

            </tr>            
            
         <tr>
           
                <td>
                    <input type ="button" name="delete" value="delete" onclick="return checkForm(this.form)">
            </td>
            
            
            </tr>            
           
            
        </table>
            
             
         </form>
    </body>
</html>


