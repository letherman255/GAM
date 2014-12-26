<%@page import="com.mcnanotech.beans.Coyote"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="ressources/style.css">
<title>Gestionnaire d'accès Multimedia</title>
<link rel="shortcut icon" href="ressources/favicon.ico"/>
</head>
<body>
	<div id="bloc_page">
		<header> 
			<img src="ressources/images/bannieres/banner_admin.jpg" alt="banner.jpg"/> 
		</header>
		<nav>
			<ul>
				<li><a href="#">Gestion utilisateurs</a></li>
				<li><a href="#">configuration système</a></li>
				<li><a href="#">Aide</a></li>
			</ul>
		</nav>
		<hr>
		<div class="infsys">
			<h1>Info Système</h1> 
		
		</div>
		<article>
		<br>
		</article>
		
		<section id="cx">
		<div id="c1">
			<br><br><br><br><br><br>
			Je suis la console numérot 1 !
		</div>
		
		<div id="c2">
		<br><br><br><br><br><br>
			Je suis la console numérot 2 !
		</div>
		
		<div id="c3">
		<br><br><br><br><br><br>
			Je suis la console numérot 3 !
		</div>
		
		<div id="c4">
		<br><br><br><br><br><br>
			Je suis la console numérot 4 !
		</div>
		</section>
		
		
		<footer>
		
		</footer>
		
	</div>
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
</body>
</html>