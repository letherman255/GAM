<%@page import="com.mcnanotech.beans.Coyote"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Le site du zero !</title>
</head>
<body>
	<p>Ceci est une page générée depuis une JSP.</p>
	<p>

		test : ${param.test} <br>
	   auteur: ${param.auteur}<br>
	</p>
	<p>
		Récupération du bean :<br> 
		prenom : ${coyote.prenom}<br> 
		Nom : ${coyote.nom}<br>
 <%
            Integer jourDuMois = (Integer) request.getAttribute( "jour" );
            if ( jourDuMois % 2 == 0 ){
                out.println("Jour pair : " + jourDuMois);
            } else {
                out.println("Jour impair : " + jourDuMois);
            }
            %>
	
</body>
</html>