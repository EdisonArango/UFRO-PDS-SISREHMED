<!-- "Visual Paradigm: DO NOT MODIFY THIS FILE!"

This is an automatic generated file. It will be regenerated every time 
you generate persistence class.

Modifying its content may cause the program not work, or your work may lost.-->

<!-- Licensee: Universidad de La Frontera
License Type: Academic-->
<html>
<head><title>Paciente List</title>
</head>
<body>
<center>
<h1>Paciente List</h1>
<table border="1" width="80%">
	<tr>
		<td>Id(PK)</td>
		<td>Persona(FK)</td>
		<td></td>
	</tr>
<%
modelo.orm.Paciente[] pacientes = modelo.orm.PacienteDAO.listPacienteByQuery(null, null);
for(int i = 0; i < pacientes.length; i++) {
		out.print("<tr>");
		out.print("<td>");
		out.print(pacientes[i].getORMID());
		out.print("</td>");
		
		modelo.orm.Persona persona = pacientes[i].getPersona();
		if(persona != null) {
			out.print("<td>");
			out.print("<a href=\"Persona.jsp?action=search&id=");
			out.print(persona.getORMID());
			out.print("\">");
			out.print(persona.getORMID());
			out.print("</a>");
			out.println("</td>");
		}
		
		else
 {
out.println("<td></td>");
		}
		
		out.print("<td>");
		out.print("<a href=\"Paciente.jsp?action=search&id=");
		out.print(pacientes[i].getORMID());
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
<a href="Paciente.jsp">Add Paciente</a>
</center>
</body>
</html>
