<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet"
	href="<c:url value="../inc/style.css"/>" />
<title>Configuration Système</title>
</head>
<body>
	<div class="bloc_page">
		<header>
			<img src="../inc/banner_admin.jpg" alt="banner.jpg" />
		</header>
		<nav>
			<ul>
				<li><a href="/pro/administration/admininterface">Interface
						Admin</a></li>
				<li><a href="/pro/administration/inscription">Inscription</a></li>
				<li><a href="/pro/administration/usermanager">Gestion
						utilisateurs</a></li>
				<li><a href="/pro/administration/systemconfig">configuration
						système</a></li>
				<li><a href="#">Aide</a></li>
				<li><a href="/pro/deconnexion">Déconnexion</a></li>
			</ul>
		</nav>
		<hr>
		<form method="post" action="systemconfig">
			<fieldset>
				<legend>Configuration Système</legend>
				<label for="dailyCredit">Crédit quotidien (min)</label> <input
					type="number" id="dailyCredit" name="dailyCredit" size="20"
					maxlength="60"> <span class="erreur">${form.errors['dailyCredit']}</span><br>
				<br> <input type="submit" value="valider" class="sansLabel" /><br>
			</fieldset>
		</form>
		<br>
	</div>

</body>
</html>