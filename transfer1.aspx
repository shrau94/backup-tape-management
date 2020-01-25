<%@ Page Language="VB" Debug="true" ContentType="text/html" ResponseEncoding="utf-8" aspcompat="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TAPE TRANSFER</title>
<head></head>
<html>
<body>
<%
			Dim objConn, qry1
			objConn = Server.CreateObject("ADODB.Connection")
			objConn.open("forum", "forum", "forum")
			Dim dataM
			Dim tsource
			Dim tdest
			Dim tdate
			Dim rem1 
			dataM=Request.Form("dMo")
			tsource=Request.Form("source")
			tdest=Request.Form("dest")
			tdate=Request.Form("tDate")
			rem1=Request.Form("remark")
			If dataM<>"" and tsource<>"" and tdest<>"" and tdate<>"" and rem1<>""
			qry1="insert into transfer values ('" & dataM & "','" & tsource & "' , '" & tdest & "' , to_date('" & tdate & "','DD-MM-YY') , '" & rem1 & "');"
			objConn.Execute(qry1)
			else
			response.write("<br /> <h1 style='color:red'>*Enter all the fields in the form</h1>")
			End If
%>
<table width="300" border="0" >
  <tr>
    <td><img src="logo.jpg" height="60" width="60" ></img></td>
    <td><h2>&nbsp;&nbsp;&nbsp;ONGC MUMBAI</h2></td>	
  </tr>
</table>
<table width="500" height="40" border="1">
 <tr>
    <td><h3>Data moved: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>  </td>
    <td>  <%response.write(request.form("dMo")) %>  </td>
  </tr>
<tr>
    <td><h3>Source:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h3></td>
    <td> <%response.write("" & request.form("source")) %> </td>
  </tr>
<tr>
    <td><h3>Destination: </h3></td>
    <td> <%response.write("" & request.form("dest")) %> </td>
  </tr>
<tr>
    <td><h3>Transfer Date: </h3></td>
    <td> <%response.write("" & request.form("tDate")) %> </td>
  </tr>
</table>
</body>
</html>