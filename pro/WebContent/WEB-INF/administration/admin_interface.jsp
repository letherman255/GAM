<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet"
	href="<c:url value="../inc/style.css"/>" />
<title>Interface d'Administration</title>
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
		<div id="infsys">
			<h1>Info Système</h1>
			<ul>
				<li>Utilisation des consoles: ${ st.systemUsage }/16</li>
				<li>Temps quotidien: ${ st.dailyCredit }</li>
				<li>Prochaine console disponible dans: ${ st.nextSystem }</li>
			</ul>
		</div>
		<article>
			<br>

		</article>

		<section id="cx">
			<div class="c">

				<h2>Console 1</h2>
				<div class="seb">
					<ul>
						<li class="a">Temps restant: ${ c1.time }</li>
					</ul>
				</div>
				<table>
					<tr>
						<th>Eq</th>
						<th>Nom</th>
					</tr>
						<c:forEach begin="1" end="4" varStatus="i">
							<tr>
							<td>${i.index}</td>
							<td>
							<c:if test="${c1.getTotalPlayers() > i.index -1}">
							${c1.getPlayers(i.index -1).getUserName()}
							</c:if>
							</td>
							</tr>
						</c:forEach>
				</table>
			</div>
			<div class="c">

				<h2>Console 2</h2>
				<div class="seb">
					<ul>
						<li class="a">Temps restant: ${ c2.time }</li>
					</ul>
				</div>
				<table>
					<tr>
						<th>Eq</th>
						<th>Nom</th>
					</tr>
					<c:if test="${c2.getTotalPlayers()} > 0">
						<c:forEach begin="0" end="${c2.getTotalPlayers()}" varStatus="i">
							<tr>
								<td>${i}</td>
								<td>${c2.getPlayers(i.index).getUserName()}</td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
			<div class="c">

				<h2>Console 3</h2>
				<div class="seb">
					<ul>
						<li class="a">Temps restant: ${ c3.time }</li>
					</ul>
				</div>
				<table>
					<tr>
						<th>Eq</th>
						<th>Nom</th>
					</tr>
					<c:if test="${c3.getTotalPlayers()} > 0">
						<c:forEach begin="0" end="${c3.getTotalPlayers()}" varStatus="i">
							<tr>
								<td>${i}</td>
								<td>${c3.getPlayers(i.index).getUserName()}</td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
			<div class="c">

				<h2>Console 4</h2>
				<div class="seb">
					<ul>
						<li class="a">Temps restant: ${ c4.time }</li>
					</ul>
				</div>
				<table>
					<tr>
						<th>Eq</th>
						<th>Nom</th>
					</tr>
					<c:if test="${c4.getTotalPlayers()} > 0">
						<c:forEach begin="0" end="${c4.getTotalPlayers()}" varStatus="i">
							<tr>
								<td>${i}</td>
								<td>${c4.getPlayers(i.index).getUserName()}</td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
			<div class="c">

				<h2>Console 5</h2>
				<div class="seb">
					<ul>
						<li class="a">Temps restant: ${ c5.time }</li>
					</ul>
				</div>
				<table>
					<tr>
						<th>Eq</th>
						<th>Nom</th>
					</tr>
					<c:if test="${c5.getTotalPlayers()} > 0">
						<c:forEach begin="0" end="${c5.getTotalPlayers()}" varStatus="i">
							<tr>
								<td>${i}</td>
								<td>${c5.getPlayers(i.index).getUserName()}</td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
			<div class="c">

				<h2>Console 6</h2>
				<div class="seb">
					<ul>
						<li class="a">Temps restant: ${ c6.time }</li>
					</ul>
				</div>
				<table>
					<tr>
						<th>Eq</th>
						<th>Nom</th>
					</tr>
					<c:if test="${c6.getTotalPlayers()} > 0">
						<c:forEach begin="0" end="${c6.getTotalPlayers()}" varStatus="i">
							<tr>
								<td>${i}</td>
								<td>${c6.getPlayers(i.index).getUserName()}</td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
		</section>


		<footer> </footer>

		<br>
	</div>

</body>
</html>