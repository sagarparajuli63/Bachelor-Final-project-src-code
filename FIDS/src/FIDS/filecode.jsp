<%@ page import="java.io.*,java.sql.*"%>
<jsp:useBean id="db" class="dbdir.MyDbCon"/>

<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 2</title>
</head>

<body>
<%

//to get the content type information from JSP Request Header
	String contentType = request.getContentType();
	
	//here we are checking the content type is not equal to Null and as well as the passed data from mulitpart/form-data is greater than or equal to 0
	if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) 
	{
 		DataInputStream in = new DataInputStream(request.getInputStream());
		//we are taking the length of Content type data
		int formDataLength = request.getContentLength();
		System.out.println("file lenth========"+formDataLength );
		byte dataBytes[] = new byte[formDataLength];
		int byteRead = 0;
		int totalBytesRead = 0;
		//this loop converting the uploaded file into byte code
		while (totalBytesRead < formDataLength) {
			byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
			totalBytesRead += byteRead;
			}

		String file = new String(dataBytes);
		//for saving the file name
		String saveFile = file.substring(file.indexOf("filename=\"") + 10);
		saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
				System.out.println("save file1===="+saveFile);

		saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
		int lastIndex = contentType.lastIndexOf("=");
		String boundary = contentType.substring(lastIndex + 1,contentType.length());
				System.out.println("boundaryfile2===="+boundary);

		int pos;
		//extracting the index of file 
		pos = file.indexOf("filename=\"");
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		int boundaryLocation = file.indexOf(boundary, pos) - 4;
		int startPos = ((file.substring(0, pos)).getBytes()).length;
		int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
        				
db.mkcon();
String snt="insert into product values('1','','','','','"+saveFile+"','')";

						int i=0;
						i=db.dbinsert(snt);
						System.out.println("value==============of i :>"+i+"File name==>"+saveFile);
						if(i>0)
						{
		// creating a new file with the same name and writing the content in new file
		FileOutputStream fileOut = new FileOutputStream("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/FIDS/pro_images/"+saveFile);
		fileOut.write(dataBytes, startPos, (endPos - startPos));

		fileOut.close();
%>
<jsp:forward page="image.jsp"/>
<%
}}
else
{
%>
&nbsp;<jsp:include page="admin.jsp"/><SCRIPT language="javascript">
  alert('Rename this file');
</SCRIPT><%}%>
</body>

</html>