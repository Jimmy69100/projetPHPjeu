<?php include'head.php'; ?>
<div id="connexion">
<form id="connex" action="v_connexion.php" method="POST">
	<p>Votre pseudo :<input type="text" name="pseudo" required/></p>
	<p>Votre mot de passe :<input type="password" name="mdp" required/></p>
	<input id="valide" type="image" src="accueil/connexion.png"/>

</form>
<?php include'footer.php'; ?>