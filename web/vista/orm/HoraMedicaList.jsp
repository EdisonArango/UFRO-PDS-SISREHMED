<!-- "Visual Paradigm: DO NOT MODIFY THIS FILE!"

This is an automatic generated file. It will be regenerated every time 
you generate persistence class.

Modifying its content may cause the program not work, or your work may lost.-->

<!-- Licensee: Universidad de La Frontera
License Type: Academic-->
<html>
<head><title>HoraMedica List</title>
</head>
<body>
<center>
<h1>HoraMedica List</h1>
<table border="1" width="80%">
	<tr>
		<td>Id(PK)</td>
		<td>EsAPS</td>
		<td>Fecha</td>
		<td>Medico(FK)</td>
		<td>Box(FK)</td>
		<td></td>
	</tr>
<%
modelo.orm.HoraMedica[] horaMedicas = modelo.orm.HoraMedicaDAO.listHoraMedicaByQuery(null, null);
for(int i = 0; i < horaMedicas.length; i++) {
		out.print("<tr>");
		out.print("<td>");
		out.print(horaMedicas[i].getORMID());
		out.print("</td>");
		out.print("<td>");
		out.print(horaMedicas[i].getEsAPS());
		out.println("</td>");
		out.print("<td>");
		out.print(horaMedicas[i].getFecha());
		out.println("</td>");
		
		modelo.orm.Medico medico = horaMedicas[i].getMedico();
		if(medico != null) {
			out.print("<td>");
			out.print("<a href=\"Medico.jsp?action=search&id=");
			out.print(medico.getORMID());
			out.print("\">");
			out.print(medico.getORMID());
			out.print("</a>");
			out.println("</td>");
		}
		
		else
 {
out.println("<td></td>");
		}
		
		
		modelo.orm.Box box = horaMedicas[i].getBox();
		if(box != null) {
			out.print("<td>");
			out.print("<a href=\"Box.jsp?action=search&id=");
			out.print(box.getORMID());
			out.print("\">");
			out.print(box.getORMID());
			out.print("</a>");
			out.println("</td>");
		}
		
		else
 {
out.println("<td></td>");
		}
		
		out.print("<td>");
		out.print("<a href=\"HoraMedica.jsp?action=search&id=");
		out.print(horaMedicas[i].getORMID());
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
<a href="HoraMedica.jsp">Add HoraMedica</a>
</center>
</body>
</html>
