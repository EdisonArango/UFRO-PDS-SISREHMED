<!-- "Visual Paradigm: DO NOT MODIFY THIS FILE!"

This is an automatic generated file. It will be regenerated every time 
you generate persistence class.

Modifying its content may cause the program not work, or your work may lost.-->

<!-- Licensee: Universidad de La Frontera
License Type: Academic-->
<html>
<head><title>Medico List</title>
</head>
<body>
<center>
<h1>Medico List</h1>
<table border="1" width="80%">
	<tr>
		<td>Id(PK)</td>
		<td>Persona(FK)</td>
		<td>Especialidad(FK)</td>
		<td></td>
	</tr>
<%
modelo.orm.Medico[] medicos = modelo.orm.MedicoDAO.listMedicoByQuery(null, null);
for(int i = 0; i < medicos.length; i++) {
		out.print("<tr>");
		out.print("<td>");
		out.print(medicos[i].getORMID());
		out.print("</td>");
		
		modelo.orm.Persona persona = medicos[i].getPersona();
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
		
		
		modelo.orm.Especialidad especialidad = medicos[i].getEspecialidad();
		if(especialidad != null) {
			out.print("<td>");
			out.print("<a href=\"Especialidad.jsp?action=search&id=");
			out.print(especialidad.getORMID());
			out.print("\">");
			out.print(especialidad.getORMID());
			out.print("</a>");
			out.println("</td>");
		}
		
		else
 {
out.println("<td></td>");
		}
		
		out.print("<td>");
		out.print("<a href=\"Medico.jsp?action=search&id=");
		out.print(medicos[i].getORMID());
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
<a href="Medico.jsp">Add Medico</a>
</center>
</body>
</html>
