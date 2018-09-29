<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://personal.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
	<thead>
		<tr>
			<th>NOMBRE</th>
			<th>EMAIL</th>
			<th>NIVEL</th>
			<th>LENGUAJES</th>
			<th>COMENTARIO</th>
		</tr>
	</thead>
	<tbody>		
		<c:forEach var="registro" items="${listaContactos}">
			<tr>
				<td>${registro.nombre}</td>
				<td>${registro.email}</td>
				<td>${registro.nivel}</td>
				<td>${registro.lenguajes}</td>
				<td>${registro.comentario}</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
</body>
</html>