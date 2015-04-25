

<?php include'head.php'; ?>
<div id="tableau" ><?php

$i = 1;

$user = "SELECT * FROM utilisateur WHERE pseudo = :pseudo";
$user = $bdd->prepare($user);
$user->execute(array(
	'pseudo' => $_SESSION['pseudo']
	));

while ($user2= $user->fetch() ) {
	$util = $user2['id_utilisateur'];
}
$insertion_partie = $bdd->prepare('INSERT INTO partie(id_utilisateur, partie_finis ) VALUES(:user, :finis)');
$insertion_partie->execute(array(
	'user' => $util,
	'finis' => 0
	));

$num_partie = "SELECT * FROM partie ORDER BY ID_partie DESC LIMIT 0, 1";
$num_partie = $bdd->query($num_partie);
while ($num_partie2= $num_partie->fetch() ) {
	$_SESSION['num_partie'] = $num_partie2['ID_partie'];
}


while ($i <26) {



?><div id="image"><?php

//affichage du corps noir/blanc
$corps = "SELECT * FROM corp ORDER BY RAND() LIMIT 0, 1";
$corps = $bdd->query($corps);
while ($donnee = $corps->fetch() ) {
?>


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

	<?php
$genre = $cheveux2['genre_cheveux'];
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
	
	<?php
	$id_barbe = $barbe2['ID_barbe'];
									}





}

else {

$collier = "SELECT * FROM collier ORDER BY RAND() LIMIT 0, 1";
$collier = $bdd->query($collier);

while ($collier2= $collier->fetch() ) {
?>
	
	<?php
	$id_collier = $collier2['ID_collier'];
									}





}

$lunettes = "SELECT * FROM lunettes ORDER BY RAND() LIMIT 0, 1";
$lunettes = $bdd->query($lunettes);
while ($lunettes2= $lunettes->fetch() ) {
?>
	
	<?php
	$id_lunette = $lunettes2['ID_lunettes'];
									}

$vetement = "SELECT * FROM vetement ORDER BY RAND() LIMIT 0, 1";
$vetement = $bdd->query($vetement);
while ($vetement2= $vetement->fetch() ) {
?>
	
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
	
	$id_nom = $nom2['ID_nom'];
									
$nom_update = "UPDATE nom SET pris = :pris WHERE nom = :nom";
$nom_update = $bdd->prepare($nom_update);
$nom_update->execute(array(
	'nom' => $nom2['nom'],
	'pris' => 1
	));

} ?></div> <?php





$insertion = $bdd->prepare('INSERT INTO personnage(ID_corp, ID_cheveux, ID_barbe, ID_collier, ID_lunettes, ID_vetement, ID_nom, ID_partie) VALUES(:corp, :cheveux, :barbe, :collier, :lunette, :vetement, :nom, :partie)');
$insertion->execute(array(
	'corp' => $id_corps,
	'cheveux' => $id_cheveux,
	'barbe' => $id_barbe,
	'collier' => $id_collier,
	'lunette' => $id_lunette,
	'vetement' => $id_vetement,
	'nom' => $id_nom,
	'partie' => $_SESSION['num_partie']
	));


$i = $i + 1;

}

// Selection des personnages mystères


$selec_mystere = "SELECT * FROM personnage ORDER BY RAND() LIMIT 0, 1";
$selec_mystere = $bdd->query($selec_mystere);
while ($selec_mystere2= $selec_mystere->fetch() ) {

	$mystere_j = $selec_mystere2['id'];

									}



$update_mystere_j = "UPDATE personnage SET mystere_j = :mystere_j WHERE id = :id AND ID_partie = :partie";
$update_mystere_j = $bdd->prepare($update_mystere_j);
$update_mystere_j->execute(array(
	'id' => $mystere_j,
	'partie' => $_SESSION['num_partie'],
	'mystere_j' => 1
	));

$selec_mystere3 = "SELECT * FROM personnage ORDER BY RAND() LIMIT 0, 1";
$selec_mystere3 = $bdd->query($selec_mystere3);
while ($selec_mystere4= $selec_mystere3->fetch() ) {

	$mystere_nj = $selec_mystere4['id'];

									}
$update_mystere_nj = "UPDATE personnage SET mystere_nj = :mystere_nj WHERE id = :id AND ID_partie = :partie";
$update_mystere_nj = $bdd->prepare($update_mystere_nj);
$update_mystere_nj->execute(array(
	'id' => $mystere_nj,
	'partie' => $_SESSION['num_partie'],
	'mystere_nj' => 1
	));




//fin selection mystère


$nom_update2 = "UPDATE nom SET pris = :pris";
$nom_update2 = $bdd->prepare($nom_update2);
$nom_update2->execute(array(
	'pris' => 0
	));



echo "Creation de la nouvelle partie en cours, veuillez patienter...";

?>


</div>
<?php 
header ("Refresh: 5;URL=mespartieencours.php");
include'footer.php';
 ?>