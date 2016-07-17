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
if (confirm('Do you wish to delete this record?'))
    {
        

     thisform.submit();
 }
}

</script>


    
    </head>
    <body>
      
        <h1>Item Master </h1>
        <hr> 
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
                               
           
   
  %>
         
          <form method="post" name="form" action="deleteitem.jsp">
        
        <table width ="60%" align ="center">
            
            <tr>
                <td>
                Item Code
                </td>
                <td>
                    <input type ="text" id ="itemcode" name="itemcode" value=" <%=edititemdata[1].toString() %>"> 
            </td>
            </tr>
            <tr>
            <td>
                Brand
                
            </td>
            
            <td>
            <input type ="text" id ="brand" name="itembrand" value=" <%=edititemdata[5].toString() %>">
            
            </td>
            </tr>            
            
           <tr>
                
                <td>
                    Name 
            </td>
            <td>
                 <input type ="text" id ="Name" name="itemname" value=" <%=edititemdata[2].toString() %> ">
                
            </td>
            
            </tr>            
           <tr>
              
               <td>
               Description
               </td>
                <td>
                     <input type ="text" id ="Desc" name="itemdesc" value=" <%=edititemdata[8].toString() %>">
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
               <option>Pumps & heels</option>
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
                    <input type ="text" id ="itemcolour" name="itemcolour" value=" <%=edititemdata[6].toString() %>"> 
            </td>
            </tr>
           <tr>
            <td>
           <tr>
               
               <td>  Male
                   
                   
                   <input type ="radio" id ="M" name="itemgender"  value= "male"  checked="<%=bolMale %>">
           
                        
               <td>
               Female <input type ="radio" id ="F" name="itemgender"  value="Female" checked="<%=bolFemale %>" > 
               
               
               </td></tr>
           
           
            <tr>
           
                <td>
                    Size
            </td>
            <td>
                 <input type ="text" id ="ssize" name="itemsize" value=" <%=edititemdata[7].toString() %>" >
                
            </td>
            
            </tr>            
            
           
           <tr>
           
                <td>
                    price
            </td>
            <td>
                 <input type ="text" id ="price" name="itemprice" value=" <%=edititemdata[9].toString() %>" >
                
            </td>
           </tr>
           
           
             <td>
                 <input type ="hidden" id ="itemid" name="itemid" value=" <%=edititemdata[0].toString() %>" >
                
            </td>
            
         <tr>
           
                <td>
                    <input type ="Button" name="Delete" value="Delete" onclick="return checkForm(this.form)">
            </td>
            
            </tr>            
           
            
        </table>
              
          </form>
    </body>
</html>
