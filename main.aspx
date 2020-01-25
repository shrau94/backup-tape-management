<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ONGC</title>
<script type="text/javascript">
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
</script>
<style type="text/css">
#form #jumpMenu {
	font-family: "MS Serif", "New York", serif;
	font-size: 24px;
	font-style: normal;
	font-weight: bold;
	color: #FFF;
	background-color: #000;
	text-align: center;
	position: relative;
	width: auto;
	left: 300px;
	top: 50px;
}
#jumpMenu2 {
	font-family: "MS Serif", "New York", serif;
	font-size: 24px;
	font-style: normal;
	font-weight: bold;
	color: #FFF;
	background-color: #000;
	text-align: center;
	position: relative;
	width: auto;
	left: 300px;
	top: 50px;
}
#form #jumpMenu1 {
	font-family: "MS Serif", "New York", serif;
	font-size: 24px;
	font-style: normal;
	font-weight: bold;
	color: #FFF;
	background-color: #000;
	text-align: center;
	position: relative;
	width: auto;
	left: 300px;
	top: 50px;
}
</style>
</head>

<body background="bg2.jpg">
<h1 align="center"><a href="main.aspx"><img src="logo.jpg" width="45" height="45" /></a> <strong>DATABASE GROUP  
WOB, MUMBAI </strong></h1>
<form name="form" id="form">
  <select name="jumpMenu" id="jumpMenu" onchange="MM_jumpMenu('parent',this,0)">
    <option value="main.aspx">Backup</option>
    <option value="backup.aspx">Backup data Insertion</option>
    <option value="backupsearch.aspx">Backup Search</option>
  </select>
  <select name="jumpMenu2" id="jumpMenu2" onchange="MM_jumpMenu('parent',this,0)">
    <option value="main.aspx">Dump</option>
    <option value="dump.aspx">Dump data Insertion</option>
    <option value="dumpsearch.aspx">Dump Search</option>
  </select>
  <select name="jumpMenu1" id="jumpMenu1" onchange="MM_jumpMenu('parent',this,0)">
    <option value="main.aspx">Transfer</option>
    <option value="transfer.aspx">Transfer data Insertion</option>
    <option value="transfersearch.aspx">Transfer Search</option>
  </select>
</form>
</body>
</html>
