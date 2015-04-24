<?php include'head.php'; ?>
<div id="tableau" ><?php

$i = 1;

while ($i <25) {



?><div id="image"><?php

//affichage du corps noir/blanc
$corps = "SELECT * FROM corp ORDER BY RAND() LIMIT 0, 1";
$corps = $bdd->query($corps);
while ($donnee = $corps->fetch() ) {
?>
	<img id="couleur" src="Corps/<?php echo $donnee['image']; ?>" /></br>

<?php
$id_corps = $donnee['ID_corp'];
}



//affichage des cheveux aleatoire homme/femme
$id_barbe = "";
$id_collier = "";

$cheveux = "SELECT * FROM cheveux ORDER BY RAND() LIMIT 0, 1";
$cheveux = $bdd->query($cheveux);
while ($cheveux2 = $cheveux->fetch() ) {
?>
	<img id="cheveux" src="Cheveux/<?php echo $cheveux2['image']; ?>" /></br>
	<?php
$genre = $cheveux2['genre'];
$couleur = $cheveux2['couleur'];
$id_cheveux = $cheveux2['ID_cheveux'];

}

//condition, on sait la couleur des poils :D et le genre, donc gogo:

if ($genre == 'homme') {
$barbe = "SELECT * FROM barbe WHERE couleur = :couleur ORDER BY RAND() LIMIT 0, 1";
$barbe = $bdd->prepare($barbe);
$barbe->execute(array(
    'couleur' => $couleur
    ));


while ($barbe2= $barbe->fetch() ) {
?>
	<img id="barbe" src="Barbe/<?php echo $barbe2['image']; ?>" /></br>
	<?php
	$id_barbe = $barbe2['ID_barbe'];
									}





}

else {

$collier = "SELECT * FROM collier ORDER BY RAND() LIMIT 0, 1";
$collier = $bdd->query($collier);

while ($collier2= $collier->fetch() ) {
?>
	<img id="collier" src="Collier/<?php echo $collier2['image']; ?>" /></br>
	<?php
	$id_collier = $collier2['ID_collier'];
									}





}

$lunettes = "SELECT * FROM lunettes ORDER BY RAND() LIMIT 0, 1";
$lunettes = $bdd->query($lunettes);
while ($lunettes2= $lunettes->fetch() ) {
?>
	<img id="lunette" src="Lunette/<?php echo $lunettes2['image']; ?>" /></br>
	<?php
	$id_lunette = $lunettes2['ID_lunettes'];
									}

$vetement = "SELECT * FROM vetement ORDER BY RAND() LIMIT 0, 1";
$vetement = $bdd->query($vetement);
while ($vetement2= $vetement->fetch() ) {
?>
	<img id="cravate" src="vetement/<?php echo $vetement2['image']; ?>" /></br>
	<?php
	$id_vetement = $vetement2['ID_vetement'];
									}

$nom = "SELECT * FROM nom WHERE pris = :pris AND genre = :genre ORDER BY RAND() LIMIT 0, 1";
$nom = $bdd->prepare($nom);
$nom->execute(array(
	'pris' => 0,
	'genre' => $genre
	));
while ($nom2= $nom->fetch() ) {
	echo $nom2['nom'];
	$id_nom = $nom2['ID_nom'];
									
$nom_update = "UPDATE nom SET pris = :pris WHERE nom = :nom";
$nom_update = $bdd->prepare($nom_update);
$nom_update->execute(array(
	'nom' => $nom2['nom'],
	'pris' => 1
	));

} ?></div> <?php

$insertion = $bdd->prepare('INSERT INTO personnage(ID_corp, ID_cheveux, ID_barbe, ID_collier, ID_lunettes, ID_vetement, ID_nom) VALUES(:corp, :cheveux, :barbe, :collier, :lunette, :vetement, :nom)');
$insertion->execute(array(
	'corp' => $id_corps,
	'cheveux' => $id_cheveux,
	'barbe' => $id_barbe,
	'collier' => $id_collier,
	'lunette' => $id_lunette,
	'vetement' => $id_vetement,
	'nom' => $id_nom
	));


$i = $i + 1;

}



$nom_update2 = "UPDATE nom SET pris = :pris";
$nom_update2 = $bdd->prepare($nom_update2);
$nom_update2->execute(array(
	'pris' => 0
	));


?>


</div>
<?php 
include'footer.php';
 ?>