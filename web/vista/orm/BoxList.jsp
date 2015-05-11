<!-- "Visual Paradigm: DO NOT MODIFY THIS FILE!"

This is an automatic generated file. It will be regenerated every time 
you generate persistence class.

Modifying its content may cause the program not work, or your work may lost.-->

<!-- Licensee: Universidad de La Frontera
License Type: Academic-->
<html>
<head><title>Box List</title>
</head>
<body>
<center>
<h1>Box List</h1>
<table border="1" width="80%">
	<tr>
		<td>Id(PK)</td>
		<td>Nombre</td>
		<td></td>
	</tr>
<%
modelo.orm.Box[] boxs = modelo.orm.BoxDAO.listBoxByQuery(null, null);
for(int i = 0; i < boxs.length; i++) {
		out.print("<tr>");
		out.print("<td>");
		out.print(boxs[i].getORMID());
		out.print("</td>");
		out.print("<td>");
		out.print(boxs[i].getNombre());
		out.println("</td>");
		out.print("<td>");
		out.print("<a href=\"Box.jsp?action=search&id=");
		out.print(boxs[i].getORMID());
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
<a href="Box.jsp">Add Box</a>
</center>
</body>
</html>
