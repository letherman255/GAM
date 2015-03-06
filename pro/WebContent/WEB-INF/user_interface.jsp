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
					<c:when test="${ systemuserinf.system eq '1a'}">Xbox 1, Manette a</c:when>
					<c:when test="${ systemuserinf.system eq '1b'}">Xbox 1, Manette b</c:when>
					<c:when test="${ systemuserinf.system eq '1c'}">Xbox 1, Manette c</c:when>
					<c:when test="${ systemuserinf.system eq '1d'}">Xbox 1, Manette d</c:when>
					
					<c:when test="${ systemuserinf.system eq '2a'}">Xbox 2, Manette a</c:when>
					<c:when test="${ systemuserinf.system eq '2b'}">Xbox 2, Manette b</c:when>
					<c:when test="${ systemuserinf.system eq '2c'}">Xbox 2, Manette c</c:when>
					<c:when test="${ systemuserinf.system eq '2d'}">Xbox 2, Manette d</c:when>
					
					<c:when test="${ systemuserinf.system eq '3a'}">Xbox 3, Manette a</c:when>
					<c:when test="${ systemuserinf.system eq '3b'}">Xbox 3, Manette b</c:when>
					<c:when test="${ systemuserinf.system eq '3c'}">Xbox 3, Manette c</c:when>
					<c:when test="${ systemuserinf.system eq '3d'}">Xbox 3, Manette d</c:when>
					
					<c:when test="${ systemuserinf.system eq '4a'}">Xbox 4, Manette a</c:when>
					<c:when test="${ systemuserinf.system eq '4b'}">Xbox 4, Manette b</c:when>
					<c:when test="${ systemuserinf.system eq '4c'}">Xbox 4, Manette c</c:when>
					<c:when test="${ systemuserinf.system eq '4d'}">Xbox 4, Manette d</c:when>
					
					<c:when test="${ systemuserinf.system eq '5a'}">Xbox 5, Manette a</c:when>
					<c:when test="${ systemuserinf.system eq '5b'}">Xbox 5, Manette b</c:when>
					<c:when test="${ systemuserinf.system eq '5c'}">Xbox 5, Manette c</c:when>
					<c:when test="${ systemuserinf.system eq '5d'}">Xbox 5, Manette d</c:when>
					
					<c:when test="${ systemuserinf.system eq '6a'}">Xbox 6, Manette a</c:when>
					<c:when test="${ systemuserinf.system eq '6b'}">Xbox 6, Manette b</c:when>
					<c:when test="${ systemuserinf.system eq '6c'}">Xbox 6, Manette c</c:when>
					<c:when test="${ systemuserinf.system eq '6d'}">Xbox 6, Manette d</c:when>
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

						<label for="system">Console et Manette</label> <select id="system"
							name="system">
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


					<button onclick="window.location.href='stop'" class="bcenter">Arreter
						de jouer</button>

				</fieldset>
				<br>
			</c:if>
		</div>
		<br>
</body>
</html>