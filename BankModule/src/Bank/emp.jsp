<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="dbdir.DbHead"/>

<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Employee Home page</title>
<script language="javascript">
function validateForm(){
var n=document.frm.T1.value
var m=document.frm.T4.value
var mob=document.frm.T4.value
var e=document.frm.T5.value
var a=document.frm.T6.value
var c=document.frm.T7.value
var em=document.frm.exp_month.value
var ey=document.frm.exp_year.value
        var at="@"
		var dot="."
		var lat=e.indexOf(at)
		var lstr=e.length
		var ldot=e.indexOf(dot)

if(n==""||n==null){
alert("Please Enter Name Of Customer")
document.frm.T1.focus()
return false
}
else if(m==""||m==null){
alert("Please Enter Mobile Number Of Customer")
document.frm.T4.focus()
return false
}
else if(e==""||e==null){
alert("Please Enter Email ID Customer")
document.frm.T5.focus()
return false
}

else if(a==""||a==null){
alert("Please Enter Address Of Customer")
document.frm.T6.focus()
return false
}

else if(c==""||c==null){
alert("Please Enter Credit Amount")
document.frm.T7.focus()
return false
}
else if(em=="0"){
alert("Please Select The Expiry Month")
document.frm.exp_month.focus()
return false
}

else if(ey=="0"){
alert("Please Select The Expiry Year")
document.frm.exp_year.focus()
return false
}
else if(isNaN(m)||m.indexOf(" ")!=-1)
           {
              alert("Enter numeric value for mobile number")
              document.frm.T4.focus()
              document.frm.T4.value=""
              return false;
           }
           
else if (m.length<10 || m.length>10)
{
 alert("enter 10 characters for Mobile Number");
 document.frm.T4.focus()
 document.frm.T4.value=""
 return false;
 }
 
else if (e.indexOf(at)==-1){
		   alert("Invalid E-mail ID")
		   document.frm.T5.focus()
		   return false
		}
else if (e.indexOf(at)==-1 || e.indexOf(at)==0 || e.indexOf(at)==lstr){
		   alert("Invalid E-mail ID")
		   document.frm.T5.focus()
		   return false
		}
		
else if (e.indexOf(dot)==-1 || e.indexOf(dot)==0 || e.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID")
    		document.frm.T5.focus()
		    return false
		}		
		
else if (e.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID")
		    document.frm.T5.focus()
		    return false
		 }	
		 
else if (e.substring(lat-1,lat)==dot || e.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID")
		    document.frm.T5.focus()
		    return false
		 }

else if (e.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID")
		    document.frm.T5.focus()
		    return false
		 }
		
else if (e.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }	
else if(isNaN(c)||c.indexOf(" ")!=-1)
           {
              alert("Enter numeric value for Credit Amount")
              document.frm.T7.focus()
              document.frm.T7.value=""
              return false;
           }
	 
}

function random()
{
var randomnumber=Math.floor(Math.random()*10000000);
document.frm.random.value=randomnumber;
}

