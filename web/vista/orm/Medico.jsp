<!-- "Visual Paradigm: DO NOT MODIFY THIS FILE!"

This is an automatic generated file. It will be regenerated every time 
you generate persistence class.

Modifying its content may cause the program not work, or your work may lost.-->

<!-- Licensee: Universidad de La Frontera
License Type: Academic-->
<html>
<jsp:useBean id="MedicoBean" scope="page" class="modelo.orm.MedicoProcessor" />
<jsp:setProperty name="MedicoBean" property="*" />
<% String result = MedicoBean.process(); %>

<script language="javascript">
<!--
function perform(command)  {
		form1.action.value = command;
		form1.submit();
		return true;
	}
function listAll()  {
		window.location.href = 'MedicoList.jsp';
		return true;
	}
// -->
</script>
<head><title>Medico</title>
</head>
<body>
<h1>Medico</h1>
<form method="POST" name="form1" action=Medico.jsp>
	<table>
		<tr>
			<td>*Id : </td>
			<td><input type=text name="id" value="<jsp:getProperty name="MedicoBean" property="id"/>" /></td>
		</tr>
		<tr>
			<td>Persona_personaid : </td>
			<td><input type=text name="persona_personaid" value="<jsp:getProperty name="MedicoBean" property="persona_personaid"/>" /></td>
		</tr>
		<tr>
			<td>Especialidad_especialidadid : </td>
			<td><input type=text name="especialidad_especialidadid" value="<jsp:getProperty name="MedicoBean" property="especialidad_especialidadid"/>" /></td>
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
