<?php include'head.php'; ?>
<div id="inscription">
<div class="form">
<form action="traitement.php" method="POST">
	<p>Votre pseudo :<input type="text" name="pseudo"/></p>
	<p>Votre nom :<input type="text" name="nom"/></p><br>
	<p>Votre prenom :<input type="text" name="prenom"/></p>
	<p>Votre email :<input type="text" name="email"/></p>
	<p>Votre mot de passe :<input type="text" name="mdp"/></p><br>
	<input id="valide" type="submit" value="Je valide"/>
	<input type="hidden" name="pseudo" value="<?php echo "".$pseudo."" ?>"></input>
	<input type="hidden" name="nom" value="<?php echo "".$nom."" ?>"></input>
	<input type="hidden" name="prenom" value="<?php echo "".$prenom."" ?>"></input>
	<input type="hidden" name="email" value="<?php echo "".$email."" ?>"></input>
	<input type="hidden" name="mdp" value="<?php echo "".$mdp."" ?>"></input>
</form>
</div>

<?php include'footer.php'; ?>