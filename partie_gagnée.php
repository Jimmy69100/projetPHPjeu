<?php include'head.php'; 
$id_partie = strip_tags($_GET['id']);
$reponse_nom = $_POST['nom'];
$nom_a_deviner = $_SESSION['mystere_nj'];
?>
<div id='tableau'>


<?php
if ($reponse_nom == $nom_a_deviner) {
	echo "Felicitation, partie gagne !";
}

else {

	echo "Désolé, ce n'est pas la bonne réponse ! retentez votre chance.";
	header ("Refresh: 5;URL=partie_en_cours.php");
}
?>

<?php
echo "Felicitation ! vous avez gagné la partie !";






















<?php
include'footer.php';
?>