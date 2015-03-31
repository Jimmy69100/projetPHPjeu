<?php include'head.php'; ?>
<div id="connexion">
<form action="traitement.php" method="POST">
	<p>Votre pseudo :<input type="text" name="prenom"/></p>
	<p>Votre mot de passe :<input type="text" name="email"/></p>
	<input id="valide" type="submit" value="Je valide"/>
	<input type="hidden" name="pseudo" value="<?php echo "".$pseudo."" ?>"></input>
	<input type="hidden" name="mdp" value="<?php echo "".$mdp."" ?>"></input>
</form>
<?php include'footer.php'; ?>