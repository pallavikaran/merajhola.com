<%-- 
    Document   : uploadconfirm1
    Created on : Mar 6, 2013, 7:42:01 AM
    Author     : Pallavi
--%>

<%@ page import="java.io.*" %>
<jsp:useBean  id="blogMaster" class="BLC.BlogMaster" scope="session"/>
         <jsp:setProperty name="blogMaster" property="*"/>

<%
String contentType = request.getContentType();
System.out.println("Content type is :: " +contentType);
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();

byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
totalBytesRead += byteRead;
}

String file = new String(dataBytes);
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));

//out.print(dataBytes);

int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
//out.println(boundary);
int pos;
pos = file.indexOf("filename=\"");

pos = file.indexOf("\n", pos) + 1;

pos = file.indexOf("\n", pos) + 1;

pos = file.indexOf("\n", pos) + 1;


int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
String strImgName=null;
///

int retVal= blogMaster.getImageSequenceNo();
String imgName=retVal+"_"+saveFile;


///




strImgName="docroot/"+imgName;
System.out.println("Image path name:"+ strImgName);
FileOutputStream fileOut = new FileOutputStream(strImgName);


//fileOut.write(dataBytes);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
String resStr="";

//update image details in item master///
System.out.println("icode"+session.getAttribute("icode").toString());
int icode= Integer.parseInt(session.getAttribute("icode").toString());
 if (blogMaster.saveImageDetails(saveFile, imgName, icode))
         {
            resStr="Image saved Successfully";
         }

////////////////////////////////////////////



 out.println("File saved as " +saveFile);
 String strImgDis ="/"+imgName;

%>
<img src="<%=strImgDis %>" >

<%
}
%>