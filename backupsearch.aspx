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
<h1 align="Center">Tape Backup Search</h1>
<form name="a" Method="Post" action="backupsearch.aspx" RunAt="Server">
<table width="500" border="0" align="Center" style="font-size:20px">
<tr>
    <td>&nbsp;</td>
    <td><br /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><h2>Search by:</h2><br /></td>
  </tr>
    <tr>
    <td>Select to search:</td>
    <td><select name="bsearch">
  <option value="stno">Select by Tape number</option>
  <option value="sttype">Select by tape type</option>
  <option value="stdate">Select by date</option>
  <option value="stcon">select by tape contents</option>
</select>&nbsp;&nbsp;
<input type="submit" value="Go"></input>
</td>
  </tr>
 
</table>
</form>

<% 
Dim objConn, qry1
			'objConn = Server.CreateObject("ADODB.Connection")
			'objConn.open("ORCL1", "system", "orcl")
			
			Dim Bsearch
			Bsearch=Request.Form("bsearch")
		If Bsearch="stno" Then
		response.write("<br /><br /><br /><form name='a' Method='Post' action='bsearch_tno.aspx' RunAt='Server'>") %>

<table width="500" border="0" align="Center" style="font-size:20px"><tr>
    <td>Enter the tape no.:</td>
    <td><input type='text' id='tNo1' name='tNo1' /> &nbsp;&nbsp;<input type='submit' value='Go'></input> <br /></td>
  </tr></table> </form> 
		<% Else If Bsearch="sttype" Then
		response.write("<form name='a' Method='Post' action='bsearch_ttype.aspx' RunAt='Server'>") %>
<table width="500" border="0" align="Center" style="font-size:20px"><tr>
    <td><br /><br/>select the tape type:</td>
    <td><br /><br/><select name="ttype">
  <option value="LTO-5">&nbsp;&nbsp;LTO-5&nbsp;&nbsp;</option>
  <option value="LTO-6">&nbsp;&nbsp;LTO-6&nbsp;&nbsp;</option>
  <option value="3652">&nbsp;&nbsp;3652&nbsp;&nbsp;</option>
</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /> </td>
  </tr>
<tr>
<td></td>
<td><br /></input><input type='submit' value='Go'></input></td>
</tr>
</table>
 </form> 
		<% Else If Bsearch="stcon" Then
			response.write("<form name='a' Method='Post' action='bsearch_tcon.aspx' RunAt='Server'>") %>
<table width="500" border="0" align="Center" style="font-size:20px"><tr>
    <td><br /><br/>select the content keyword:</td>
    <td><br /><br/> <input type='text' id='bcon' name='bcon' /> &nbsp;&nbsp;<input type='submit' value='Go'></input> <br /> <br /> </td>
  </tr>
</form> 
 <%
		Else If Bsearch="stdate" Then
		response.write("<form name='a' Method='Post' action='bsearch_tdate.aspx' RunAt='Server'> ")%>
<table width="500" border="0" align="Center" style="font-size:20px"><tr>
<tr>
<td>select the from date:</td>
<td><br /><input type='text' id='bDatef' name='bDatef' /> 
 <a href="javascript:NewCal('bDatef' , 'ddMMMyyyy')"><img src='cal.gif' width='22' height='22' border='0' alt='Pick a date' /></a></input></td>
</tr>
<tr>
<td><br />Select the to date: </td>
<td><br /><input type='text' id='bDatet' name='bDatet' /> <a href="javascript:NewCal('bDatet','ddMMMyyyy')"><img src='cal.gif' width='22' height='22' border='0' alt='Pick a date' /></a>  </input></td>
</tr>
<tr>
<td><br /></td>
<td><br /><input type='submit' value='Go'></input></input></td>
</tr>
</table>
</form> 

<%
End If
%>

</body> 





