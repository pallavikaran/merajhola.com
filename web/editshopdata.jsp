<%-- 
    Document   : editshopdata
    Created on : Feb 23, 2013, 5:07:18 PM
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

if(thisform.shopno.value=='')

{

alert("Enter Shop no.");

return false;
}
else if(thisform.shopname.value=='')

{

alert("Enter Shop name");

return false;
}
else if(thisform.shoplocation.value=='')

{

alert("Enter Shop location.");

return false;
}
else if(thisform.shopdesc.value=='')

{

alert("Enter Shop Description");

return false;
}
else if(thisform.shopcountry.value=='')

{

alert("Enter Shop Country");

return false;
}

else if(thisform.shopstate.value=='')

{

alert("Enter Shop state");

return false;
}

else if(thisform.shopdist.value=='')

{

alert("Enter shop District");

return false;
}
 else {
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
          
           String strShopid = request.getParameter("icode");
           String[] editshopdata =new String[8];  
              
           if (strShopid != null)
                         {
                             

                                System.out.println("Enter:"+ strShopid); 
                            

                              ArrayList shopTempList = new ArrayList();
                             shopTempList=shopMaster.editShopData(strShopid);
                             System.out.println("shop size="+shopTempList.size());
                             
                               
                              editshopdata=shopTempList.get(0).toString().split(",", 8);
                                System.out.println(" Array Value");
                                                               
                               
           }    
  
  
  
  
  %>
   
        <form method="post" name="form" action="editshopsave.jsp">
        
            
            
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
                    <input type ="Button" name="Update" value="Update" onclick="return checkForm(this.form)">
            </td>
            
            
            </tr>            
           
            
        </table>
            
             
         </form>
    </body>
</html>

