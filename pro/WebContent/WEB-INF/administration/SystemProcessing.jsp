<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet"
	href="<c:url value="../inc/style.css"/>" />
<title>Configuration Syst�me</title>
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
				<li><a href="/pro/administration/systemconfig">Controle
						syst�me</a></li>
				<li><a href="#">Aide</a></li>
				<li><a href="/pro/deconnexion">D�connexion</a></li>
			</ul>
		</nav>
		<hr>
		<div class="processing">
			<c:choose>
				<c:when test="${!empty messages['errors']}">
					<span class="erreur"> Une erreur impr�vue est survenue: <br>${messages['errors']}
					</span>
				</c:when>
				<c:when test="${empty messages['errors']}">
					<c:choose>
						<c:when test="${messages.type == 'shutdown'}">Le syst�me va s'arreter.<br></c:when>
						<c:when test="${messages.type == 'restart'}">Le syst�me va red�marer.<br></c:when>
					</c:choose>
				</c:when>
			</c:choose>
		</div>
	</div>

</body>
</html>