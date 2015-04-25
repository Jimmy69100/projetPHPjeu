<?php include'head.php'; 
$id_partie = strip_tags($_GET['id']);
?>



<?php


$personnage = "SELECT * FROM personnage p, corp co, cheveux ch, barbe b, collier col, vetement v, lunettes l  
WHERE co.ID_corp = p.ID_corp 
AND ch.ID_cheveux = p.ID_cheveux 
AND b.ID_barbe = p.ID_barbe 
AND col.ID_collier = p.ID_collier 
AND v.ID_vetement = p.ID_vetement 
AND l.ID_lunettes = p.ID_lunettes 
AND ID_partie = :partie 
ORDER BY id 
";
$personnage = $bdd->prepare($personnage);
$personnage->execute(array(
	'partie' => $id_partie
	));
while ($personnage2= $personnage->fetch() ) {

	 if ($personnage2['est_affiche'] == 1) {
				
	?>

 <img src="Corps/<?php echo $personnage2['image_corps']; ?>" /></br>
 <img src="Cheveux/<?php echo $personnage2['image_cheveux']; ?>" /></br>
 <?php
 if ($personnage2['genre_cheveux'] == "homme") {
 	?>
 	<img src="Barbe/<?php echo $personnage2['image_barbe']; ?>" /></br>
 	<?php
 }
 if ($personnage2['genre_cheveux'] == "femme") {
 	?>
 	 <img src="collier/<?php echo $personnage2['image_collier']; ?>" /></br>
 	 <?php
 }
 ?>

 <img src="Lunette/<?php echo $personnage2['image_lunettes']; ?>" /></br>
 <img src="vetement/<?php echo $personnage2['image_vetement']; ?>" /></br>
<?php
	}

}

?>
</br></br></br>

<?php


//selection perso mystere advers



$personnage_myst_nj = "SELECT * FROM personnage p, corp co, cheveux ch, barbe b, collier col, vetement v, lunettes l  
WHERE co.ID_corp = p.ID_corp 
AND ch.ID_cheveux = p.ID_cheveux 
AND b.ID_barbe = p.ID_barbe 
AND col.ID_collier = p.ID_collier 
AND v.ID_vetement = p.ID_vetement 
AND l.ID_lunettes = p.ID_lunettes 
AND ID_partie = :partie 
AND mystere_nj = :myst 
ORDER BY id 
";
$personnage_myst_nj = $bdd->prepare($personnage_myst_nj);
$personnage_myst_nj->execute(array(
	'partie' => $id_partie,
	'myst' => 1
	));
while ($personnage_myst_nj2= $personnage_myst_nj->fetch() ) {
	 if ($personnage_myst_nj2['est_affiche'] == 1) {
				
	?>

 <img src="Corps/<?php echo $personnage_myst_nj2['image_corps']; ?>" /></br>
 <img src="Cheveux/<?php echo $personnage_myst_nj2['image_cheveux']; ?>" /></br>
 <?php
 if ($personnage_myst_nj2['genre_cheveux'] == "homme") {
 	?>
 	<img src="Barbe/<?php echo $personnage_myst_nj2['image_barbe']; ?>" /></br>
 	<?php
 }
 if ($personnage_myst_nj2['genre_cheveux'] == "femme") {
 	?>
 	 <img src="collier/<?php echo $personnage_myst_nj2['image_collier']; ?>" /></br>
 	 <?php
 }
 ?>

 <img src="Lunette/<?php echo $personnage_myst_nj2['image_lunettes']; ?>" /></br>
 <img src="vetement/<?php echo $personnage_myst_nj2['image_vetement']; ?>" /></br>
 <?php
}
}



//Debut question :

echo "personnage brun?";

















?>

<?php
include'footer.php';
?>