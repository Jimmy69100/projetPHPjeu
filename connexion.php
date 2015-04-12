<?php include'head.php'; ?>
<div id="connexion">
<a href="index.php" id="home"><img src="accueil/home.png"></a>
<form id="connex" action="v_connexion.php" method="POST">
	<p>Votre pseudo :<input type="text" name="pseudo"/></p>
	<p>Votre mot de passe :<input type="password" name="mdp"/></p>
	<input id="valide" type="image" src="accueil/connexion.png"/>

</form>
<?php include'footer.php'; ?>