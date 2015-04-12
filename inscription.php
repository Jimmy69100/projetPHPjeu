<?php include'head.php'; ?>
<div id="inscription">
<a href="index.php" id="home"><img src="accueil/home.png"></a>
<div class="form">
<form action="v_inscription.php" method="post">
	<p>Votre pseudo :<input type="text" name="pseudo" required/></p>
	<p>Votre nom :<input type="text" name="nom" required/></p><br>
	<p>Votre prenom :<input type="text" name="prenom" required/></p>
	<p>Votre email :<input type="email" name="email" required/></p>
	<p>Votre mot de passe :<input type="password" name="mdp" required/></p><br>

</form>
</div>

<?php include'footer.php'; ?>