<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Test des objets implicites EL</title>
</head>
<body>
	<p>
		Langue : ${ paramValues.langue[3] } <br /> Article : ${ param.article
		}
	</p>
	<form method="post" action="">
		<p>
			<label for="pays">Dans quel(s) pays avez-vous d�j� voyag� ?</label><br />
			<select name="pays" id="pays" multiple="multiple">
				<option value="france">France</option>
				<option value="espagne">Espagne</option>
				<option value="italie">Italie</option>
				<option value="royaume-uni">Royaume-Uni</option>
				<option value="canada">Canada</option>
				<option value="etats-unis">Etats-Unis</option>
				<option value="chine" selected="selected">Chine</option>
				<option value="japon">Japon</option>
			</select>
		</p>
	</form>
</body>
</html>