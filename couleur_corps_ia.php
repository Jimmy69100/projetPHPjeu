<?php
$id_partie = $_SESSION['id_partie'];


$tableau = array ('noir', 'blanc');
$reponse_ia = $tableau[array_rand($tableau)];




?>





<?php
//traitement de la réponse couleur_cheveux




$couleur_personnage = "SELECT * FROM personnage p, corp c
WHERE c.ID_corp = p.ID_corp
AND ID_partie = :partie 
ORDER BY id 
";
$couleur_personnage = $bdd->prepare($couleur_personnage);
$couleur_personnage->execute(array(
	'partie' => $id_partie
	));
while ($couleur_personnage2= $couleur_personnage->fetch() ) {

		if ($_SESSION['couleur_corp_joueur'] == $reponse_ia) {



$update_couleur_corp = "UPDATE personnage p, corp c SET est_affiche_nj = :affiche WHERE c.ID_corp = p.ID_corp AND couleur_corp <> :ID_corp AND ID_partie = :partie";
$update_couleur_corp = $bdd->prepare($update_couleur_corp);
$update_couleur_corp->execute(array(
	'affiche' => 0,
	'ID_corp' => $reponse_ia,
	'partie' => $id_partie
	));


}



else {

  $update_couleur_corp2 = "UPDATE personnage p,corp c SET est_affiche_nj = :affiche WHERE c.ID_corp = p.ID_corp AND couleur_corp = :ID_corp AND ID_partie = :partie";
$update_couleur_corp2 = $bdd->prepare($update_couleur_corp2);
$update_couleur_corp2->execute(array(
	'affiche' => 0,
	'ID_corp' => $reponse_ia,
	'partie' => $id_partie
	));




	}







}
















?>

