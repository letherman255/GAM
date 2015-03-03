<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="./inc/style.css"/>" />
<title>Inscription</title>
</head>
<body>
	<div class="bloc_page">
		<header>
			<img src="./inc/banner_user.jpg" alt="banner.jpg" />
		</header>
		<nav>
			<ul>
				<li><a href="#">Aide</a></li>
				<li><a href="/pro/deconnexion">Déconnexion</a></li>
			</ul>
		</nav>
		<hr>
		<div id="infsys">
			<h1>Mon Compte</h1>
			<table>
				<tr>
					<th>Crédit restant</th>
					<th>Temps restant</th>
					<th>Système Utilisé</th>
					<th>Nom d'utilisateur</th>
				</tr>
				<tr>
					<td>
						<div class="progress-bar blue stripes">
							<span style="width: ${ systemuserinf.creditPercentage }%"></span>
						</div>
					</td>
					<td>${ systemuserinf.creditLeft }</td>
					<td>${ systemuserinf.peripheral }</td>
					<td>${ systemuserinf.username }</td>
				</tr>
			</table>
			<br>
			<c:if test="${sessionScope.isingame eq 'false' }">
			<fieldset>
				<legend>Jouer</legend>
				<form method="post" action="userinterface">

					<label for="system">Console et Manette</label> <select id="system" name="system">
						<option value="sys1">Xbox 1</option>
						<option value="sys2">Xbox 2</option>
						<option value="sys3">Xbox 3</option>
						<option value="sys4">Xbox 4</option>
						<option value="sys5">Xbox 5</option>
						<option value="sys6">Xbox 6</option>
					</select> <select id="peripheral" name="peripheral">
						<option value="sysa">Manette 1</option>
						<option value="sysb">Manette 2</option>
						<option value="sysc">Manette 3</option>
						<option value="sysd">Manette 4</option>
					</select> <input type="submit" value="Jouer" /><span class="erreur">${form.errors['system']}</span><br>

				</form>
			</fieldset>
			<br>
			</c:if>
			<c:if test="${sessionScope.isingame eq 'true' }">
			<fieldset>
				<legend>Jouer</legend>

			
				<button onclick="window.location.href='stop'" class="bcenter">Arreter de jouer</button>

			</fieldset>
			<br>
			</c:if>
		</div>
		<br>
</body>
</html>