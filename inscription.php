<?php include'head.php'; ?>
<div id="inscription">
<div class="form">
<form action="v_inscription.php" method="post">
	<p>Votre pseudo :<input type="text" name="pseudo"/></p>
	<p>Votre nom :<input type="text" name="nom"/></p><br>
	<p>Votre prenom :<input type="text" name="prenom"/></p>
	<p>Votre email :<input type="mail" name="email"/></p>
	<p>Votre mot de passe :<input type="pass" name="mdp"/></p><br>
	<input type="submit" value="connexion">

</form>
</div>

<?php include'footer.php'; ?>