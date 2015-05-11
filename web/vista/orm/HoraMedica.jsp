<!-- "Visual Paradigm: DO NOT MODIFY THIS FILE!"

This is an automatic generated file. It will be regenerated every time 
you generate persistence class.

Modifying its content may cause the program not work, or your work may lost.-->

<!-- Licensee: Universidad de La Frontera
License Type: Academic-->
<html>
<jsp:useBean id="HoraMedicaBean" scope="page" class="modelo.orm.HoraMedicaProcessor" />
<jsp:setProperty name="HoraMedicaBean" property="*" />
<% String result = HoraMedicaBean.process(); %>

<script language="javascript">
<!--
function perform(command)  {
		form1.action.value = command;
		form1.submit();
		return true;
	}
function listAll()  {
		window.location.href = 'HoraMedicaList.jsp';
		return true;
	}
// -->
</script>
<head><title>HoraMedica</title>
</head>
<body>
<h1>HoraMedica</h1>
<form method="POST" name="form1" action=HoraMedica.jsp>
	<table>
		<tr>
			<td>*Id : </td>
			<td><input type=text name="id" value="<jsp:getProperty name="HoraMedicaBean" property="id"/>" /></td>
		</tr>
		<tr>
			<td>EsAPS : </td>
			<td><input type=text name="esAPS" value="<jsp:getProperty name="HoraMedicaBean" property="esAPS"/>" /></td>
		</tr>
		<tr>
			<td>Fecha : </td>
			<td><input type=text name="fecha" value="<jsp:getProperty name="HoraMedicaBean" property="fecha"/>" /></td>
		</tr>
		<tr>
			<td>Medico_medicoid : </td>
			<td><input type=text name="medico_medicoid" value="<jsp:getProperty name="HoraMedicaBean" property="medico_medicoid"/>" /></td>
		</tr>
		<tr>
			<td>Box_boxid : </td>
			<td><input type=text name="box_boxid" value="<jsp:getProperty name="HoraMedicaBean" property="box_boxid"/>" /></td>
		</tr>
	</table>
	<INPUT type="hidden" name="action" value="">
	<hr>
	<INPUT type="button" value="List All" onclick="return listAll();">
	<INPUT type="button" value="Search" onclick="return perform('search');">
	<INPUT type="button" value="Insert" onclick="return perform('insert');">
	<INPUT type="button" value="Update" onclick="return perform('update');">
	<INPUT type="button" value="Delete" onclick="return perform('delete');">
	<INPUT type="reset">
</form>
<hr>
<h3><b>Result :</b><%=result%></h3>
</body>
</html>
