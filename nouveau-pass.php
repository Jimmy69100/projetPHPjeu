<?php include'head.php'; 
?>

<div id="head">
<div>


<?php
$mdp = sha1($_POST['pass']);




$req = $bdd->prepare('UPDATE utilisateur SET mdp = :mdp WHERE pseudo = :pseudo');
$req->execute(array(
	'mdp' => $mdp,
	'pseudo' => $_SESSION['pseudo']

	));
echo ("Votre mot de passe a bien été modifié! ");






header ("Refresh: 5;URL=moncompte.php"); //redirection vers URL après 5 secondes.
?>
<?php include'footer.php'; ?>