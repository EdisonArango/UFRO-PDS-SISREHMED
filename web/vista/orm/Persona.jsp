<!-- "Visual Paradigm: DO NOT MODIFY THIS FILE!"

This is an automatic generated file. It will be regenerated every time 
you generate persistence class.

Modifying its content may cause the program not work, or your work may lost.-->

<!-- Licensee: Universidad de La Frontera
License Type: Academic-->
<html>
<jsp:useBean id="PersonaBean" scope="page" class="modelo.orm.PersonaProcessor" />
<jsp:setProperty name="PersonaBean" property="*" />
<% String result = PersonaBean.process(); %>

<script language="javascript">
<!--
function perform(command)  {
		form1.action.value = command;
		form1.submit();
		return true;
	}
function listAll()  {
		window.location.href = 'PersonaList.jsp';
		return true;
	}
// -->
</script>
<head><title>Persona</title>
</head>
<body>
<h1>Persona</h1>
<form method="POST" name="form1" action=Persona.jsp>
	<table>
		<tr>
			<td>*Id : </td>
			<td><input type=text name="id" value="<jsp:getProperty name="PersonaBean" property="id"/>" /></td>
		</tr>
		<tr>
			<td>Nombre : </td>
			<td><input type=text name="nombre" value="<jsp:getProperty name="PersonaBean" property="nombre"/>" /></td>
		</tr>
		<tr>
			<td>Apellido : </td>
			<td><input type=text name="apellido" value="<jsp:getProperty name="PersonaBean" property="apellido"/>" /></td>
		</tr>
		<tr>
			<td>Rut : </td>
			<td><input type=text name="rut" value="<jsp:getProperty name="PersonaBean" property="rut"/>" /></td>
		</tr>
		<tr>
			<td>Edad : </td>
			<td><input type=text name="edad" value="<jsp:getProperty name="PersonaBean" property="edad"/>" /></td>
		</tr>
		<tr>
			<td>Direccion : </td>
			<td><input type=text name="direccion" value="<jsp:getProperty name="PersonaBean" property="direccion"/>" /></td>
		</tr>
		<tr>
			<td>Ciudad : </td>
			<td><input type=text name="ciudad" value="<jsp:getProperty name="PersonaBean" property="ciudad"/>" /></td>
		</tr>
		<tr>
			<td>Comuna : </td>
			<td><input type=text name="comuna" value="<jsp:getProperty name="PersonaBean" property="comuna"/>" /></td>
		</tr>
		<tr>
			<td>Login : </td>
			<td><input type=text name="login" value="<jsp:getProperty name="PersonaBean" property="login"/>" /></td>
		</tr>
		<tr>
			<td>Pass : </td>
			<td><input type=text name="pass" value="<jsp:getProperty name="PersonaBean" property="pass"/>" /></td>
		</tr>
		<tr>
			<td>Email : </td>
			<td><input type=text name="email" value="<jsp:getProperty name="PersonaBean" property="email"/>" /></td>
		</tr>
		<tr>
			<td>Status : </td>
			<td><input type=text name="status" value="<jsp:getProperty name="PersonaBean" property="status"/>" /></td>
		</tr>
		<tr>
			<td>Fecha_nacimiento : </td>
			<td><input type=text name="fecha_nacimiento" value="<jsp:getProperty name="PersonaBean" property="fecha_nacimiento"/>" /></td>
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
