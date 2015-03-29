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
					<c:if test="${sessionScope.isingame eq 'true' }"><td>
					<c:choose>
					<c:when test="${ systemuserinf.system eq '1'}">Xbox 1</c:when>				
					<c:when test="${ systemuserinf.system eq '2'}">Xbox 2</c:when>
					<c:when test="${ systemuserinf.system eq '3'}">Xbox 3</c:when>
					<c:when test="${ systemuserinf.system eq '4'}">Xbox 4</c:when>
					<c:when test="${ systemuserinf.system eq '5'}">Xbox 5</c:when>
					<c:when test="${ systemuserinf.system eq '6'}">Xbox 6</c:when>
					</c:choose></td></c:if>
					<c:if test="${sessionScope.isingame eq 'false' }"><td>Aucun</td></c:if>
					<td>${ systemuserinf.username }</td>
				</tr>
			</table>
			<br>
			<c:if test="${sessionScope.isingame eq 'false' }">
				<fieldset>
					<legend>Jouer</legend>
					<form method="post" action="userinterface">

						<label for="system">Console :</label> <select id="system"
							name="system">
							<option value="1">Xbox 1</option>
							<option value="2">Xbox 2</option>
							<option value="3">Xbox 3</option>
							<option value="4">Xbox 4</option>
							<option value="5">Xbox 5</option>
							<option value="6">Xbox 6</option>
						</select> <input type="submit" value="Jouer" /><span class="erreur">${form.errors['system']}</span><br>

					</form>
				</fieldset>
				<br>
			</c:if>
			<c:if test="${sessionScope.isingame eq 'true' }">
				<fieldset>
					<legend>Jouer</legend>


					<button onclick="window.location.href='stop'" class="bcenter">Arreter
						de jouer</button><br><span class="erreur">${form.errors['system']}</span>

				</fieldset>
				<br>
			</c:if>
		</div>
		<br>
</body>
</html>