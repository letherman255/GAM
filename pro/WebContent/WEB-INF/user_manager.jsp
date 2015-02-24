<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet"href="<c:url value="/inc/style.css"/>" />
<title>Gestion des utilisateurs</title>
</head>
<body>
	<div class="bloc_page">
		<header> <img src="inc/banner_admin.jpg" alt="banner.jpg" />
		</header>
		<nav>
		<ul>
			<li><a href="/pro/inscription">Inscription</a></li>
			<li><a href="/pro/usermanager">Gestion utilisateurs</a></li>
			<li><a href="#">configuration système</a></li>
			<li><a href="#">Aide</a></li>
			<li><a href="/pro/deconnexion">Déconnexion</a></li>
		</ul>
		</nav>
		<hr>
		<form method="post" action="usermanager">
			<fieldset>
				<legend>Outils</legend>
				<label for="mdlid">Supprimer l'utilisateur</label> <input
					type="text" id="mdlid" name="mdlid" size="20" maxlength="60">
				<span class="erreur">${form.erreurs['mdlid']}</span><br> <br>
				<input type="submit" value="Supprimer" class="sansLabel" /><br>

			</fieldset>
		</form>
		<br>
		<table>
			<tr>
				<th>Identifiant MDL</th>
				<th>Nom</th>
				<th>Prénom</th>
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
		<br>
	</div>

</body>
</html>