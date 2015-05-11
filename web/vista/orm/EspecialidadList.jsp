<!-- "Visual Paradigm: DO NOT MODIFY THIS FILE!"

This is an automatic generated file. It will be regenerated every time 
you generate persistence class.

Modifying its content may cause the program not work, or your work may lost.-->

<!-- Licensee: Universidad de La Frontera
License Type: Academic-->
<html>
<head><title>Especialidad List</title>
</head>
<body>
<center>
<h1>Especialidad List</h1>
<table border="1" width="80%">
	<tr>
		<td>Id(PK)</td>
		<td>Nombre</td>
		<td></td>
	</tr>
<%
modelo.orm.Especialidad[] especialidads = modelo.orm.EspecialidadDAO.listEspecialidadByQuery(null, null);
for(int i = 0; i < especialidads.length; i++) {
		out.print("<tr>");
		out.print("<td>");
		out.print(especialidads[i].getORMID());
		out.print("</td>");
		out.print("<td>");
		out.print(especialidads[i].getNombre());
		out.println("</td>");
		out.print("<td>");
		out.print("<a href=\"Especialidad.jsp?action=search&id=");
		out.print(especialidads[i].getORMID());
		out.print("\">");
		out.print("Edit");
		out.print("</a>");
		out.print("</td>");
		out.println("</td>");
		out.println("</tr>");
}

%>
</table><br>
<a href="index.html">Index page</a>
 | 
<a href="Especialidad.jsp">Add Especialidad</a>
</center>
</body>
</html>
