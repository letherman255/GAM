<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link type="text/css" rel="stylesheet" href="<c:url value="../inc/style.css"/>" />
<title>Inscription</title>
</head>
<body>
	<div class="bloc_page">
		<header>
			<img src="../inc/banner_admin.jpg" alt="banner.jpg" />
		</header>
		<nav>
			<ul>
				<li><a href="/pro/administration/admininterface">Interface Admin</a></li>
				<li><a href="/pro/administration/inscription">Inscription</a></li>
				<li><a href="/pro/administration/usermanager">Gestion utilisateurs</a></li>
				<li><a href="/pro/administration/systemconfig">configuration système</a></li>
				<li><a href="#">Aide</a></li>
				<li><a href="/pro/deconnexion">Déconnexion</a></li>
			</ul>
		</nav>
		<hr>
		<form method="post" action="inscription">
			<fieldset>
				<legend>Inscription</legend>
				<p>Vous pouvez vous inscrire via ce formulaire.</p>

				<label for="username">Nom d'utilisateur</label> <input type="text"
					id="username" name="username"
					value="<c:out value="${utilisateur.username}"/>" size="20"
					maxlength="20" /> <span class="erreur">${form.errors['username']}</span>
				<br /> <label for="password">Mot de passe </label> <input
					type="password" id="password" name="password" value="" size="20"
					maxlength="20" /> <span class="erreur">${form.errors['password']}</span>
				<br /> <label for="cpassword">Confirmation du mot de passe</label>
				<input type="password" id="cpassword" name="cpassword" value=""
					size="20" maxlength="20" /> <span class="erreur">${form.errors['cpassword']}</span>
				<br /> <label for="mdlid">Identifiant MDL</label> <input
					type="text" id="mdlid" name="mdlid"
					value="<c:out value="${utilisateur.mdlid}"/>" size="20"
					maxlength="60" /> <span class="erreur">${form.errors['mdlid']}</span>
				<br /> <label for="name">Nom</label> <input type="text" id="name"
					name="name" value="<c:out value="${utilisateur.name}"/>" size="20"
					maxlength="60" /> <span class="erreur">${form.errors['name']}</span>
				<br /> <label for="surname">Prénom</label> <input type="text"
					id="surname" name="surname"
					value="<c:out value="${utilisateur.surname}"/>" size="20"
					maxlength="60" /> <span class="erreur">${form.errors['surname']}</span>
				<br /> <input type="submit" value="Inscription" class="sansLabel" />
				<br />

				<p class="${empty form.errors ? 'succes' : 'erreur'}">${form.result}</p>
			</fieldset>
		</form>
		<br>
	</div>
</body>
</html>