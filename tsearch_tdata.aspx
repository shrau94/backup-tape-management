<%@ Page Language="VB" Debug="true" ContentType="text/html" ResponseEncoding="utf-8" aspcompat="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TAPE TRANSFER</title>
<head>
<script language="javascript" type="text/javascript" src="datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com

</script>
</head>
<body bgcolor="Lavender">
<%
			Dim objConn, qry1, objRs, appr,x
			objConn = Server.CreateObject("ADODB.Connection")
			objConn.open("forum", "forum", "forum")
			Dim tdata
			tdata=Request.Form("td1")
			qry1="select * from transfer where data_moved='" & tdata & "' "
			objRs=objConn.Execute(qry1)
%>
<table border="1" width="100%">
<tr>
<td><strong>DATA MOVED</strong></td>
<td><strong>SOURCE</strong></td>
<td><strong>DESTINATION</strong></td>
<td><strong>TRANSFER DATE</strong></td>
<td><strong>REMARKS</strong></td>
</tr>
<%do until objRs.EOF%>
   <tr>
   <%for each x in objRs.Fields%>
      <td><%Response.Write(x.value)%></td>
   <%next
   objRs.MoveNext%>
   </tr>
<%loop
objRs.close
%>
</table>
</body>
</html>