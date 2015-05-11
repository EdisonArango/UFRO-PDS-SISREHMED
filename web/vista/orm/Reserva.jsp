<!-- "Visual Paradigm: DO NOT MODIFY THIS FILE!"

This is an automatic generated file. It will be regenerated every time 
you generate persistence class.

Modifying its content may cause the program not work, or your work may lost.-->

<!-- Licensee: Universidad de La Frontera
License Type: Academic-->
<html>
<jsp:useBean id="ReservaBean" scope="page" class="modelo.orm.ReservaProcessor" />
<jsp:setProperty name="ReservaBean" property="*" />
<% String result = ReservaBean.process(); %>

<script language="javascript">
<!--
function perform(command)  {
		form1.action.value = command;
		form1.submit();
		return true;
	}
function listAll()  {
		window.location.href = 'ReservaList.jsp';
		return true;
	}
// -->
</script>
<head><title>Reserva</title>
</head>
<body>
<h1>Reserva</h1>
<form method="POST" name="form1" action=Reserva.jsp>
	<table>
		<tr>
			<td>*Id : </td>
			<td><input type=text name="id" value="<jsp:getProperty name="ReservaBean" property="id"/>" /></td>
		</tr>
		<tr>
			<td>Paciente_pacienteid : </td>
			<td><input type=text name="paciente_pacienteid" value="<jsp:getProperty name="ReservaBean" property="paciente_pacienteid"/>" /></td>
		</tr>
		<tr>
			<td>HoraMedica_horaMedicaid : </td>
			<td><input type=text name="horaMedica_horaMedicaid" value="<jsp:getProperty name="ReservaBean" property="horaMedica_horaMedicaid"/>" /></td>
		</tr>
		<tr>
			<td>PersonaQueRegistra_personaid : </td>
			<td><input type=text name="personaQueRegistra_personaid" value="<jsp:getProperty name="ReservaBean" property="personaQueRegistra_personaid"/>" /></td>
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
