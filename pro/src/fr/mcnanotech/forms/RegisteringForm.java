package fr.mcnanotech.forms;

import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.jasypt.util.password.ConfigurablePasswordEncryptor;

import fr.mcnanotech.beans.User;
import fr.mcnanotech.dao.DAOException;
import fr.mcnanotech.dao.UserDao;

public final class RegisteringForm
{
    private static final String FIELD_USERNAME = "username";
    private static final String FIELD_PASSWORD = "password";
    private static final String FIELD_CPASSWORD = "cpassword";
    private static final String FIELD_MDLID = "mdlid";
    private static final String FIELD_NAME = "name";
    private static final String FIELD_SURNAME = "surname";
    private static final String ALGO_CHIFFREMENT = "SHA-256";

    private String result;
    private Map<String, String> errors = new HashMap<String, String>();

    private UserDao userDao;

    public RegisteringForm(UserDao userDao)
    {
        this.userDao = userDao;
    }

    public String getResult()
    {
        return result;
    }

    public Map<String, String> getErrors()
    {
        return errors;
    }

    public User registerUser(HttpServletRequest request)
    {
        String username = getFieldValue(request, FIELD_USERNAME).toLowerCase();
        if (username != null)
        {
        	username = username.toLowerCase();
        }
        String password = getFieldValue(request, FIELD_PASSWORD).toLowerCase();
        if(password != null)
        {
        	password = password.toLowerCase();
        }
        String cpassword = getFieldValue(request, FIELD_CPASSWORD).toLowerCase();
        if(cpassword != null)
        {
        	cpassword = cpassword.toLowerCase();
        }
        String mdlid = getFieldValue(request, FIELD_MDLID);
        String name = getFieldValue(request, FIELD_NAME);
        String surname = getFieldValue(request, FIELD_SURNAME);

        User user = new User();

        try
        {
            processUsername(username, user);
            processPassword(password, cpassword, user);
            processMDLID(mdlid, user);
            processName(name, user);
            processSurname(surname, user);

            if(errors.isEmpty())
            {
                userDao.create(user);
                result = "Succ�s de l'inscription.";
            }
            else
            {
                result = "�chec de l'inscription.";
            }
        }
        catch(DAOException e)
        {
            result = "�chec de l'inscription : une erreur impr�vue est survenue, merci de r�essayer dans quelques instants.";
            e.printStackTrace();
        }
        return user;
    }

    private void processUsername(String username, User user)
    {
        try
        {
            verifyUsername(username);
        }
        catch(FormValidationException e)
        {
            setError(FIELD_USERNAME, e.getMessage());
        }
        user.setUsername(username);

    }

    private void processPassword(String password, String cpassword, User user)
    {
        try
        {
            verifyPassword(password, cpassword);
        }
        catch(FormValidationException e)
        {
            setError(FIELD_PASSWORD, e.getMessage());
            setError(FIELD_CPASSWORD, null);
        }

        /*
         * Utilisation de la biblioth�que Jasypt pour chiffrer le mot de passe
         * efficacement.
         * L'algorithme SHA-256 est ici utilis�, avec par d�faut un salage
         * al�atoire et un grand nombre d'it�rations de la fonction de hashage.
         * La String retourn�e est de longueur 56 et contient le hash en Base64.
         */
        ConfigurablePasswordEncryptor passwordEncryptor = new ConfigurablePasswordEncryptor();
        passwordEncryptor.setAlgorithm(ALGO_CHIFFREMENT);
        passwordEncryptor.setPlainDigest(false);
        String encryptedpassword = passwordEncryptor.encryptPassword(password);
        System.out.println("le mot de passe est " + encryptedpassword);
        user.setPassword(encryptedpassword);

    }

    private void processMDLID(String mdlid, User user)
    {
        try
        {
            verifyMDLID(mdlid);
        }
        catch(FormValidationException e)
        {
            setError(FIELD_MDLID, e.getMessage());
        }
        user.setMdlid(mdlid);

    }

