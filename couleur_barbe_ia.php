<?php
$id_partie = $_SESSION['id_partie'];


$tableau = array ('gris', 'roux', 'blond', 'noir', 'aucun');
$reponse_ia = $tableau[array_rand($tableau)];
$_SESSION['ia_'] = "une barbe";



?>





<?php
//traitement de la réponse couleur_cheveux




$couleur_personnage = "SELECT * FROM personnage p, barbe b
WHERE b.ID_barbe = p.ID_barbe
AND ID_partie = :partie 
ORDER BY id 
";
$couleur_personnage = $bdd->prepare($couleur_personnage);
$couleur_personnage->execute(array(
	'partie' => $id_partie
	));
while ($couleur_personnage2= $couleur_personnage->fetch() ) {

		if ($_SESSION['couleur_barbe_joueur'] == $reponse_ia) {



$update_couleur_barbe = "UPDATE personnage p, barbe b SET est_affiche_nj = :affiche WHERE b.ID_barbe = p.ID_barbe AND couleur_barbe <> :ID_barbe AND ID_partie = :partie";
$update_couleur_barbe = $bdd->prepare($update_couleur_barbe);
$update_couleur_barbe->execute(array(
	'affiche' => 0,
	'ID_barbe' => $reponse_ia,
	'partie' => $id_partie
	));

$r = 1;
}



else {

  $update_couleur_barbe2 = "UPDATE personnage p, barbe b SET est_affiche_nj = :affiche WHERE b.ID_barbe = p.ID_barbe AND couleur_barbe = :ID_barbe AND ID_partie = :partie";
$update_couleur_barbe2 = $bdd->prepare($update_couleur_barbe2);
$update_couleur_barbe2->execute(array(
	'affiche' => 0,
	'ID_barbe' => $reponse_ia,
	'partie' => $id_partie
	));

$r = 0;


	}







}
















?>