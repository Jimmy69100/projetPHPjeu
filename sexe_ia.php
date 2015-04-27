<?php
$id_partie = $_SESSION['id_partie'];


$tableau = array ('homme', 'femme');
$reponse_ia = $tableau[array_rand($tableau)];
$_SESSION['ia_'] = "un genre : ";



?>





<?php
//traitement de la réponse couleur_cheveux




$couleur_personnage = "SELECT * FROM personnage p, cheveux ch
WHERE ch.ID_cheveux = p.ID_cheveux 
AND ID_partie = :partie 
ORDER BY id 
";
$couleur_personnage = $bdd->prepare($couleur_personnage);
$couleur_personnage->execute(array(
	'partie' => $id_partie
	));
while ($couleur_personnage2= $couleur_personnage->fetch() ) {

		if ($_SESSION['sexe_joueur'] == $reponse_ia) {



$update_couleur_cheveux = "UPDATE personnage p, cheveux c SET est_affiche_nj = :affiche WHERE c.ID_cheveux = p.ID_cheveux AND genre_cheveux <> :ID_cheveux AND ID_partie = :partie";
$update_couleur_cheveux = $bdd->prepare($update_couleur_cheveux);
$update_couleur_cheveux->execute(array(
	'affiche' => 0,
	'ID_cheveux' => $reponse_ia,
	'partie' => $id_partie
	));
$r = 1;

}



else {

  $update_couleur_cheveux2 = "UPDATE personnage p,cheveux c SET est_affiche_nj = :affiche WHERE c.ID_cheveux = p.ID_cheveux AND genre_cheveux = :ID_cheveux AND ID_partie = :partie";
$update_couleur_cheveux2 = $bdd->prepare($update_couleur_cheveux2);
$update_couleur_cheveux2->execute(array(
	'affiche' => 0,
	'ID_cheveux' => $reponse_ia,
	'partie' => $id_partie
	));


$r = 0;

	}







}
















?>