    private void processName(String name, User user)
    {
        try
        {
            verifyName(name);
        }
        catch(FormValidationException e)
        {
            setError(FIELD_NAME, e.getMessage());
        }
        user.setName(name);

    }

    private void processSurname(String surname, User user)
    {
        try
        {
            verifySurname(surname);
        }
        catch(FormValidationException e)
        {
            setError(FIELD_SURNAME, e.getMessage());
        }
        user.setSurname(surname);
    }

    private void verifyUsername(String username) throws FormValidationException
    {
        if(username != null)
        {
            if(username.length() < 3 || username.length() > 20)
            {
                throw new FormValidationException("V�tre nom d'utilisateur doit contenir entre 3 et 20 caract�res.");
            }
            else if(userDao.find(username, "username") != null)
            {
                throw new FormValidationException("Ce nom d'utilisateur est d�j� utilis�, merci d'en choisir un autre.");
            }
        }
        else
        {
            throw new FormValidationException("Merci de saisir un nom d'utilisateur.");
        }
    }

    private void verifyPassword(String password, String cpassword) throws FormValidationException
    {
        if(password != null && cpassword != null)
        {
            if(!password.equals(cpassword))
            {
                throw new FormValidationException("Les mots de passe entr�s sont diff�rents, merci de les saisir � nouveau.");
            }
            else if(password.length() < 5)
            {
                throw new FormValidationException("Les mots de passe doivent contenir au moins 5 caract�res.");
            }
        }
        else
        {
            throw new FormValidationException("Merci de saisir et confirmer votre mot de passe.");
        }
    }

    private void verifyMDLID(String mdlid) throws FormValidationException
    {
        if(mdlid != null)
        {
            if(!isNumeric(mdlid))
            {
                throw new FormValidationException("L'identifiant MDL doit �tre un nombre.");
            }
            else if(userDao.find(mdlid, "mdlid") != null)
            {
                throw new FormValidationException("Cet identitifiant MDL est d�j� prit.");
            }
        }
        else
        {
            throw new FormValidationException("Merci de saisir un identidiant MDL.");
        }
        if(mdlid.length() > 5)
        {
            throw new FormValidationException("L'identifiant MDL doit �tre comprit entre 0 et 99999");
        }
    }

    private void verifyName(String name) throws FormValidationException
    {
        if(name != null)
        {
            if(name.length() < 3 || name.length() > 20)
            {
                throw new FormValidationException("V�tre nom doit contenir entre 3 et 20 caract�res.");
            }
        }
        else
        {
            throw new FormValidationException("Merci de saisir un nom.");
        }
    }

    private void verifySurname(String surname) throws FormValidationException
    {
        if(surname != null)
        {
            if(surname.length() < 3 || surname.length() > 20)
            {
                throw new FormValidationException("V�tre pr�nom doit contenir entre 3 et 20 caract�res.");
            }
        }
        else
        {
            throw new FormValidationException("Merci de saisir un pr�nom.");
        }
    }

    public static boolean isNumeric(String str)
    {
        NumberFormat formatter = NumberFormat.getInstance();
        ParsePosition pos = new ParsePosition(0);
        formatter.parse(str, pos);
        return str.length() == pos.getIndex();
    }

    /*
     * Ajoute un message correspondant au champ sp�cifi� � la map des erreurs.
     */
    private void setError(String field, String message)
    {
        errors.put(field, message);
    }

    /*
     * M�thode utilitaire qui retourne null si un champ est vide, et son contenu
     * sinon.
     */
    private static String getFieldValue(HttpServletRequest request, String nomChamp)
    {
        String valeur = request.getParameter(nomChamp);
        if(valeur == null || valeur.trim().length() == 0)
        {
            return null;
        }
        else
        {
            return valeur.trim();
        }
    }

}
