<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="<c:url value="/inc/style.css"/>" />
<title>Gestion des utilisateurs</title>
</head>
<body>
	<table>
		<tr>
			<th>Identifiant MDL</th>
			<th>Nom</th>
			<th>Pr�nom</th>
			<th>Nom d'utilisateur</th>
		</tr>
		<c:forEach var="i" items="${array}">
			<tr>
				<c:forEach var="j" items="${i}">
					<td><c:out value="${j}" /></td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</body>
</html>