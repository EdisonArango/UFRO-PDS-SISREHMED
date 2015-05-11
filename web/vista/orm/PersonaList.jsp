<!-- "Visual Paradigm: DO NOT MODIFY THIS FILE!"

This is an automatic generated file. It will be regenerated every time 
you generate persistence class.

Modifying its content may cause the program not work, or your work may lost.-->

<!-- Licensee: Universidad de La Frontera
License Type: Academic-->
<html>
<head><title>Persona List</title>
</head>
<body>
<center>
<h1>Persona List</h1>
<table border="1" width="80%">
	<tr>
		<td>Id(PK)</td>
		<td>Nombre</td>
		<td>Apellido</td>
		<td>Rut</td>
		<td>Edad</td>
		<td>Direccion</td>
		<td>Ciudad</td>
		<td>Comuna</td>
		<td>Login</td>
		<td>Pass</td>
		<td>Email</td>
		<td>Status</td>
		<td>Fecha_nacimiento</td>
		<td></td>
	</tr>
<%
modelo.orm.Persona[] personas = modelo.orm.PersonaDAO.listPersonaByQuery(null, null);
for(int i = 0; i < personas.length; i++) {
		out.print("<tr>");
		out.print("<td>");
		out.print(personas[i].getORMID());
		out.print("</td>");
		out.print("<td>");
		out.print(personas[i].getNombre());
		out.println("</td>");
		out.print("<td>");
		out.print(personas[i].getApellido());
		out.println("</td>");
		out.print("<td>");
		out.print(personas[i].getRut());
		out.println("</td>");
		out.print("<td>");
		out.print(personas[i].getEdad());
		out.println("</td>");
		out.print("<td>");
		out.print(personas[i].getDireccion());
		out.println("</td>");
		out.print("<td>");
		out.print(personas[i].getCiudad());
		out.println("</td>");
		out.print("<td>");
		out.print(personas[i].getComuna());
		out.println("</td>");
		out.print("<td>");
		out.print(personas[i].getLogin());
		out.println("</td>");
		out.print("<td>");
		out.print(personas[i].getPass());
		out.println("</td>");
		out.print("<td>");
		out.print(personas[i].getEmail());
		out.println("</td>");
		out.print("<td>");
		out.print(personas[i].getStatus());
		out.println("</td>");
		out.print("<td>");
		out.print(personas[i].getFecha_nacimiento());
		out.println("</td>");
		out.print("<td>");
		out.print("<a href=\"Persona.jsp?action=search&id=");
		out.print(personas[i].getORMID());
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
<a href="Persona.jsp">Add Persona</a>
</center>
</body>
</html>
