<?php
$id_partie = $_SESSION['id_partie'];


$tableau = array ('bleu', 'vert', 'noir', 'rouge', 'marron', 'gris');
$reponse_ia = $tableau[array_rand($tableau)];




?>





<?php
//traitement de la réponse couleur_cheveux




$couleur_personnage = "SELECT * FROM personnage p, vetement v
WHERE v.ID_vetement = p.ID_vetement
AND ID_partie = :partie 
ORDER BY id 
";
$couleur_personnage = $bdd->prepare($couleur_personnage);
$couleur_personnage->execute(array(
	'partie' => $id_partie
	));
while ($couleur_personnage2= $couleur_personnage->fetch() ) {

		if ($_SESSION['couleur_vetement_joueur'] == $reponse_ia) {



$update_couleur_vetement = "UPDATE personnage p, vetement v SET est_affiche_nj = :affiche WHERE v.ID_vetement = p.ID_vetement AND couleur_vetement <> :ID_vetement AND ID_partie = :partie";
$update_couleur_vetement = $bdd->prepare($update_couleur_vetement);
$update_couleur_vetement->execute(array(
	'affiche' => 0,
	'ID_vetement' => $reponse_ia,
	'partie' => $id_partie
	));


}



else {

  $update_couleur_vetement2 = "UPDATE personnage p,vetement v SET est_affiche_nj = :affiche WHERE v.ID_vetement = p.ID_vetement AND couleur_vetement = :ID_vetement AND ID_partie = :partie";
$update_couleur_vetement2 = $bdd->prepare($update_couleur_vetement2);
$update_couleur_vetement2->execute(array(
	'affiche' => 0,
	'ID_vetement' => $reponse_ia,
	'partie' => $id_partie
	));




	}







}
















?>

