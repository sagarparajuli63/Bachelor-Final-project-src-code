<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="dbdir.MyDbCon"/>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Product searched page</title>
<script language="JavaScript">
<!--
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
// -->
</script>
</head>

<body style="text-align: center" onload="FP_preloadImgs(/*url*/'buttons/button17.jpg',/*url*/'buttons/button16.jpg',/*url*/'buttons/button1C.jpg',/*url*/'buttons/button1B.jpg')">
<jsp:include page="header.htm"/>
<form method="POST" action="searched.jsp">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-width: 0" bordercolor="#111111" width="100%" id="AutoNumber1">
    <tr>
      <td width="100%" style="border-style: none; border-width: medium" colspan="3">
      <p align="center" style="margin-top: -11">
      &nbsp;</td>
    </tr>
    <tr>
      <td width="25%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <p align="center">&nbsp;</td>
      <td width="50%" style="border-style:none; border-width:medium; " bgcolor="#FFFFFF">
      <p align="center"><a href="userpage1.jsp">
		<img border="0" id="img1" src="buttons/button15.jpg" height="33" width="100" alt="HOME" onmouseover="FP_swapImg(1,0,/*id*/'img1',/*url*/'buttons/button16.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img1',/*url*/'buttons/button15.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img1',/*url*/'buttons/button17.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img1',/*url*/'buttons/button16.jpg')" fp-style="fp-btn: Metal Tab 1; fp-orig: 0" fp-title="HOME"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="logout.jsp">
		<img border="0" id="img2" src="buttons/button1A.jpg" height="33" width="100" alt="LOGOUT" onmouseover="FP_swapImg(1,0,/*id*/'img2',/*url*/'buttons/button1B.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img2',/*url*/'buttons/button1A.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img2',/*url*/'buttons/button1C.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img2',/*url*/'buttons/button1B.jpg')" fp-style="fp-btn: Metal Tab 1; fp-orig: 0" fp-title="LOGOUT"></a></td>
      <td width="25%" style="border-style:none; border-width:medium; " bgcolor="#FFFFFF">
      <p align="center">&nbsp;</td>
    </tr>
    <tr>
      <td width="25%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
      <p align="center">&nbsp;<p align="center"><b><i><font color="#33CCFF">Sample Picture</font></i></b></td>
      <td width="50%" style="border-style:none; border-width:medium; " bgcolor="#FFFFFF">
      <p align="center">&nbsp;<p align="center"><b><i><font color="#33CCFF">Details</font></i></b></td>
      <td width="25%" style="border-style:none; border-width:medium; " bgcolor="#FFFFFF">
      <p align="center">&nbsp;<p align="center"><b><i><font color="#33CCFF">Price...(INR)</font></i></b></td>
    </tr>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-width: 0" bordercolor="#111111" width="100%" id="AutoNumber2" height="129">
    <tr>
      <td width="100%" style="border-style: none; border-width: medium" bgcolor="#74A3FD" height="129">
      
      <table cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-top-width:1px; border-top-style:solid; border-bottom-style:solid; border-bottom-width:1px; padding-left:4px; padding-right:4px; padding-top:1px; padding-bottom:1px" bordercolor="#111111" width="100%" id="AutoNumber3">
       <%
       db.mkcon();
       String cats=request.getParameter("D1");
       //String snt1=SELECT `column` FROM `table` ORDER BY RAND() LIMIT 5
       String snt="select * from product where category='"+cats+"'";
       ResultSet rs=db.fetch(snt);
       while(rs.next())
       {
       String id=rs.getString(2);
       String pname=rs.getString(3);
       String details=rs.getString(4);
       String price=rs.getString(5);
       String img=rs.getString(6);
       String ven=rs.getString(7);
       %>
		 <tr>
          <td width="25%" style="border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" bordercolor="#800000" bgcolor="#FFFFFF">
          <a href="prodetails.jsp?value=<%=id%>"><img border="0" width="137" height="147" src="pro_images/<%=img%>"></a></td>
          <td width="50%" style="border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" bordercolor="#800000" align="center" bgcolor="#FFFFFF">
          <font color="#33CCFF"><b><%=pname%></b></font><p>
          <textarea rows="7" readonly name="S1" cols="40" style="border: 1px solid #FFFFFF; background-color: #FFFFFF"><%=details%>

Vender : <%=ven%></textarea></td>
          <td width="25%" style="border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" bordercolor="#800000" align="center" bgcolor="#FFFFFF">
          <a href="prodetails.jsp?value=<%=id%>" style="text-decoration: none; font-weight: 700">
          <font color="#FF3300"><%=price%></font></a></td>
        </tr>
        <%}%>
      </table>
      </td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>

<p>&nbsp;</p>

</body>

</html>