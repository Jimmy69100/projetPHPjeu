<?php include'head.php'; 
?>

<div id="head">


<?php
$mdp = sha1($_POST['pass']);




$req = $bdd->prepare('UPDATE utilisateur SET mdp = :mdp WHERE pseudo = :pseudo');
$req->execute(array(
	'mdp' => $mdp,
	'pseudo' => $_SESSION['pseudo']

	));
?>
<div id="message">
	<?php
echo ("Votre mot de passe a bien &eacutet&eacute modifi&eacute ! Redirection automatique vers l'interface utilisateur en cours ... ");
?>
</div>



<?php

header ("Refresh: 2;URL=moncompte.php"); //redirection vers URL après 2 secondes.
?>
</div>

<?php include'footer.php'; ?>

