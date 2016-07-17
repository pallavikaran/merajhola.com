<%-- 
    Document   : editblogdata
    Created on : Mar 2, 2013, 8:21:39 AM
    Author     : Pallavi
--%>



<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blog Master</title>
         <jsp:useBean  id="blogMaster" class="BLC.BlogMaster" scope="session"/>
         <jsp:setProperty name="blogMaster" property="*"/>
         
         <script language="JavaScript" type="text/JavaScript">

function checkForm(thisform)

{

if(thisform.blogtitle.value=='')

{

alert("Enter Blog title");

return false;
}
else if(thisform.blogcontent.value=='')

{

alert("Enter Blog Content");

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
      
        <h1>Blog Master </h1>
        <hr> <%
           String strRes = request.getParameter("req");
           
           if( strRes != null)
           { %>
           
           <p align ="center"><% out.print(strRes); %> </p>
               
         <%  } String strBlogid = request.getParameter("icode");
           String[] editblogdata =new String[2];  
              
           if (strBlogid != null)
                         {
                             

                                System.out.println("Enter:"+ strBlogid); 
                            

                              ArrayList blogTempList = new ArrayList();
                             blogTempList=blogMaster.editBlogData(strBlogid);
                             System.out.println("blog size="+ blogTempList.size());
                             
                               System.out.println("Blog Data10="+blogTempList.get(0).toString());
                              editblogdata=blogTempList.get(0).toString().split(",", 3);
                                System.out.println(" Array Value"+editblogdata[2]);
                                                               
                               
           }    
  %>
         
          <form method="post" name="form" action="editblogsave.jsp">
              <table border="0" width ="80%" align ="center">
                  <tbody>
                      <tr>
                          <td>Title</td>
                          <td>
                              <input type ="text" id ="blogtitle" name="blogtitle" value=" <%=editblogdata[1].toString() %> ">
                          </td>
                      </tr>
                      
                      <tr>
                          <td>Content</td>
                          <td>
                              <textarea  name="blogcontent" rows="4" cols="20">
                                   <%=editblogdata[2].toString() %>
                              </textarea>
                                 
                          </td>
                      </tr>
                      
                      <tr>
                          
                          <td>
                              
                              <input type ="hidden" id ="blogid" name="blogid" value=" <%=editblogdata[0].toString() %> ">
                          </td>
                      </tr>
                     
                      <tr>
                          
                          
                <td>
                    <input type ="button" name="Update" value="Update" onclick="return checkForm(this.form)">
            </td>
            </tr> 
                  </tbody>
              </table>        
          
          </body>
         </html>
                      