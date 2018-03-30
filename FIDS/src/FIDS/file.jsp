<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
<script>
function validateForm()
{
var x=document.frm1.F1.value
if (x==null || x=="")
  {
  alert("Please Choose The Image File Name");
  document.frm1.F1.focus();
  return false;
  }
 }
</script>
</head>

<body>

<form name=frm1 onsubmit="return validateForm()" method="POST" action="filecode.jsp" enctype="multipart/form-data">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-width: 0" bordercolor="#111111" width="100%" id="AutoNumber1">
    <tr>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="34%" style="border-style: none; border-width: medium">&nbsp;</td>
    </tr>
    <tr>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="34%" style="border-style: none; border-width: medium">&nbsp;</td>
    </tr>
    <tr>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="34%" style="border-style: none; border-width: medium">&nbsp;</td>
    </tr>
    <tr>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="34%" style="border-style: none; border-width: medium">&nbsp;</td>
    </tr>
    <tr>
      <td width="100%" style="border-style: none; border-width: medium" colspan="3">
      <input type="file" name="F1" size="26"></td>
    </tr>
    <tr>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="34%" style="border-style: none; border-width: medium">&nbsp;</td>
    </tr>
    <tr>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="33%" style="border-style: none; border-width: medium">
      <input type="submit" value="Upload&gt;&gt;" name="B1"></td>
      <td width="34%" style="border-style: none; border-width: medium">&nbsp;</td>
    </tr>
    <tr>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="34%" style="border-style: none; border-width: medium">&nbsp;</td>
    </tr>
    <tr>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="34%" style="border-style: none; border-width: medium">&nbsp;</td>
    </tr>
    <tr>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="33%" style="border-style: none; border-width: medium">&nbsp;</td>
      <td width="34%" style="border-style: none; border-width: medium">&nbsp;</td>
    </tr>
  </table>
</form>

</body>

</html>