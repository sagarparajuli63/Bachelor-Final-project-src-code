<%@ page import="java.io.*,java.sql.*"%>
<jsp:useBean id="db" class="dbdir.MyDbCon"/>
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Product Modification Page</title>

<script>
function validateForm()
{
var x=document.frm.D1.value
var pro=document.frm.pro.value
var pid=document.frm.pid.value
var d=document.frm.details.value
var pr=document.frm.price.value
if (x=="Select Category")
  {
  alert("Please Select the Category Name");
  document.frm.D1.focus();
  return false;
  }
  else if(pid==null || pid=="") {
  alert("Please Enter the Product Id");
  document.frm.pid.focus();
  return false;
  }
 else if(pro==null || pro=="") {
  alert("Please Enter the Product Name");
  document.frm.pro.focus();
  return false;
  }
  else if(d==null || d==""){
  alert("Please Enter the Product Details");
  document.frm.details.focus();
  return false;
  }
  else if(pr==null || pr==""){
  alert("Please Enter the Product Price");
  document.frm.price.focus();
  return false;
  }
 }
</script>

</head>

<body text="#000000" bgcolor="#CCCCCC">

<form name="frm" onsubmit="return validateForm()" method="POST" action="modify_Productcode.jsp">
<%
db.mkcon();
String pid=request.getParameter("T1");
String snt1="select * from product where pro_id='"+pid+"'";
ResultSet rs=db.fetch(snt1);
if(rs.next())
{
String c=rs.getString(1);
String pname=rs.getString(3);
String details=rs.getString(4);
String price=rs.getString(5);
String img=rs.getString(6);
%>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-width: 0" bordercolor="#111111" width="100%" id="AutoNumber1">
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCCCCC">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">
      <p align="center">
      <a href="a_Category.jsp" style="text-decoration: none; font-style: italic; font-weight: 700">&nbsp;Add 
      Category</a></td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">
      <p align="center">
      <a href="U_Category.jsp" style="text-decoration: none; font-style: italic; font-weight: 700">
      Update Category</a></td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="40%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" colspan="2" rowspan="12">
      <p align="center">
      <img border="0" src="pro_images/<%=img%>" width="162" height="170"></td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">
      <p align="center">
      <a href="D_Category.jsp" style="text-decoration: none; font-style: italic; font-weight: 700">&nbsp;Delete 
      Category</a></td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" align="right">
      Select Category:</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <select size="1" name="D1">
	<option selected value="<%=c%>"><%=c%></option>
      <%
          String a=null;
      db.mkcon();
      String snt="select * from category";
      ResultSet rs1=db.fetch(snt);
      while(rs.next())
      {
  		a=rs1.getString(1);
      
      %>
            <option value="<%=a%>"><%=a%></option><%}%>

      </select> </td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">
      <p align="center">
      <a href="Add_Product.jsp" style="text-decoration: none; font-style: italic; font-weight: 700">
      Add Product</a></td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <p align="right">Product ID:</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <input type="text" name="pid" readonly size="22" value="<%=pid%>"></td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" align="center" bgcolor="#CCFF99">
      <a href="Modify_Product.jsp" style="text-decoration: none; font-style: italic; font-weight: 700">
      Modify Product</a></td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <p align="right">Name of Product:</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <input type="text" name="pro" size="22" value="<%=pname%>"></td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" align="center" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" align="center" bgcolor="#CCFF99">
      <a href="Delete_Product.jsp" style="text-decoration: none; font-weight: 700; font-style: italic">
      Delete Product</a></td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" rowspan="3">
      <textarea rows="3" name="details" cols="17"><%=details%></textarea></td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <p align="right">Product Details:</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">
      <p align="center">
      <a href="logout.jsp" style="text-decoration: none; font-style: italic; font-weight: 700">
      Logout</a></td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <p align="right">Price:</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <input type="text" name="price" size="22" value="<%=price%>"></td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <input type="submit" value="Save&gt;&gt;" name="B1">&nbsp;&nbsp;
      <input type="reset" value="Reset" name="B2"></td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="60%" style="border-style: none; border-width: medium" colspan="3" bgcolor="#FFFFFF">
      <p align="center">@ xxxxxxxxx xxxxxxxxxxx xxxxxx xxxxxx</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
  </table>
  <%
  }
  else
  {
  %>
  <script>
  history.back(1)
  alert('Plz Enter correct Product ID');
  </script>
  <%
  }
  %>
</form>

</body>

</html>