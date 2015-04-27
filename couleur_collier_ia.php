<?php
$id_partie = $_SESSION['id_partie'];


$tableau = array ('bleu', 'jaune', 'rouge', 'gris', 'aucun');
$reponse_ia = $tableau[array_rand($tableau)];
$_SESSION['ia_'] = "un collier";



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

		if ($_SESSION['couleur_collier_joueur'] == $reponse_ia) {



$update_couleur_lunettes = "UPDATE personnage p, collier c SET est_affiche_nj = :affiche WHERE c.ID_collier = p.ID_collier AND couleur_collier <> :ID_collier AND ID_partie = :partie";
$update_couleur_lunettes = $bdd->prepare($update_couleur_lunettes);
$update_couleur_lunettes->execute(array(
	'affiche' => 0,
	'ID_collier' => $reponse_ia,
	'partie' => $id_partie
	));

$r = 1;
}



else {

  $update_couleur_lunettes2 = "UPDATE personnage p, collier c SET est_affiche_nj = :affiche WHERE c.ID_collier = p.ID_collier AND couleur_collier = :ID_collier AND ID_partie = :partie";
$update_couleur_lunettes2 = $bdd->prepare($update_couleur_lunettes2);
$update_couleur_lunettes2->execute(array(
	'affiche' => 0,
	'ID_collier' => $reponse_ia,
	'partie' => $id_partie
	));
$r = 0;



	}







}
















?>