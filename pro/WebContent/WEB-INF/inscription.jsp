<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Inscription</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/style.css"/>" />
    </head>
    <body>
        <form method="post" action="inscription">
            <fieldset>
                <legend>Inscription</legend>
                <p>Vous pouvez vous inscrire via ce formulaire.</p>
                
                <label for="username">Nom d'utilisateur</label>
                <input type="text" id="username" name="username" value="<c:out value="${utilisateur.username}"/>" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['username']}</span>
                <br />

                <label for="password">Mot de passe </label>
                <input type="password" id="password" name="password" value="" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['password']}</span>
                <br />

                <label for="cpassword">Confirmation du mot de passe</label>
                <input type="password" id="cpassword" name="cpassword" value="" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['cpassword']}</span>
                <br />
                
                <label for="mdlid">Identifiant MDL</label>
                <input type="text" id="mdlid" name="mdlid" value="<c:out value="${utilisateur.mdlid}"/>" size="20" maxlength="60" />
                <span class="erreur">${form.erreurs['mdlid']}</span>
                <br />
                
                <label for="name">Nom</label>
                <input type="text" id="name" name="name" value="<c:out value="${utilisateur.name}"/>" size="20" maxlength="60" />
                <span class="erreur">${form.erreurs['name']}</span>
                <br />
                
                <label for="surname">Prénom</label>
                <input type="text" id="surname" name="surname" value="<c:out value="${utilisateur.surname}"/>" size="20" maxlength="60" />
                <span class="erreur">${form.erreurs['surname']}</span>
                <br />




                <input type="submit" value="Inscription" class="sansLabel" />
                <br />
                
                <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
            </fieldset>
        </form>
    </body>
</html>