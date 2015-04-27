<?php include'head.php';  ?>

<div id="head">
<div>


<?php

$req = $bdd->prepare('UPDATE utilisateur SET mail = :mail WHERE pseudo = :pseudo');
$req->execute(array(
	'mail' => strip_tags($_POST['mail']),
	'pseudo' => $_SESSION['pseudo']

	));
?>
<div id="message">
	<?php
echo ("Votre adresse mail a bien &eacutet&eacute chang&eacutee ! Redirection automatique vers l'interface utilisateur en cours ... ");
?>
</div>



<?php


header ("Refresh: 2;URL=moncompte.php"); //redirection vers URL après 2 secondes.
?>
<?php include'footer.php'; ?>