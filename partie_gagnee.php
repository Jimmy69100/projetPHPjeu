<?php include'head.php'; 
$id_partie = $_SESSION['id_partie'];
$reponse_nom = $_POST['nom'];
$nom_a_deviner = $_SESSION['mystere_nj'];
?>
<div id='tableau'>


<?php
if ($reponse_nom == $nom_a_deviner) {
	echo "Vous avez trouve le nom du personnage mystere adversaire : ".$reponse_nom;
	echo "Felicitation, partie gagne !";

//update de la table partie pour ne plus avoir l'affichage sur la page ds parties en cours

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
	$_SESSION['nb_partie_gagnee'] = $user2['nb_partie_gagnee'];
}
$_SESSION['nb_partie_gagnee'] = $_SESSION['nb_partie_gagnee'] + 1;

$nb_partie_gagnee = "UPDATE utilisateur SET nb_partie_gagnee = :nb_partis";
 $nb_partie_gagnee = $bdd->prepare($nb_partie_gagnee);
$nb_partie_gagnee->execute(array(
	'partie' => $_SESSION['nb_partie_gagnee']
	));
}


//si réponse fausse, retour à la page précédente
else {
	echo "Vous avez tent&é le nom : ".$reponse_nom;
	echo "Désolé, ce n'est pas la bonne réponse ! retentez votre chance.";
	header ("Refresh: 5;URL=partie_en_cours.php?id=$id_partie");
}
?>






















<?php
include'footer.php';
?>