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
		<header> <img src="../inc/banner_admin.jpg" alt="banner.jpg" />
		</header>
		<nav>
		<ul>
			<li><a href="/pro/administration/admininterface">Interface
					Admin</a></li>
			<li><a href="/pro/administration/inscription">Inscription</a></li>
			<li><a href="/pro/administration/usermanager">Gestion utilisateurs</a></li>
			<li><a href="/pro/administration/systemconfig">configuration système</a></li>
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
		<article> <br>

		</article>

		<section id="cx">
		<div class="c">

			<h2>Console 1</h2>
			<div class="seb">
				<ul>
					<li class="a">Temps restant: ${ st.c1time }</li>
				</ul>
			</div>
			<table>
				<tr>
					<th>Eq</th>
					<th>Nom</th>
				</tr>
				<tr>
					<td>1</td>
					<td>${ st.c1aUser }</td>
				</tr>
				<tr>
					<td>2</td>
					<td>${ st.c1bUser }</td>
				</tr>
				<tr>
					<td>3</td>
					<td>${ st.c1cUser }</td>
				</tr>
				<tr>
					<td>4</td>
					<td>${ st.c1dUser }</td>
				</tr>
			</table>
		</div>
		<div class="c">

			<h2>Console 2</h2>
			<div class="seb">
				<ul>
					<li class="a">Temps restant: ${ st.c2time }</li>
				</ul>
			</div>
			<table>
				<tr>
					<th>Eq</th>
					<th>Nom</th>
				</tr>
				<tr>
					<td>1</td>
					<td>${ st.c2aUser }</td>
				</tr>
				<tr>
					<td>2</td>
					<td>${ st.c2bUser }</td>
				</tr>
				<tr>
					<td>3</td>
					<td>${ st.c2cUser }</td>
				</tr>
				<tr>
					<td>4</td>
					<td>${ st.c2dUser }</td>
				</tr>
			</table>
		</div>
		<div class="c">

			<h2>Console 3</h2>
			<div class="seb">
				<ul>
					<li class="a">Temps restant: ${ st.c3time }</li>
				</ul>
			</div>
			<table>
				<tr>
					<th>Eq</th>
					<th>Nom</th>
				</tr>
				<tr>
					<td>1</td>
					<td>${ st.c3aUser }</td>
				</tr>
				<tr>
					<td>2</td>
					<td>${ st.c3bUser }</td>
				</tr>
				<tr>
					<td>3</td>
					<td>${ st.c3cUser }</td>
				</tr>
				<tr>
					<td>4</td>
					<td>${ st.c3dUser }</td>
				</tr>
			</table>
		</div>
		<div class="c">

			<h2>Console 4</h2>
			<div class="seb">
				<ul>
					<li class="a">Temps restant: ${ st.c4time }</li>
				</ul>
			</div>
			<table>
				<tr>
					<th>Eq</th>
					<th>Nom</th>
				</tr>
				<tr>
					<td>1</td>
					<td>${ st.c4aUser }</td>
				</tr>
				<tr>
					<td>2</td>
					<td>${ st.c4bUser }</td>
				</tr>
				<tr>
					<td>3</td>
					<td>${ st.c4cUser }</td>
				</tr>
				<tr>
					<td>4</td>
					<td>${ st.c4dUser }</td>
				</tr>
			</table>
		</div>
		<div class="c">

			<h2>Console 5</h2>
			<div class="seb">
				<ul>
					<li class="a">Temps restant: ${ st.c5time }</li>
				</ul>
			</div>
			<table>
				<tr>
					<th>Eq</th>
					<th>Nom</th>
				</tr>
				<tr>
					<td>1</td>
					<td>${ st.c5aUser }</td>
				</tr>
				<tr>
					<td>2</td>
					<td>${ st.c5bUser }</td>
				</tr>
				<tr>
					<td>3</td>
					<td>${ st.c5cUser }</td>
				</tr>
				<tr>
					<td>4</td>
					<td>${ st.c5dUser }</td>
				</tr>
			</table>
		</div>
		<div class="c">

			<h2>Console 6</h2>
			<div class="seb">
				<ul>
					<li class="a">Temps restant: ${ st.c6time }</li>
				</ul>
			</div>
			<table>
				<tr>
					<th>Eq</th>
					<th>Nom</th>
				</tr>
				<tr>
					<td>1</td>
					<td>${ st.c6aUser }</td>
				</tr>
				<tr>
					<td>2</td>
					<td>${ st.c6bUser }</td>
				</tr>
				<tr>
					<td>3</td>
					<td>${ st.c6cUser }</td>
				</tr>
				<tr>
					<td>4</td>
					<td>${ st.c6dUser }</td>
				</tr>
			</table>
		</div>
		</section>


		<footer> </footer>

		<br>
	</div>

</body>
</html>