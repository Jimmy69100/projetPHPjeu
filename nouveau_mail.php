<?php include'head.php'; 






$req = $bdd->prepare('UPDATE utilisateur SET mail = :mail WHERE pseudo = :pseudo');
$req->execute(array(
	'mail' => strip_tags($_POST['mail']),
	'pseudo' => $_SESSION['pseudo']

	));
echo ("Votre adresse mail a bien ete change ! redirection vers l'interface utilisateur d'ici peu.");






header ("Refresh: 5;URL=moncompte.php"); //redirection vers URL après 5 secondes.
?>
<?php include'footer.php'; ?>