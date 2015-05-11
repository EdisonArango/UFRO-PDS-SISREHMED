<!-- "Visual Paradigm: DO NOT MODIFY THIS FILE!"

This is an automatic generated file. It will be regenerated every time 
you generate persistence class.

Modifying its content may cause the program not work, or your work may lost.-->

<!-- Licensee: Universidad de La Frontera
License Type: Academic-->
<html>
<jsp:useBean id="DirectorBean" scope="page" class="modelo.orm.DirectorProcessor" />
<jsp:setProperty name="DirectorBean" property="*" />
<% String result = DirectorBean.process(); %>

<script language="javascript">
<!--
function perform(command)  {
		form1.action.value = command;
		form1.submit();
		return true;
	}
function listAll()  {
		window.location.href = 'DirectorList.jsp';
		return true;
	}
// -->
</script>
<head><title>Director</title>
</head>
<body>
<h1>Director</h1>
<form method="POST" name="form1" action=Director.jsp>
	<table>
		<tr>
			<td>*Id : </td>
			<td><input type=text name="id" value="<jsp:getProperty name="DirectorBean" property="id"/>" /></td>
		</tr>
		<tr>
			<td>Persona_personaid : </td>
			<td><input type=text name="persona_personaid" value="<jsp:getProperty name="DirectorBean" property="persona_personaid"/>" /></td>
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
