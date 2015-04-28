<?php include'head.php'; 
$id_partie = $_SESSION['id_partie'];
$reponse = $_POST['sexe'];
?>
<div id='head'>
<?php

?>





<?php
//traitement de la réponse couleur_cheveux




$couleur_personnage = "SELECT * FROM personnage p, cheveux c
WHERE c.ID_cheveux = p.ID_cheveux 
AND ID_partie = :partie 
ORDER BY id 
";
$couleur_personnage = $bdd->prepare($couleur_personnage);
$couleur_personnage->execute(array(
	'partie' => $id_partie
	));
while ($couleur_personnage2= $couleur_personnage->fetch() ) {

		if ($_SESSION['sexe'] == $reponse) {



$update_couleur_collier = "UPDATE personnage p, cheveux c SET est_affiche = :affiche WHERE c.ID_cheveux = p.ID_cheveux AND genre_cheveux <> :ID_cheveux AND ID_partie = :partie";
$update_couleur_collier = $bdd->prepare($update_couleur_collier);
$update_couleur_collier->execute(array(
	'affiche' => 0,
	'ID_cheveux' => $reponse,
	'partie' => $id_partie
	));


}



else {

  $update_couleur_collier2 = "UPDATE personnage p,cheveux c SET est_affiche = :affiche WHERE c.ID_cheveux = p.ID_cheveux AND genre_cheveux = :ID_cheveux AND ID_partie = :partie";
$update_couleur_collier2 = $bdd->prepare($update_couleur_collier2);
$update_couleur_collier2->execute(array(
	'affiche' => 0,
	'ID_cheveux' => $reponse,
	'partie' => $id_partie
	));




	}







}


$tour_ia = array('sexe_ia.php', 'type_vetement_ia.php', 'type_cheveux_ia.php', 'type_vetement_ia.php', 'couleur_cheveux_ia.php', 'couleur_vetement_ia.php', 'couleur_corps_ia.php', 'couleur_lunettes_ia.php', 'couleur_barbe_ia.php', 'couleur_collier_ia.php');
$choix = $tour_ia[array_rand($tour_ia)];




include $choix;


echo "Votre question : le personnage mystere est-il un/une ".$reponse." ?", "</br>" ;

if ($_SESSION['sexe'] == $reponse) {

echo "reponse a votre question : Oui", "</br>";

}

else {

echo "reponse a votre question : Non", "</br>";
}



echo "L'adversaire a posé sa question : 
Votre personnage a t-il ".$_SESSION['ia_']." ".$reponse_ia, "?", "</br>";



?>

<?php
header ("Refresh: 5;URL=partie_en_cours.php?id=$id_partie");
include'footer.php';
?>
