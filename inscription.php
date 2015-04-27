<?php include'head.php'; ?>
<div id="inscription">
<div class="form">
<form action="v_inscription.php" method="post">
	<div id="forminscription" >
	<p>Votre pseudo <input type="text" name="pseudo" required/></p>
	<p>Votre nom <input type="text" name="nom" required/></p><br>
	<p>Votre pr&eacutenom <input type="text" name="prenom" required/></p>
	<p>Votre email <input type="email" name="email" required/></p>
	<p>Votre mot de passe <input type="password" name="mdp" required/></p><br>
	<input id="boutoninscrip" type="image" src="accueil/Inscription.png">
	</div>
</form>
</div>

<?php include'footer.php'; ?>