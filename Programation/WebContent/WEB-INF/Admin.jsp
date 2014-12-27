<%@page import="com.mcnanotech.beans.Coyote"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="ressources/style.css">
<title>Gestionnaire d'accès Multimedia</title>
<link rel="shortcut icon" href="ressources/favicon.ico" />
</head>
<body>
	<div id="bloc_page">
		<header>
			<img src="ressources/images/bannieres/banner_admin.jpg"
				alt="banner.jpg" />
		</header>
		<nav>
			<ul>
				<li><a href="#">Gestion utilisateurs</a></li>
				<li><a href="#">configuration système</a></li>
				<li><a href="#">Aide</a></li>
			</ul>
		</nav>
		<hr>
		<div id="infsys">
			<h1>Info Système</h1>
			<ul>
				<li>Utilisation des consoles: null/16</li>
				<li>Temps quotidien: null</li>
				<li>Prochaine console disponible dans: null</li>
			</ul>
		</div>
		<article>
			<br>

		</article>

		<section id="cx">
			<div id="c1">

				<h2>Console 1</h2>
				<div class="seb">
					<ul>
						<li class="a">Temps restant: null !!</li>
					</ul>
				</div>
				<table>
					<tr>
						<td>Joueur</td>
						<td>Commandes</td>
						<td>Equipement</td>
					</tr>
					<tr>
						<td>null</td>
						<td>
							<button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button>
						</td>
						<td>null</td>
					</tr>
					<tr>
						<td>null</td>
						<td><button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button></td>
						<td>null</td>
					</tr>
					<tr>
						<td>null</td>
						<td><button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button></td>
						<td>null</td>
					</tr>
					<tr>
						<td>null</td>
						<td><button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button></td>
						<td>null</td>
					</tr>
				</table>
			</div>
						<div id="c2">

				<h2>Console 2</h2>
				<div class="seb">
					<ul>
						<li class="a">Temps restant: null !!</li>
					</ul>
				</div>
				<table>
					<tr>
						<td>Joueur</td>
						<td>Commandes</td>
						<td>Equipement</td>
					</tr>
					<tr>
						<td>null</td>
						<td>
							<button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button>
						</td>
						<td>null</td>
					</tr>
					<tr>
						<td>null</td>
						<td><button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button></td>
						<td>null</td>
					</tr>
					<tr>
						<td>null</td>
						<td><button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button></td>
						<td>null</td>
					</tr>
					<tr>
						<td>null</td>
						<td><button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button></td>
						<td>null</td>
					</tr>
				</table>
			</div>
						<div id="c3">

				<h2>Console 3</h2>
				<div class="seb">
					<ul>
						<li class="a">Temps restant: null !!</li>
					</ul>
				</div>
				<table>
					<tr>
						<td>Joueur</td>
						<td>Commandes</td>
						<td>Equipement</td>
					</tr>
					<tr>
						<td>null</td>
						<td>
							<button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button>
						</td>
						<td>null</td>
					</tr>
					<tr>
						<td>null</td>
						<td><button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button></td>
						<td>null</td>
					</tr>
					<tr>
						<td>null</td>
						<td><button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button></td>
						<td>null</td>
					</tr>
					<tr>
						<td>null</td>
						<td><button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button></td>
						<td>null</td>
					</tr>
				</table>
			</div>
						<div id="c4">

				<h2>Console 4</h2>
				<div class="seb">
					<ul>
						<li class="a">Temps restant: null !!</li>
					</ul>
				</div>
				<table>
					<tr>
						<td>Joueur</td>
						<td>Commandes</td>
						<td>Equipement</td>
					</tr>
					<tr>
						<td>null</td>
						<td>
							<button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button>
						</td>
						<td>null</td>
					</tr>
					<tr>
						<td>null</td>
						<td><button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button></td>
						<td>null</td>
					</tr>
					<tr>
						<td>null</td>
						<td><button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button></td>
						<td>null</td>
					</tr>
					<tr>
						<td>null</td>
						<td><button type="button">lock</button>
							<button type="button">Unlock</button>
							<button type="button">Kick</button></td>
						<td>null</td>
					</tr>
				</table>
			</div>
		</section>


		<footer> </footer>

		<p>Ceci est une page générée depuis une JSP.</p>
		<p>
			<%
			    String attribut = (String)request.getAttribute("test");
			    out.println(attribut);

			    String parametre = request.getParameter("auteur");
			    out.println(parametre);
			%>
		</p>
		<p>
			Récupération du bean :
			<%
		    Coyote notreBean = (Coyote)request.getAttribute("coyote");
		    out.println(notreBean.getPrenom());
		    out.println(notreBean.getNom());
		%>
		</p>
	</div>
</body>
</html>