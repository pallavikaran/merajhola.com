<%-- 
    Document   : BlogMaster
    Created on : Mar 1, 2013, 8:34:11 PM
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
               
         <%  } %>
         
          <form method="post" name="form" action="blogSave.jsp">
              <table border="0" width ="80%" align ="center">
                  <tbody>
                      <tr>
                          <td>Title</td>
                          <td>
                              <input type ="text" id ="blogtitle" name="blogtitle">
                          </td>
                      </tr>
                      
                      <tr>
                          <td>Content</td>
                          <td>
                              
                              <textarea name="blogcontent" rows="4" cols="20">
                              </textarea>
                              
                          </td>
                      </tr>
                      <tr>
                <td>
                    <input type ="button" name="Save" value="Save" onclick="return checkForm(this.form)">
            </td>
            </tr> 
                  </tbody>
              </table>        
          
              <table width ="60%" align ="center" border="1">
                  <thead>
                      <tr>
                          <th>Title</th>
                          <th>Content</th>
                          <th>Image </th>
                           <th>Actual Image name</th>
                          <th>Edit</th>
                          <th>Delete</th>
                          <th>Upload</th>
                      </tr>
                  </thead>
                  <tbody>
                      
                        <%
                              
                              ArrayList objTempList = new ArrayList();
                              objTempList=blogMaster.retriveBlogData();
                              
                             for (int rc=0;rc<objTempList.size(); rc++)
                               {%>
                               
                               <tr>
                                   <%
                                String[] blogdata =new String[4];
                                blogdata=objTempList.get(rc).toString().split(",", 5);
                                  
                                for(int fldC=1;fldC<blogdata.length;fldC++)
                                                                       {
                                    %>
                                    <td align="center"><% out.print( blogdata[fldC]);
                                      
                                    
                                    %>
                                        
                                        
                                    </td>
                                    
                                    <%} %>
                                    <td><a href ="http://localhost:8080/emarket/editblogdata.jsp?icode=<%=blogdata[0] %>">Edit</a></td>
                                    <td><a href ="http://localhost:8080/emarket/deleteblogdata.jsp?icode=<%=blogdata[0] %>">Delete</a></td>                              
                                    <td><a href ="http://localhost:8080/emarket/upload1.jsp?icode=<%=blogdata[0] %>">Upload</a></td>
                               </tr>
                            <%   }
                              %>
              
                  </tbody>
              </table>

          </form>
    </body>
</html>
