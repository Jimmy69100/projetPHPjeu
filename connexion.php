<?php include'head.php'; ?>
<div id="connexion">
<a href="index.php" id="home"><img src="accueil/home.png"></a>
<form id="connex" action="v_connexion.php" method="POST">
	<p>Votre pseudo :<input type="text" name="pseudo"/></p>
	<p>Votre mot de passe :<input type="pass" name="mdp"/></p>
	<input id="valide" type="submit" value="Je valide"/>

</form>
<?php include'footer.php'; ?>