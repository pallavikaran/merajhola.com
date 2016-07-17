<%-- 
    Document   : ItemMaster
    Created on : Jan 30, 2013, 11:35:04 PM
    Author     : e3659
--%>

<%@ page import="java.util.ArrayList" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       

        <title>Item Master</title>
         <jsp:useBean  id="itemMaster" class="BLC.ItemMaster" scope="session"/>
         <jsp:setProperty name="itemMaster" property="*"/>
         
         <script language="JavaScript" type="text/JavaScript">

function checkForm(thisform)

{

if(thisform.itemcode.value=='')

{

alert("Enter Item Code");

return false;
}
else if(thisform.itembrand.value=='')

{

alert("Enter Item Brand");

return false;
}
else if(thisform.itemname.value=='')

{

alert("Enter Item Name");

return false;
}
else if(thisform.itemdesc.value=='')

{

alert("Enter Item Description");

return false;
}
else if(thisform.itemtype.value=='')

{

alert("Enter Item Type");

return false;
}

else if(thisform.itemcolour.value=='')

{

alert("Enter Item Colour");

return false;
}

else if(thisform.itemgender.value=='')

{

alert("Please select gender");

return false;
}
else if(thisform.itemsize.value=='')

{

alert("Enter Item size.");

return false;
}
else if(thisform.itemprice.value=='')

{

alert("Enter Item Price");

return false;
}

else if(thisform.itemdesc.value=='')

{

alert("Enter Item Price");

return false;
}
else
    {
thisform.submit();
}
}
</script>


    
    </head>
<link rel="stylesheet" type="text/css" href="style.css" >
    <body>
      
        <h1>Item Master </h1>
        <hr> <%
           String strRes = request.getParameter("req");
           
           if( strRes != null)
           { %>
           
           <p align ="center"><% out.print(strRes); %> </p>
               
         <%  } %>
         
          <form method="post" name="form" action="itemSave.jsp">
        
        <table width ="60%" align ="center">
            
            <tr>
                <td>
                Item Code
                </td>
                <td>
                    <input type ="text" id ="itemcode" name="itemcode"> 
            </td>
            </tr>
            <tr>
            <td>
                Brand
                
            </td>
            
            <td>
            <input type ="text" id ="brand" name="itembrand">
            
            </td>
            </tr>            
            
           <tr>
                
                <td>
                    Name 
            </td>
            <td>
                 <input type ="text" id ="Name" name="itemname">
                
            </td>
            
            </tr>            
           <tr>
              
               <td>
               Description
               </td>
                <td>
                     <input type ="text" id ="Desc" name="itemdesc">
            </td>
            
           </tr>
           <tr>
            <td>
                Type
                
            </td>
            <td>
           <select id="type" name="itemtype">
               <option>Athletic Shoes</option>
               <option>Boat shoes</option>
               <option>Boots</option>
               <option>Casual Shoes</option>
               <option>Clogs</option>
               <option>Comfort shoes</option>
               <option>Dress shoes</option>
               <Option>Ethnic shoes</option>
               <option>Flats</option>
               <option>Flip-Flops</option>
               <option>Loafers </option>
               <option>Oxfords</option>
               <option>Peep toes</option>
               <option>Platforms</option>
               <option>Pumps and heels</option>
               <option>Rain boots</option>
               <option>Sandals</option>
               <option>Slippers</option>
               <option>Wedges</option>
               <option>Wide-Width Shoes</option>
               <option>Work Boots and shoes</option>
               
           </select>
                
            
            </td>
           </tr>
             <tr>
                <td>
                Item Colour
                </td>
                <td>
                    <input type ="text" id ="itemcolour" name="itemcolour"> 
            </td>
            </tr>
           <tr>
            <td>
           <tr>
               <td> Male <input type ="radio" id ="M" name="itemgender" value="male" >
           
                        
               <td>
               Female <input type ="radio" id ="F" name="itemgender" value="female" > 
               
               
               </td></tr>
           
           
            <tr>
           
                <td>
                    Size
            </td>
            <td>
                 <input type ="text" id ="ssize" name="itemsize" >
                
            </td>
            
            </tr>            
            
           
           <tr>
           
                <td>
                    price
            </td>
            <td>
                 <input type ="text" id ="price" name="itemprice" >
                
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
                          <th>Code</th>
                          <th>Name</th>
                          <th>Type</th>
                          <th>Gender</th>
                          <th>Brand</th>
                          <th>Colour</th>
                          <th>Size</th>
                          <th>Description</th>
                          <th>Price</th>
                          <th>Image</th>
                          <th> Actual Image name</th>
                          <th>Edit</th>
                          <th>Delete</th>
                          <th>Upload</th>
                      </tr>
                  </thead>
                  <tbody>
                      
                        <%
                              
                              ArrayList objTempList = new ArrayList();
                              objTempList=itemMaster.retriveItemData();
                              
                             for (int rc=0;rc<objTempList.size(); rc++)
                               {%>
                               
                               <tr>
                                   <%
                                String[] itemdata =new String[11];
                                itemdata=objTempList.get(rc).toString().split(",", 12);
                                
                                for(int fldC=1;fldC<itemdata.length;fldC++)
                                                                       {
                                    %>
                                    <td align="center"><% out.print( itemdata[fldC]);
                                      
                                    
                                    %>
                                        
                                        
                                    </td>
                                    
                                    <%} %>
                                    <td><a href ="http://localhost:8080/emarket/edititemdata.jsp?icode=<%=itemdata[0] %>">Edit</a></td>
                                    <td><a href ="http://localhost:8080/emarket/deleteitemdata.jsp?icode=<%=itemdata[0] %>">Delete</a></td>                              
                                    <td><a href ="http://localhost:8080/emarket/upload.jsp?icode=<%=itemdata[0] %>">Upload</a></td>          
                               </tr>
                            <%   }
                              %>
              
                  </tbody>
              </table>

          </form>
    </body>
</html>
