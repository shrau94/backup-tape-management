<%@ Page Language="VB" Debug="true" ContentType="text/html" ResponseEncoding="utf-8" aspcompat="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TAPE BACKUP</title>
<head>
<script language="javascript" type="text/javascript" src="datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com


</script>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />

</head>

<body background="green.jpg">
<h1 align="center"><a href="main.aspx"><img src="logo.jpg" width="45" height="45" /></a> <strong>DATABASE GROUP  
WOB, MUMBAI </strong></h1>
<ul id="MenuBar1" class="MenuBarHorizontal">
  <li><a class="MenuBarItemSubmenu" href="#">BACKUP</a>
    <ul>
      <li><a href="backup.aspx">BACKUP DATA INSERTION</a></li>
      <li><a href="backupsearch.aspx">BACKUP TAPE SEARCH</a></li>
    </ul>
  </li>
  <li><a class="MenuBarItemSubmenu" href="#">DUMP</a>
    <ul>
      <li><a href="dump.aspx">DUMP TAPE DATA INSERTION</a></li>
      <li><a href="dumpsearch.aspx">DUMP TAPE SEARCH</a></li>
    </ul>
  </li>
</ul>
<ul id="MenuBar2" class="MenuBarHorizontal">
  <li><a class="MenuBarItemSubmenu" href="#">TRANSFER</a>
    <ul>
     <li><a href="transfer.aspx">TRANSFER DATA INSERTION</a></li>
      <li><a href="transfersearch.aspx">TRANSFER DATA SEARCH</a></li>
    </ul>
    </li>
</ul>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
var MenuBar2 = new Spry.Widget.MenuBar("MenuBar2", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
<br />
<br />
<br />
<h1 align="Center">Tape Backup</h1>
<br />
<br />
<form name="a" Method="Post" action="backup1.aspx" RunAt="Server" >
<table width="500" border="0" align="Center" style="font-size:20px">
  <tr>
    <td>Tape Number: </td>
    <td><input type='text' id='tNo' name='tNo' /></td>
  </tr>
  <tr>
    <td>Tape Type: </td>
    <td><select name="tType">
  <option value="">select an option</option>
  <option value="LTO-5">LTO-5</option>
  <option value="LTO-6">LTO-6</option>
  <option value="3652">3652</option>
</select></td>
  </tr>
  <tr>
    <td>Contents: </td>
    <td><input type='text' id='content' name='content' /></td>
  </tr>
  <tr>
    <td>Date: </td>
    <td><input type='text' id='bDate' name='bDate' />
<a href="javascript:NewCal('bDate','ddMMMyyyy')"><img src="cal.gif" width="22" height="22" border="0" alt="Pick a date" /></a>
 </td>
  </tr>
  <tr>
    <td>Tape Location:</td>
    <td> <input type='text' id='tLoc' name='tLoc' /></td>
  </tr>
  <tr>
    <td>Remarks: </td>
    <td><input type='text' id='remark' name='remark' /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><br /><input type="Submit" value="Submit"/></td>
  </tr>
</table>
</form>
</body>


