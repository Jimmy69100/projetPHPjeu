<?php include'head.php'; 
$id_partie = $_SESSION['id_partie'];
$reponse = $_POST['couleur_collier'];
?>
<div id='tableau'>
<?php

?>





<?php
//traitement de la réponse couleur_cheveux




$couleur_personnage = "SELECT * FROM personnage p, collier c
WHERE c.ID_collier = p.ID_collier 
AND ID_partie = :partie 
ORDER BY id 
";
$couleur_personnage = $bdd->prepare($couleur_personnage);
$couleur_personnage->execute(array(
	'partie' => $id_partie
	));
while ($couleur_personnage2= $couleur_personnage->fetch() ) {

		if ($_SESSION['couleur_collier'] == $reponse) {



$update_couleur_collier = "UPDATE personnage p, collier c SET est_affiche = :affiche WHERE c.ID_collier = p.ID_collier AND couleur_collier <> :ID_collier AND ID_partie = :partie";
$update_couleur_collier = $bdd->prepare($update_couleur_collier);
$update_couleur_collier->execute(array(
	'affiche' => 0,
	'ID_collier' => $reponse,
	'partie' => $id_partie
	));


}



else {

  $update_couleur_collier2 = "UPDATE personnage p,collier c SET est_affiche = :affiche WHERE c.ID_collier = p.ID_collier AND couleur_collier = :ID_collier AND ID_partie = :partie";
$update_couleur_collier2 = $bdd->prepare($update_couleur_collier2);
$update_couleur_collier2->execute(array(
	'affiche' => 0,
	'ID_collier' => $reponse,
	'partie' => $id_partie
	));




	}







}


$tour_ia = array('couleur_cheveux_ia.php', 'couleur_vetement_ia.php', 'couleur_corps_ia.php', 'couleur_lunettes_ia.php', 'couleur_barbe_ia.php', 'couleur_collier_ia.php');
$choix = $tour_ia[array_rand($tour_ia)];




include $choix;


echo "Votre question : le personnage mystere a t-il un collier ".$reponse." ?", "</br>" ;

if ($_SESSION['couleur_collier'] == $reponse) {

echo "reponse a votre question : Oui", "</br>";

}

else {

echo "reponse a votre question : Non", "</br>";
}



echo "L'adversaire a posé sa question : 
Votre personnage a t-il ".$_SESSION['ia_']." de couleur ".$reponse_ia, "</br>";

if ($r = 1) {
echo "reponse a la question de votre adversaire : Oui", "</br>";
}

if ($r = 0) {
	echo "reponse a la question de votre adversaire : Non", "</br>";
}

?>

<?php
header ("Refresh: 5;URL=partie_en_cours.php?id=$id_partie");
include'footer.php';
?>
