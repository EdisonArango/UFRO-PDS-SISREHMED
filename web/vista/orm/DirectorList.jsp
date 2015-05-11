<!-- "Visual Paradigm: DO NOT MODIFY THIS FILE!"

This is an automatic generated file. It will be regenerated every time 
you generate persistence class.

Modifying its content may cause the program not work, or your work may lost.-->

<!-- Licensee: Universidad de La Frontera
License Type: Academic-->
<html>
<head><title>Director List</title>
</head>
<body>
<center>
<h1>Director List</h1>
<table border="1" width="80%">
	<tr>
		<td>Id(PK)</td>
		<td>Persona(FK)</td>
		<td></td>
	</tr>
<%
modelo.orm.Director[] directors = modelo.orm.DirectorDAO.listDirectorByQuery(null, null);
for(int i = 0; i < directors.length; i++) {
		out.print("<tr>");
		out.print("<td>");
		out.print(directors[i].getORMID());
		out.print("</td>");
		
		modelo.orm.Persona persona = directors[i].getPersona();
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
		out.print("<a href=\"Director.jsp?action=search&id=");
		out.print(directors[i].getORMID());
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
<a href="Director.jsp">Add Director</a>
</center>
</body>
</html>
