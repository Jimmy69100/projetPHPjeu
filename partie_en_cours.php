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

$mystere_nj = "SELECT * FROM mystere my, personnage p, corp co, cheveux ch, barbe b, collier col, vetement v, lunettes l  
WHERE co.ID_corp = p.ID_corp 
AND ch.ID_cheveux = p.ID_cheveux 
AND b.ID_barbe = p.ID_barbe 
AND col.ID_collier = p.ID_collier 
AND v.ID_vetement = p.ID_vetement 
AND l.ID_lunettes = p.ID_lunettes 
AND my.mystere_nj = p.id 
AND ID_partie = :partie 
ORDER BY id 
";

//Debut question :

echo "personnage brun?";

















?>

<?php
include'footer.php';
?>