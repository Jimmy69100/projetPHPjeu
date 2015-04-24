<?php include'head.php'; 

//affichage du corps noir/blanc
$corps = "SELECT * FROM corp ORDER BY RAND() LIMIT 0, 1";
$corps = $bdd->query($corps);
while ($donnee = $corps->fetch() ) {
?>
	<img src="Corps/<?php echo $donnee['image']; ?>" /></br>
<?php
}
$corps->closeCursor();


//affichage des cheveux aleatoire homme/femme


$cheveux = "SELECT * FROM cheveux ORDER BY RAND() LIMIT 0, 1";
$cheveux = $bdd->query($cheveux);
while ($cheveux2 = $cheveux->fetch() ) {
?>
	<img src="Cheveux/<?php echo $cheveux2['image']; ?>" /></br>
	<?php
$genre = $cheveux2['genre'];
$couleur = $cheveux2['couleur'];

}

//condition, on sait la couleur des poils :D et le genre, donc gogo:


$barbe = "SELECT * FROM barbe WHERE couleur = :couleur ORDER BY RAND() LIMIT 0, 1";
$barbe = $bdd->prepare($barbe);
$barbe->execute(array(
    'couleur' => $couleur
    ));

if ($genre == 'homme') {
while ($barbe2= $barbe->fetch() ) {
?>
	<img src="Barbe/<?php echo $barbe2['image']; ?>" /></br>
	<?php
									}
}

else {

$collier = "SELECT * FROM collier ORDER BY RAND() LIMIT 0, 1";
$collier = $bdd->query($collier);

while ($collier2= $collier->fetch() ) {
?>
	<img src="Collier/<?php echo $collier2['image']; ?>" /></br>
	<?php
									}
}

$lunettes = "SELECT * FROM lunettes ORDER BY RAND() LIMIT 0, 1";
$lunettes = $bdd->query($lunettes);
while ($lunettes2= $lunettes->fetch() ) {
?>
	<img src="Lunette/<?php echo $lunettes2['image']; ?>" /></br>
	<?php
									}

$vetement = "SELECT * FROM vetement ORDER BY RAND() LIMIT 0, 1";
$vetement = $bdd->query($vetement);
while ($vetement2= $vetement->fetch() ) {
?>
	<img src="vetement/<?php echo $vetement2['image']; ?>" /></br>
	<?php
									}







?>




<?php 
include'footer.php';
 ?>