function AcPanelNo()
{
var randomnumber=Math.floor(Math.random()*100000);
document.frm.APN.value=randomnumber;
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

<body onLoad=" return random(),AcPanelNo(); FP_preloadImgs(/*url*/'images/buttons/button4.jpg',/*url*/'images/buttons/button5.jpg',/*url*/'images/buttons/buttonA.jpg',/*url*/'images/buttons/buttonB.jpg',/*url*/'images/buttons/buttonD.jpg',/*url*/'images/buttons/buttonE.jpg',/*url*/'images/buttons/button10.jpg',/*url*/'images/buttons/button11.jpg')">
<jsp:include page="header.html"/>
<%
db.mkcon();
int p;
ResultSet rs8=null;
rs8=db.fetch("select max(acno) from customer");
if(rs8.next())
 {
   p=rs8.getInt(1);
   if(p<91000)
    p=91000;
     p++;
 }
 else
 {
   p=91001;
 }


%>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-width: 0" bordercolor="#111111" width="100%" id="AutoNumber1" height="38">
    <tr>
      <td width="80%" style="border-style: none; border-width: medium" colspan="4" height="19">
      &nbsp;</td>
    </tr>
    <tr>
      <td width="80%" style="border-style: none; border-width: medium" colspan="4" height="19">
      <p align="center">
      <marquee style="text-decoration: blink; color: #FF0000; font-weight:bold" width="994" behavior="alternate" bgcolor="#FFBD9D">W E L C O M E&nbsp;&nbsp; T O&nbsp;&nbsp; B A N K I N G&nbsp;&nbsp; M O D U LE</marquee></td>
    </tr>
    <tr>
      <td width="80%" style="border-style: none; border-width: medium" colspan="4" height="19">
      &nbsp;</td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="19" align="center">
      <a href="emp.jsp">
		<img border="0" id="img1" src="images/buttons/button3.jpg" height="33" width="100" alt="HOME" fp-style="fp-btn: Metal Tab 1" fp-title="HOME" onmouseover="FP_swapImg(1,0,/*id*/'img1',/*url*/'images/buttons/button4.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img1',/*url*/'images/buttons/button3.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img1',/*url*/'images/buttons/button5.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img1',/*url*/'images/buttons/button4.jpg')"></a></td>
      <td width="20%" style="border-style: none; border-width: medium" height="19" align="center">
      <a href="emp.jsp">
		<img border="0" id="img2" src="images/buttons/button9.jpg" height="33" width="100" alt="Open New A/c" onmouseover="FP_swapImg(1,0,/*id*/'img2',/*url*/'images/buttons/buttonA.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img2',/*url*/'images/buttons/button9.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img2',/*url*/'images/buttons/buttonB.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img2',/*url*/'images/buttons/buttonA.jpg')" fp-style="fp-btn: Metal Tab 1" fp-title="Open New A/c"></a></td>
      <td width="20%" style="border-style: none; border-width: medium" height="19" align="center">
      <p align="center">
      <a href="credit.jsp">
		<img border="0" id="img3" src="images/buttons/buttonC.jpg" height="33" width="100" alt="CREDIT" onmouseover="FP_swapImg(1,0,/*id*/'img3',/*url*/'images/buttons/buttonD.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img3',/*url*/'images/buttons/buttonC.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img3',/*url*/'images/buttons/buttonE.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img3',/*url*/'images/buttons/buttonD.jpg')" fp-style="fp-btn: Metal Tab 1" fp-title="CREDIT"></a>
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="19" align="center">
      <p align="center"><a href="logout.jsp">
		<img border="0" id="img4" src="images/buttons/buttonF.jpg" height="33" width="100" alt="LOGOUT" onmouseover="FP_swapImg(1,0,/*id*/'img4',/*url*/'images/buttons/button10.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img4',/*url*/'images/buttons/buttonF.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img4',/*url*/'images/buttons/button11.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img4',/*url*/'images/buttons/button10.jpg')" fp-style="fp-btn: Metal Tab 1" fp-title="LOGOUT"></a></td>
    </tr>
    </table>
<form method="POST" name="frm" onsubmit="return validateForm()" action="Ac_code.jsp">
      <input type="hidden" name="APN" size="20">
      <input type="hidden" name="random" size="20">

<table border="0" width="100%" height="271">
	<tr>
      <td width="20%" style="border-style: none; border-width: medium" height="17" align="right">
      <font face="arial" color="#747474" size="2"><b>Name :</b></font></td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      <input type="text" name="T1" size="20"></td>
	</tr>
	<tr>
      <td width="20%" style="border-style: none; border-width: medium" height="17" align="right">
      <font face="arial" color="#747474" size="2"><b>A/c No</b></font><b>:</b></td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      <input type="text" name="T2" size="20" value="<%=p%>"></td>
	</tr>
	<tr>
      <td width="20%" style="border-style: none; border-width: medium" align="right" height="20">
      <font face="arial" color="#747474" size="2"><b>Credit card no</b></font><b>:</b></td>
      <td width="20%" style="border-style: none; border-width: medium" height="20">
      <input type="text" readonly name="T3" size="20" value="Auto..."></td>
	</tr>
	<tr>
      <td width="20%" style="border-style: none; border-width: medium" align="right" height="20">
      <font face="arial" color="#747474" size="2"><b>Mobile No</b></font></td>
      <td width="20%" style="border-style: none; border-width: medium" height="20">
      <input type="text" name="T4" size="20"></td>
	</tr>
	<tr>
      <td width="20%" style="border-style: none; border-width: medium" height="24" align="right">
      <font face="arial" color="#747474" size="2"><b>Email</b></font><b>:</b></td>
      <td width="20%" style="border-style: none; border-width: medium" height="24">
      <input type="text" name="T5" size="20"></td>
	</tr>
	<tr>
      <td width="20%" style="border-style: none; border-width: medium" height="17" align="right">
      <font face="arial" color="#747474" size="2"><b>Address</b></font><b>:</b></td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      <input type="text" name="T6" size="20"></td>
	</tr>
	<tr>
      <td width="20%" style="border-style: none; border-width: medium" height="17" align="left">
      <p align="right"><font face="arial" color="#747474" size="2"><b>Credit Amount</b></font><b>:
      </b>
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      <!--webbot bot="Validation" s-data-type="Number" s-number-separators="x," --><input type="text" name="T7" size="20"></td>
	</tr>
	<tr>
      <td width="20%" style="border-style: none; border-width: medium" height="17" align="left">
      <p align="right"><font face="arial" color="#747474" size="2"><b>EXPIRY DATE:&nbsp;&nbsp;
      </b></font>
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      <select size="1" name="exp_month">
                  <option value="0" selected>Month</option>
                  <option value="01">JAN</option>
                  <option value="02">FEB</option>
                  <option value="03">MAR</option>
                  <option value="04">APR</option>
                  <option value="05">MAY</option>
                  <option value="06">JUN</option>
                  <option value="07">JUL</option>
                  <option value="08">AUG</option>
                  <option value="09">SEP</option>
                  <option value="10">OCT</option>
                  <option value="11">NOV</option>
                  <option value="12">DEC</option>
                  </select> &nbsp;&nbsp; <select size="1" name="exp_year">
                  <option value="0" selected>Year</option>
                  <option value="2008">2008</option>
                  <option value="2009">2009</option>
                  <option value="2010">2010</option>
                  <option value="2011">2011</option>
                  <option value="2012">2012</option>
                  <option value="2013">2013</option>
                  <option value="2014">2014</option>
                  <option value="2015">2015</option>
                  <option value="2016">2016</option>
                  <option value="2017">2017</option>
                  <option value="2018">2018</option>
                  <option value="2019">2019</option>
                  <option value="2020">2020</option>
                  </select></td>
	</tr>
	<tr>
      <td width="20%" style="border-style: none; border-width: medium" height="17" align="left">
      <p align="right"><font face="arial" size="2" color="#747474"><b>Account 
      Panel Number : </b></font>
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="17">
      <input type="text" readonly name="T8" size="20" value="Auto..."></td>
	</tr>
	<tr>
      <td width="20%" style="border-style: none; border-width: medium" height="2" align="left">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="2">
      	</td>
	</tr>
	<tr>
      <td width="20%" style="border-style: none; border-width: medium" height="28" align="left">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="28">
      <input type="submit" value="Save" name="B1" style="font-weight: bold"></td>
	</tr>
	</table>
</form>
<table border="0" width="100%">
	<tr>
		<td><jsp:include page="footer.html"/></td>
	</tr>
</table>

<p>&nbsp;</p>

</body>

</html>