<%-- 
    Document   : newjsp
    Created on : Feb 3, 2013, 1:36:32 PM
    Author     : e3659
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
<head>
<script language="javascript">
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='edit.jsp?id='+id;
    f.submit();
}
function deleteRecord(id){
    var f=document.form;
    f.method="post";
    f.action='delete.jsp?id='+id;
    f.submit();
}
</script>
</head>
<body>

<br><br>
<form method="post" name="form">
<table border="1">
    <tr><th>Name</th><th>Password</th><th><th></th></tr>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "emarket";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="root";

int sumcount=0;
Statement st;
//try{
Class.forName(driver).newInstance();
con = DriverManager.getConnection(url+db,userName,password);
String query = "select * from emarket.usermaster";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>

<%
while(rs.next()){
%>
<tr><td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><input type="button" name="edit" value="Edit" style="background-color:#49743D;font-weight:bold;color:#ffffff;" onclick="editRecord(<%=rs.getString(1)%>);" ></td>
<td><input type="button" name="delete" value="Delete" style="background-color:#ff0000;font-weight:bold;color:#ffffff;" onclick="deleteRecord(<%=rs.getString(1)%>);" ></td>
</tr>
<%
}
%>
<%
//}
//catch(Exception e){
//e.printStackTrace();
//}
%>
</table>
</form>
</body>
</html>
</html>
