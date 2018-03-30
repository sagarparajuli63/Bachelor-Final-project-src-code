<%@ page import="java.io.*,java.sql.*"%>
<jsp:useBean id="db" class="dbdir.MyDbCon"/>
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Add New Product</title>
<script>
function validateForm()
{
var x=document.frm.D1.value
var p=document.frm.pro.value
var d=document.frm.details.value
var pr=document.frm.price.value
var v=document.frm.Ven.value
var param=pr.length;
if (x=="Select Category")
  {
  alert("Please Select the Category Name");
  document.frm.D1.focus();
  return false;
  }
 else if(p==null || p=="") {
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
  else if(v==null || v==""){
  alert("Please Enter the Vendor Name");
  document.frm.Ven.focus();
  return false;
  }
}

function FP_swapImg() {//v1.0
 var doc=document,args=arguments,elm,n; doc.$imgSwaps=new Array(); for(n=2; n<args.length;
 n+=2) { elm=FP_getObjectByID(args[n]); if(elm) { doc.$imgSwaps[doc.$imgSwaps.length]=elm;
 elm.$src=elm.src; elm.src=args[n+1]; } }
}

function FP_preloadImgs() {//v1.0
 var d=document,a=arguments; if(!d.FP_imgs) d.FP_imgs=new Array();
 for(var i=0; i<a.length; i++) { d.FP_imgs[i]=new Image; d.FP_imgs[i].src=a[i]; }
}

function FP_getObjectByID(id,o) {//v1.0
 var c,el,els,f,m,n; if(!o)o=document; if(o.getElementById) el=o.getElementById(id);
 else if(o.layers) c=o.layers; else if(o.all) el=o.all[id]; if(el) return el;
 if(o.id==id || o.name==id) return o; if(o.childNodes) c=o.childNodes; if(c)
 for(n=0; n<c.length; n++) { el=FP_getObjectByID(id,c[n]); if(el) return el; }
 f=o.forms; if(f) for(n=0; n<f.length; n++) { els=f[n].elements;
 for(m=0; m<els.length; m++){ el=FP_getObjectByID(id,els[n]); if(el) return el; } }
 return null;
}
</script>

</head>

<body text="#000000" bgcolor="#CCCCCC" onload="FP_preloadImgs(/*url*/'buttons/admin/button25.jpg',/*url*/'buttons/admin/button24.jpg',/*url*/'buttons/admin/button2E.jpg',/*url*/'buttons/admin/button2D.jpg',/*url*/'buttons/admin/button32.jpg',/*url*/'buttons/admin/button31.jpg',/*url*/'buttons/admin/button35.jpg',/*url*/'buttons/admin/button34.jpg',/*url*/'buttons/admin/button38.jpg',/*url*/'buttons/admin/button37.jpg',/*url*/'buttons/admin/button3B.jpg',/*url*/'buttons/admin/button3A.jpg',/*url*/'buttons/admin/button3E.jpg',/*url*/'buttons/admin/button3D.jpg',/*url*/'buttons/admin/button41.jpg',/*url*/'buttons/admin/button40.jpg')">
<jsp:include page="header.htm"/>

<form name="frm" onsubmit="return validateForm()" method="POST" action="Add_Productcode.jsp">
<%
db.mkcon();
int p;
ResultSet rs8=null;
rs8=db.fetch("select max(pro_id) from product");
if(rs8.next())
 {
   p=rs8.getInt(1);
   System.out.println(p);
   if(p<100)
    p=100;
     p++;
 }
 else
 {
   p=101;
 }
 String nn="0"+p;


%>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-width: 0" bordercolor="#111111" width="100%" id="AutoNumber1">
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">
      <p align="center">
      <a href="a_Category.jsp" style="text-decoration: none; font-style: italic; font-weight: 700">&nbsp;</a><a href="a_Category.jsp"><img border="0" id="img1" src="buttons/admin/button23.jpg" height="33" width="100" alt="Add Category" fp-style="fp-btn: Metal Tab 1; fp-orig: 0" fp-title="Add Category" onmouseover="FP_swapImg(1,0,/*id*/'img1',/*url*/'buttons/admin/button24.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img1',/*url*/'buttons/admin/button23.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img1',/*url*/'buttons/admin/button25.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img1',/*url*/'buttons/admin/button24.jpg')"></a></td>
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
      <a href="U_Category.jsp">
		<img border="0" id="img2" src="buttons/admin/button2C.jpg" height="33" width="100" alt="Update Category" onmouseover="FP_swapImg(1,0,/*id*/'img2',/*url*/'buttons/admin/button2D.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img2',/*url*/'buttons/admin/button2C.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img2',/*url*/'buttons/admin/button2E.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img2',/*url*/'buttons/admin/button2D.jpg')" fp-style="fp-btn: Metal Tab 1; fp-orig: 0" fp-title="Update Category"></a></td>
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
      <iframe name="file1" width="300" height="227" scrolling="no" border="0" frameborder="0" src="file.jsp">
      Your browser does not support inline frames or is currently configured not to display inline frames.</iframe></td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">
      <p align="center">
      <a href="D_Category.jsp" style="text-decoration: none; font-style: italic; font-weight: 700">&nbsp;</a><a href="D_Category.jsp"><img border="0" id="img3" src="buttons/admin/button30.jpg" height="33" width="100" alt="Delete Category" onmouseover="FP_swapImg(1,0,/*id*/'img3',/*url*/'buttons/admin/button31.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img3',/*url*/'buttons/admin/button30.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img3',/*url*/'buttons/admin/button32.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img3',/*url*/'buttons/admin/button31.jpg')" fp-style="fp-btn: Metal Tab 1; fp-orig: 0" fp-title="Delete Category"></a></td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" align="right">
      Select Category:</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <select size="1" name="D1">
            <option selected value="Select Category">-Select Category-</option>

      <%
          String a=null;
      db.mkcon();
      String snt="select * from category";
      ResultSet rs=db.fetch(snt);
      while(rs.next())
      {
  		a=rs.getString(1);
      
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
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="Add_Product.jsp">
		<img border="0" id="img4" src="buttons/admin/button33.jpg" height="33" width="100" alt="Add Product" onmouseover="FP_swapImg(1,0,/*id*/'img4',/*url*/'buttons/admin/button34.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img4',/*url*/'buttons/admin/button33.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img4',/*url*/'buttons/admin/button35.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img4',/*url*/'buttons/admin/button34.jpg')" fp-style="fp-btn: Metal Tab 1; fp-orig: 0" fp-title="Add Product"></a></td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <p align="right">Product ID:</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <input type="text" name="pid" readonly size="22" value="<%=nn%>"></td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" align="center" bgcolor="#CCFF99">
      <a href="Modify_Product.jsp">
		<img border="0" id="img5" src="buttons/admin/button36.jpg" height="33" width="100" alt="Modify Product" onmouseover="FP_swapImg(1,0,/*id*/'img5',/*url*/'buttons/admin/button37.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img5',/*url*/'buttons/admin/button36.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img5',/*url*/'buttons/admin/button38.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img5',/*url*/'buttons/admin/button37.jpg')" fp-style="fp-btn: Metal Tab 1; fp-orig: 0" fp-title="Modify Product"></a></td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <p align="right">Name of Product:</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <input type="text" name="pro" size="22"></td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" align="center" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" align="center" bgcolor="#CCFF99">
      <a href="Delete_Product.jsp">
		<img border="0" id="img6" src="buttons/admin/button39.jpg" height="33" width="100" alt="Delete Product" onmouseover="FP_swapImg(1,0,/*id*/'img6',/*url*/'buttons/admin/button3A.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img6',/*url*/'buttons/admin/button39.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img6',/*url*/'buttons/admin/button3B.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img6',/*url*/'buttons/admin/button3A.jpg')" fp-style="fp-btn: Metal Tab 1; fp-orig: 0" fp-title="Delete Product"></a></td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" rowspan="3">
      <textarea rows="3" name="details" cols="17"></textarea></td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <p align="right">Product Details:</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">
      <p align="center">
      <a href="admin.jsp">
		<img border="0" id="img7" src="buttons/admin/button3C.jpg" height="33" width="100" alt="Home" onmouseover="FP_swapImg(1,0,/*id*/'img7',/*url*/'buttons/admin/button3D.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img7',/*url*/'buttons/admin/button3C.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img7',/*url*/'buttons/admin/button3E.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img7',/*url*/'buttons/admin/button3D.jpg')" fp-style="fp-btn: Metal Tab 1; fp-orig: 0" fp-title="Home"></a></td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#CCFF99">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="logout.jsp">
		<img border="0" id="img8" src="buttons/admin/button3F.jpg" height="33" width="100" alt="Logout" onmouseover="FP_swapImg(1,0,/*id*/'img8',/*url*/'buttons/admin/button40.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img8',/*url*/'buttons/admin/button3F.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img8',/*url*/'buttons/admin/button41.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img8',/*url*/'buttons/admin/button40.jpg')" fp-style="fp-btn: Metal Tab 1; fp-orig: 0" fp-title="Logout"></a></td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <p align="right">Price:</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <input type="text" name="price" size="22"></td>
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
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <p align="right">Vender :</td>
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <input type="text" name="Ven" size="22"></td>
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
      <td width="20%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <p align="center">
      <input type="submit" value="Save&gt;&gt;" name="B1"></td>
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
      <p align="center">&nbsp;</td>
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
</form>
<jsp:include page="footer.html"/>

</body>

</html>