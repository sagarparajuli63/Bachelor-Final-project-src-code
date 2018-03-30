<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="dbdir.DbHead"/>

<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Credit page</title>

<script language="JavaScript">
function validateForm(){
var c=document.frm.T1.value
var ac=document.frm.T2.value
var cc=document.frm.T3.value

if(c==""||c==null){
alert("Please Enter Amount to credit")
document.frm.T1.focus()
return false
}
else if(ac==""||ac==null){
alert("Please Enter Acount Number of customer")
document.frm.T2.focus()
return false
}
else if(cc==""||cc==null){
alert("Please Enter Credit Card Number")
document.frm.T3.focus()
return false
}
else if(isNaN(c)||c.indexOf(" ")!=-1)
           {
              alert("Enter numeric value for credit amount")
              document.frm.T1.focus()
              document.frm.T1.value=""
              return false;
           }
else if(isNaN(ac)||ac.indexOf(" ")!=-1)
           {
              alert("Enter numeric value for Account Number")
              document.frm.T2.focus()
              document.frm.T2.value=""
              return false;
           }
else if(isNaN(cc)||cc.indexOf(" ")!=-1)
           {
              alert("Enter numeric value for Credit Card Number")
              document.frm.T3.focus()
              document.frm.T3.value=""
              return false;
           }

}
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

<body bgcolor=#FFFFFF onload="FP_preloadImgs(/*url*/'images/buttons/button5.jpg',/*url*/'images/buttons/button4.jpg',/*url*/'images/buttons/buttonB.jpg',/*url*/'images/buttons/buttonA.jpg',/*url*/'images/buttons/buttonE.jpg',/*url*/'images/buttons/buttonD.jpg',/*url*/'images/buttons/button11.jpg',/*url*/'images/buttons/button10.jpg')">
<jsp:include page="header.html"/>
<form method="POST" name="frm" onsubmit="return validateForm()" action="creditcode.jsp">

      <input type="hidden" name="random" size="20">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-width: 0" bordercolor="#111111" width="100%" id="AutoNumber1" height="423">
    <tr>
      <td width="80%" style="border-style: none; border-width: medium" colspan="4" height="17">
      </td>
    </tr>
    <tr>
      <td width="80%" style="border-style: none; border-width: medium" colspan="4" height="17">
      <p align="center">
      <marquee style="text-decoration: blink; color: #FF0000; font-weight:bold" width="994" behavior="alternate" bgcolor="#FFBD9D">W E L C O M E&nbsp;&nbsp; T O&nbsp;&nbsp; B A N K I N G&nbsp;&nbsp; M O D U LE</marquee></td>
    </tr>
    <tr>
      <td width="80%" style="border-style: none; border-width: medium" height="16" align="center" colspan="4">
      </td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      <p align="center"><a href="emp.jsp">
		<img border="0" id="img1" src="images/buttons/button3.jpg" height="33" width="100" alt="HOME" fp-style="fp-btn: Metal Tab 1; fp-orig: 0" fp-title="HOME" onmouseover="FP_swapImg(1,0,/*id*/'img1',/*url*/'images/buttons/button4.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img1',/*url*/'images/buttons/button3.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img1',/*url*/'images/buttons/button5.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img1',/*url*/'images/buttons/button4.jpg')"></a></td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      <p align="center"><a href="emp.jsp">
		<img border="0" id="img2" src="images/buttons/button9.jpg" height="33" width="100" alt="Open New A/c" onmouseover="FP_swapImg(1,0,/*id*/'img2',/*url*/'images/buttons/buttonA.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img2',/*url*/'images/buttons/button9.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img2',/*url*/'images/buttons/buttonB.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img2',/*url*/'images/buttons/buttonA.jpg')" fp-style="fp-btn: Metal Tab 1; fp-orig: 0" fp-title="Open New A/c"></a></td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      <p align="center"><a href="credit.jsp">
		<img border="0" id="img3" src="images/buttons/buttonC.jpg" height="33" width="100" alt="CREDIT" onmouseover="FP_swapImg(1,0,/*id*/'img3',/*url*/'images/buttons/buttonD.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img3',/*url*/'images/buttons/buttonC.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img3',/*url*/'images/buttons/buttonE.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img3',/*url*/'images/buttons/buttonD.jpg')" fp-style="fp-btn: Metal Tab 1; fp-orig: 0" fp-title="CREDIT"></a></td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      <p align="center"><a href="logout.jsp">
		<img border="0" id="img4" src="images/buttons/buttonF.jpg" height="33" width="100" alt="LOGOUT" onmouseover="FP_swapImg(1,0,/*id*/'img4',/*url*/'images/buttons/button10.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img4',/*url*/'images/buttons/buttonF.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img4',/*url*/'images/buttons/button11.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img4',/*url*/'images/buttons/button10.jpg')" fp-style="fp-btn: Metal Tab 1; fp-orig: 0" fp-title="LOGOUT"></a></td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="17" align="right">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      </td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="17" align="right">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      </td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="17" align="right">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      </td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="17" align="right">
      <b>Credit Amount :
      </b>
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      <input type="text" name="T1" size="20"></td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      </td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="19">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" align="right" height="19">
      &nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" height="19">
      &nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" height="19">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="23">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" align="right" height="23">
      <b>A/C Number:</b></td>
      <td width="20%" style="border-style: none; border-width: medium" height="23">
      <input type="text" name="T2" size="20"></td>
      <td width="20%" style="border-style: none; border-width: medium" height="23">
      </td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="21">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" align="right" height="21">
      &nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" height="21">
      &nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" height="21">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="24">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="24" align="right">
      <b>Credit Card No:</b></td>
      <td width="20%" style="border-style: none; border-width: medium" height="24">
      <input type="text" name="T3" size="20"></td>
      <td width="20%" style="border-style: none; border-width: medium" height="24">
      </td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="25">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" height="25" align="right">
      &nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" height="25">
      &nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" height="25">&nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="26">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="26" align="right">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="26">
      <input type="submit" value="Credit" name="B1" style="font-weight: bold"></td>
      <td width="20%" style="border-style: none; border-width: medium" height="26">
      </td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="3">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="3" align="left">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="3">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="3">
      </td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="3">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="3" align="left">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="3">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="3">
      </td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="3">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="3" align="left">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="3">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="3">
      </td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="3">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="3" align="left">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="3">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="3">
      </td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="62">
      &nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" height="62" align="left">
      &nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" height="62">
      &nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" height="62">
      &nbsp;</td>
    </tr>
    </table>
</form>
<jsp:include page="footer.html"/>
</body>

</html>