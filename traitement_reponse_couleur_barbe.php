<?php include'head.php'; 
$id_partie = $_SESSION['id_partie'];
$reponse = $_POST['couleur_barbe'];
?>
<div id='head2'>
<?php

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

		if ($_SESSION['couleur_barbe'] == $reponse) {



$update_couleur_barbe = "UPDATE personnage p, barbe b SET est_affiche = :affiche WHERE b.ID_barbe = p.ID_barbe AND couleur_barbe <> :ID_barbe AND ID_partie = :partie";
$update_couleur_barbe = $bdd->prepare($update_couleur_barbe);
$update_couleur_barbe->execute(array(
	'affiche' => 0,
	'ID_barbe' => $reponse,
	'partie' => $id_partie
	));


}



else {

  $update_couleur_barbe2 = "UPDATE personnage p,barbe b SET est_affiche = :affiche WHERE b.ID_barbe = p.ID_barbe AND couleur_barbe = :ID_barbe AND ID_partie = :partie";
$update_couleur_barbe2 = $bdd->prepare($update_couleur_barbe2);
$update_couleur_barbe2->execute(array(
	'affiche' => 0,
	'ID_barbe' => $reponse,
	'partie' => $id_partie
	));




	}







}









$tour_ia = array('sexe_ia.php', 'type_vetement_ia.php', 'type_cheveux_ia.php', 'type_vetement_ia.php', 'couleur_cheveux_ia.php', 'couleur_vetement_ia.php', 'couleur_corps_ia.php', 'couleur_lunettes_ia.php', 'couleur_barbe_ia.php', 'couleur_collier_ia.php');
$choix = $tour_ia[array_rand($tour_ia)];




include $choix;

echo "Votre question : le personnage mystere a t-il une barbe ".$reponse." ?", "</br>" ;

if ($_SESSION['couleur_barbe'] == $reponse) {?><p id="ecritraitement"><?php

echo "reponse a votre question : Oui", "</br>";?></p><?php


}

else {?><p id="ecritraitement"><?php

echo "reponse a votre question : Non", "</br>";
}?></p><?php

echo "L'adversaire a pos&eacute; sa question : 
Votre personnage a t-il ".$_SESSION['ia_']." ".$reponse_ia, "?", "</br>";



?>

<?php
header ("Refresh: 5;URL=partie_en_cours.php?id=$id_partie");
include'footer.php';
?>

