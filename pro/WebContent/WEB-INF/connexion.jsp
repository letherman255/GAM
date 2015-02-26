<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Connexion</title>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/inc/style.css"/>" />
</head>
<body>
	<div class="bloc_page">
		<header>
			<img src="inc/banner_admin.jpg" alt="banner.jpg" />
		</header>
		<c:if test="${!empty sessionScope.sessionUtilisateur}">
			<%-- Si l'utilisateur existe en session, alors on affiche son adresse email. --%>
			<nav>
				<ul>
					<li><a href="/pro/administration/inscription">Inscription</a></li>
					<li><a href="/pro/administration/usermanager">Gestion utilisateurs</a></li>
					<li><a href="#">configuration système</a></li>
					<li><a href="#">Aide</a></li>
					<li><a href="/pro/deconnexion">Déconnexion</a></li>
				</ul>
			</nav>
			<hr>
			</p>
		</c:if>

		<form method="post" action="connexion">
			<fieldset>
				<legend>Connexion</legend>
				<p>Vous pouvez vous connecter via ce formulaire.</p>

				<label for="nom">Nom d'utilisateur</label> <input type="text"
					id="username" name="username"
					value="<c:out value="${user.username}"/>" size="20" maxlength="60" />
				<span class="erreur">${form.errors['username']}</span> <br> <label
					for="password">Mot de passe </label> <input type="password"
					id="password" name="password" value="" size="20" maxlength="20" />
				<span class="erreur">${form.errors['password']}</span> <br> <input
					type="submit" value="Connexion" class="sansLabel" />


				<p class="${empty form.errors ? 'succes' : 'erreur'}">${form.result}</p>

				<%-- Vérification de la présence d'un objet utilisateur en session --%>
				<c:if test="${!empty sessionScope.sessionUtilisateur}">
					<%-- Si l'utilisateur existe en session, alors on affiche son adresse email. --%>
					<p class="succes">Vous êtes connecté(e) avec le compte :
						${sessionScope.sessionUtilisateur.username}</p>
				</c:if>
			</fieldset>
		</form>
		<br>
	</div>
</body>
</html>