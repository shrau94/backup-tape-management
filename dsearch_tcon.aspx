<%@ Page Language="VB" Debug="true" ContentType="text/html" ResponseEncoding="utf-8" aspcompat="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TAPE DUMP</title>
<head>
<script language="javascript" type="text/javascript" src="datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com

</script>
</head>
<body bgcolor="Lavender">
<%
			Dim objConn, qry1, objRs, appr, x
			objConn = Server.CreateObject("ADODB.Connection")
			objConn.open("forum", "forum", "forum")
			Dim Tloc
			Tloc=Request.Form("dcon")
			qry1="select * from dump where INSTR(data,'" & Tloc & "')>0 "
			objRs=objConn.Execute(qry1)
%>
<table border="1" width="100%">
<tr>
<td><strong>TAPE NUMBER</strong></td>
<td><strong>TAPE TYPE</strong></td>
<td><strong>RECIEVED FROM</strong></td>
<td><strong>DUMP DATE</strong></td>
<td><strong>STORED INTO</strong></td>
<td><strong>TAPE STATUS</strong></td>
<td><strong>DATA</strong></td>
<td><strong>DATA SIZE</strong></td>
<td><strong>OFFICER RESPONSIBLE</strong></td>
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