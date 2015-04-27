<?php
$id_partie = $_SESSION['id_partie'];


$tableau = array ('normal', 'col-monte', 'col-large', 'cravate');
$reponse_ia = $tableau[array_rand($tableau)];
$_SESSION['ia_'] = "des vetements";



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

		if ($_SESSION['type_vetement_joueur'] == $reponse_ia) {



$update_couleur_cheveux = "UPDATE personnage p, vetement v SET est_affiche_nj = :affiche WHERE v.ID_vetement = p.ID_vetement AND type_vetement <> :ID_vetement AND ID_partie = :partie";
$update_couleur_cheveux = $bdd->prepare($update_couleur_cheveux);
$update_couleur_cheveux->execute(array(
	'affiche' => 0,
	'ID_vetement' => $reponse_ia,
	'partie' => $id_partie
	));
$r = 1;

}



else {

  $update_couleur_cheveux2 = "UPDATE personnage p,vetement v SET est_affiche_nj = :affiche WHERE v.ID_vetement = p.ID_vetement AND type_vetement = :ID_vetement AND ID_partie = :partie";
$update_couleur_cheveux2 = $bdd->prepare($update_couleur_cheveux2);
$update_couleur_cheveux2->execute(array(
	'affiche' => 0,
	'ID_vetement' => $reponse_ia,
	'partie' => $id_partie
	));


$r = 0;

	}







}