<?php include'head.php'; 
$_SESSION['id_partie'] = $_GET['id'];
?>
<div id='head'>




<p id="gagner"><?php
echo "L'ordinateur a gagn&eacute; la partie !";?></p>
<a href="nouvellepartie.php"><img src="accueil/Nouvellepartie.png"></a>
<?php



$partie_gagnee = "UPDATE partie SET partie_finis = :partis WHERE ID_partie = :partie";
 $partie_gagnee = $bdd->prepare($partie_gagnee);
$partie_gagnee->execute(array(
	'partie' => $_SESSION['id_partie'],
	'partis' => 1
	));

$user = "SELECT * FROM utilisateur WHERE pseudo = :utilisateur";
$user = $bdd->prepare($user);
$user->execute(array(
    'utilisateur' => $_SESSION['pseudo']
    ));

while ($user2= $user->fetch() ) {
	$_SESSION['nb_partie_perdu'] = $user2['nb_partie_perdu'];
}
$_SESSION['nb_partie_perdu'] = $_SESSION['nb_partie_perdu'] + 1;

$nb_partie_perdu = "UPDATE utilisateur SET nb_partie_perdu = :nb_partis WHERE pseudo = :utilisateur";
 $nb_partie_perdu = $bdd->prepare($nb_partie_perdu);
$nb_partie_perdu->execute(array(
	'nb_partis' => $_SESSION['nb_partie_perdu'],
	'utilisateur' => $_SESSION['pseudo']
	));









?>
<?php
include'footer.php';
?>