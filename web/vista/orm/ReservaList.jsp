<!-- "Visual Paradigm: DO NOT MODIFY THIS FILE!"

This is an automatic generated file. It will be regenerated every time 
you generate persistence class.

Modifying its content may cause the program not work, or your work may lost.-->

<!-- Licensee: Universidad de La Frontera
License Type: Academic-->
<html>
<head><title>Reserva List</title>
</head>
<body>
<center>
<h1>Reserva List</h1>
<table border="1" width="80%">
	<tr>
		<td>Id(PK)</td>
		<td>Paciente(FK)</td>
		<td>HoraMedica(FK)</td>
		<td>PersonaQueRegistra(FK)</td>
		<td></td>
	</tr>
<%
modelo.orm.Reserva[] reservas = modelo.orm.ReservaDAO.listReservaByQuery(null, null);
for(int i = 0; i < reservas.length; i++) {
		out.print("<tr>");
		out.print("<td>");
		out.print(reservas[i].getORMID());
		out.print("</td>");
		
		modelo.orm.Paciente paciente = reservas[i].getPaciente();
		if(paciente != null) {
			out.print("<td>");
			out.print("<a href=\"Paciente.jsp?action=search&id=");
			out.print(paciente.getORMID());
			out.print("\">");
			out.print(paciente.getORMID());
			out.print("</a>");
			out.println("</td>");
		}
		
		else
 {
out.println("<td></td>");
		}
		
		
		modelo.orm.HoraMedica horaMedica = reservas[i].getHoraMedica();
		if(horaMedica != null) {
			out.print("<td>");
			out.print("<a href=\"HoraMedica.jsp?action=search&id=");
			out.print(horaMedica.getORMID());
			out.print("\">");
			out.print(horaMedica.getORMID());
			out.print("</a>");
			out.println("</td>");
		}
		
		else
 {
out.println("<td></td>");
		}
		
		
		modelo.orm.Persona personaQueRegistra = reservas[i].getPersonaQueRegistra();
		if(personaQueRegistra != null) {
			out.print("<td>");
			out.print("<a href=\"Persona.jsp?action=search&id=");
			out.print(personaQueRegistra.getORMID());
			out.print("\">");
			out.print(personaQueRegistra.getORMID());
			out.print("</a>");
			out.println("</td>");
		}
		
		else
 {
out.println("<td></td>");
		}
		
		out.print("<td>");
		out.print("<a href=\"Reserva.jsp?action=search&id=");
		out.print(reservas[i].getORMID());
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
<a href="Reserva.jsp">Add Reserva</a>
</center>
</body>
</html>
