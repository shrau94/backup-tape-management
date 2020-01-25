<%@ Page Language="VB" Debug="true" ContentType="text/html" ResponseEncoding="utf-8" aspcompat="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TAPE BACKUP</title>
<head></head>
<html>
<body>
<%
			Dim objConn, qry1
			objConn = Server.CreateObject("ADODB.Connection")
			objConn.open("forum", "forum", "forum")
			Dim tno
			Dim ttype
			Dim cont
			Dim bdate
			Dim tloc
			Dim rem1 
			tno=Request.Form("tNo")
			ttype=Request.Form("tType")
			cont=Request.Form("content")
			bdate=Request.Form("bDate")
			tloc=Request.Form("tLoc")
			rem1=Request.Form("remark")
			If tno<>"" and ttype<>"" and cont<>"" and bdate<>"" and tloc<>"" and rem1<>""
			qry1="insert into backup values ('" & tno & "','" & ttype & "' , '" & cont & "' , to_date('" & bdate & "','DD-MM-YY') , '" & tloc & "' , '" & rem1 & "');"
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
    <td><h3>Contents: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>  </td>
    <td>  <%response.write(request.form("content")) %>  </td>
  </tr>
<tr>
    <td><h3>Tape Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h3></td>
    <td> <%response.write("" & request.form("tType")) %> </td>
  </tr>
<tr>
    <td><h3>Tape No.: </h3></td>
    <td> <%response.write("" & request.form("tNo")) %> </td>
  </tr>
<tr>
    <td><h3>Backup Date: </h3></td>
    <td> <%response.write("" & request.form("bDate")) %> </td>
  </tr>
</table>
</body>
</html>