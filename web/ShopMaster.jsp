<%-- 
    Document   : ShopMaster
    Created on : Jan 31, 2013, 12:10:52 AM
    Author     : e3659
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
    <link rel="stylesheet" type="text/css" href="style.css" >
            
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
          
           
  %>
   
        <form method="post" name="form" action="shopSave.jsp">
        
            
            
        <table width ="60%" align ="center">
            
            <tr>
                <td>
                Shop No
                </td>
                <td>
                    <input type ="text" id ="shopno" name ="shopno"  > 
            </td>
            </tr>
            <tr>
            <td>
                Shop Name
                
            </td>
          
            <td>
            <input type ="text" id ="shopname" name ="shopname">
            
            </td>
            </tr>            
            
           <tr>
                
                <td>
                    Location     </td>
            <td>
                 <input type ="text" id ="shoplocation" name="shoplocation">
                
            </td>
            
            </tr>            
           <tr>
              
               <td>
               Description
               </td>
                <td>
                     <input type ="text" id ="shopdesc" name="shopdesc">
            </td>
            
           </tr>
           <tr>
            <td>
                Country
                
            </td>
            <td>
          <input type ="text" id ="shopcountry" name="shopcountry"  >
               
               </td></tr>
           
           
            <tr>
           
                <td>
                    State
            </td>
            <td>
                 <input type ="text" id ="shopstate" name="shopstate" >
                
            </td>
            
            </tr>            
            
           
           <tr>
           
                <td>
                    District
            </td>
            <td>
                 <input type ="text" id ="shopdist" name="shopdist" >
                
            </td>
            
            </tr>            
            
         <tr>
           
                <td>
                    <input type ="Button" name="Save" value="Save" onclick="return checkForm(this.form)">
            </td>
            <td>
                 <input type ="reset" id ="re" name="Reset" >
                
            </td>
            
            </tr>            
           
            
        </table>
            
            <table width ="60%" align ="center" border="1">
                  <thead>
                      <tr>
                          <th>No</th>
                          <th>Name</th>
                          <th>Location</th>
                          <th>Description</th>
                          <th>Country</th>
                          <th>State</th>
                          <th>District</th>
                          <th>Edit</th>
                          <th>Delete</th>
                      </tr>
                  </thead>
                  <tbody>
                      
                        <%
                              
                              ArrayList objTempList = new ArrayList();
                              objTempList=shopMaster.retriveShopData();
                              
                             for (int rc=0;rc<objTempList.size(); rc++)
                               {%>
                               
                               <tr>
                                   <%
                                String[] shopdata =new String[7];
                                shopdata=objTempList.get(rc).toString().split(",", 8);
                                
                                for(int fldC=1;fldC<shopdata.length;fldC++)
                                                                       {
                                    %>
                                    <td align="center"><% out.print( shopdata[fldC]);
                                      
                                    
                                    %>
                                      
                                    </td>
                                    
                                    <%} %>
                                    <td><a href ="http://localhost:8080/emarket/editshopdata.jsp?icode=<%=shopdata[0] %>">Edit</a></td>
                                    <td><a href ="http://localhost:8080/emarket/deleteshopdata.jsp?icode=<%=shopdata[0] %>">Delete</a></td>
                               </tr>
                            <%   }
                              %>
                         
                  </tbody>
              </table>
             
         </form>
    </body>
</html>
