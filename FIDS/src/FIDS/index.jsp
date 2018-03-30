<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="dbdir.MyDbCon"/>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Index Page</title>
<script language="JavaScript">
<!--
function FP_preloadImgs() {//v1.0
 var d=document,a=arguments; if(!d.FP_imgs) d.FP_imgs=new Array();
 for(var i=0; i<a.length; i++) { d.FP_imgs[i]=new Image; d.FP_imgs[i].src=a[i]; }
}

function FP_swapImg() {//v1.0
 var doc=document,args=arguments,elm,n; doc.$imgSwaps=new Array(); for(n=2; n<args.length;
 n+=2) { elm=FP_getObjectByID(args[n]); if(elm) { doc.$imgSwaps[doc.$imgSwaps.length]=elm;
 elm.$src=elm.src; elm.src=args[n+1]; } }
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

<body style="text-align: center" onload="FP_preloadImgs(/*url*/'buttons/button2.jpg', /*url*/'buttons/button3.jpg', /*url*/'buttons/button7.jpg', /*url*/'buttons/button8.jpg', /*url*/'buttons/buttonD.jpg', /*url*/'buttons/buttonE.jpg')">

<jsp:include page="header.htm"/>
<form method="POST" action="--WEBBOT-SELF--">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-width: 0" bordercolor="#111111" width="100%" id="AutoNumber1">
    <tr>
      <td width="100%" style="border-style: none; border-width: medium" colspan="3">
      <p align="center" style="margin-top: -11">
      &nbsp;</td>
    </tr>
    <tr>
      <td width="25%" style="border-style: none; border-width: medium">
      <p align="center"><a href="sning1.jsp">
		<img border="0" id="img1" src="buttons/button1.jpg" height="33" width="100" alt="User Login" onmouseover="FP_swapImg(1,0,/*id*/'img1',/*url*/'buttons/button2.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img1',/*url*/'buttons/button1.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img1',/*url*/'buttons/button3.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img1',/*url*/'buttons/button2.jpg')" fp-style="fp-btn: Metal Tab 1" fp-title="User Login"></a></td>
      <td width="50%" style="border-style:none; border-width:medium; ">
      <p align="center"><a href="reg.jsp">
		<img border="0" id="img2" src="buttons/button6.jpg" height="33" width="100" alt="New Customer" fp-style="fp-btn: Metal Tab 1" fp-title="New Customer" onmouseover="FP_swapImg(1,0,/*id*/'img2',/*url*/'buttons/button7.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img2',/*url*/'buttons/button6.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img2',/*url*/'buttons/button8.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img2',/*url*/'buttons/button7.jpg')"></a></td>
      <td width="25%" style="border-style:none; border-width:medium; ">
      <p align="center"><a href="login.jsp">
		<img border="0" id="img3" src="buttons/buttonC.jpg" height="33" width="100" alt="Merchant" fp-style="fp-btn: Metal Tab 1" fp-title="Merchant" onmouseover="FP_swapImg(1,0,/*id*/'img3',/*url*/'buttons/buttonD.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img3',/*url*/'buttons/buttonC.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img3',/*url*/'buttons/buttonE.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img3',/*url*/'buttons/buttonD.jpg')"></a></td>
    </tr>
    <tr>
      <td width="25%" style="border-style: none; border-width: medium">
      <p align="center">&nbsp;<p align="center"><b><i>Sample Pictures</i></b></td>
      <td width="50%" style="border-style:none; border-width:medium; ">
      <p align="center">&nbsp;<p align="center"><b><i>Detail of products</i></b></td>
      <td width="25%" style="border-style:none; border-width:medium; ">
      <p align="center">&nbsp;<p align="center"><b><i>Price...(INR)</i></b></td>
    </tr>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-width: 0" bordercolor="#111111" width="100%" id="AutoNumber2" height="129">
    <tr>
      <td width="100%" style="border-style: none; border-width: medium" bgcolor="#74A3FD" height="129">
      
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-left-width:0; border-right-width:0; border-top-width:0" bordercolor="#111111" width="100%" id="AutoNumber3">
       <%
       db.mkcon();
       //String snt1=SELECT `column` FROM `table` ORDER BY RAND() LIMIT 5
       String snt="select * from product order by rand() limit 5";
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
          <a href="sning.jsp?value=<%=id%>"><img border="0" width="137" height="147" src="pro_images/<%=img%>"></a></td>
          <td width="50%" style="border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" bordercolor="#800000" align="center" bgcolor="#FFFFFF">
          <font color="#33CCFF"><b><%=pname%></b></font><p>
          &nbsp;<p>
          <textarea rows="7" readonly name="S1" cols="40" style="border: 1px solid #FFFFFF; background-color: #FFFFFF"><%=details%>

Vender : <%=ven%></textarea></td>
          <td width="25%" style="border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" bordercolor="#800000" align="center" bgcolor="#FFFFFF">
          <a href="sning.jsp?value=<%=id%>" style="text-decoration: none; font-weight: 700">
          <font color="#FF3300"><%=price%></font></a></td>
        </tr>
        <%}%>
      </table>
      </td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
<jsp:include page="footer.html"/>
</body>

</html>