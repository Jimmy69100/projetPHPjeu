<?php
$id_partie = $_SESSION['id_partie'];


$tableau = array ('noir', 'orange', 'bleu', 'violet', 'vert');
$reponse_ia = $tableau[array_rand($tableau)];




?>





<?php
//traitement de la réponse couleur_cheveux




$couleur_personnage = "SELECT * FROM personnage p, lunettes l
WHERE l.ID_lunettes = p.ID_lunettes
AND ID_partie = :partie 
ORDER BY id 
";
$couleur_personnage = $bdd->prepare($couleur_personnage);
$couleur_personnage->execute(array(
	'partie' => $id_partie
	));
while ($couleur_personnage2= $couleur_personnage->fetch() ) {

		if ($_SESSION['couleur_lunettes_joueur'] == $reponse_ia) {



$update_couleur_lunettes = "UPDATE personnage p, lunettes l SET est_affiche_nj = :affiche WHERE l.ID_lunettes = p.ID_lunettes AND couleur_lunettes <> :ID_lunettes AND ID_partie = :partie";
$update_couleur_lunettes = $bdd->prepare($update_couleur_lunettes);
$update_couleur_lunettes->execute(array(
	'affiche' => 0,
	'ID_lunettes' => $reponse_ia,
	'partie' => $id_partie
	));


}



else {

  $update_couleur_lunettes2 = "UPDATE personnage p,lunettes l SET est_affiche_nj = :affiche WHERE l.ID_lunettes = p.ID_lunettes AND couleur_lunettes = :ID_lunettes AND ID_partie = :partie";
$update_couleur_lunettes2 = $bdd->prepare($update_couleur_lunettes2);
$update_couleur_lunettes2->execute(array(
	'affiche' => 0,
	'ID_lunettes' => $reponse_ia,
	'partie' => $id_partie
	));




	}







}
















?>