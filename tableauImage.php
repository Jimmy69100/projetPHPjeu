<?php include'head.php';?>
<div id='tableau'>
<a href="index.php" id="home"><img src="accueil/home.png"></a><?php
$sexe = array(
'homme',
'femme'
	);
$couleur = array(
	'blanc' => "<img src='blanc.png'>",
	'noir' => "<img src='noir.png'>");
$moustache = array(
'moustache1' => "<img src='moustache1.png'>",
'moustache2' => "<img src='moustache2.png'>",
'moustache3' => "<img src='moustache3.png'>"
);
$barbe = array(
	'barbe1' => "<img src='barbe1.png'>",
	'barbe2' => "<img src='barbe2.png'>",
	'barbe3' => "<img src='barbe3.png'>"
	);
$lunette = array(
	'lunette1' => "<img src='lunette1.png'>",
	'lunette2' => "<img src='lunette2.png'>",
	'lunette3' => "<img src='lunette3.png'>"
	);
$cheveux = array(
	'cheveux1' => "<img cheveux' src='cheveux1.png'>",
	'cheveux2' => "<img src='cheveux2.png'>",
	'cheveux3' => "<img src='cheveux3.png'>"
	);
$cravate = array(
	'cravate1' => "<img src='cravate1.png'>",
	'cravate1' => "<img src='cravate2.png'>",
	'cravate3' => "<img src='cravate3.png'>"
	);
$collier = array(
	'collier1' => "<img src='collier1.png'>",
	'collier2' => "<img src='collier2.png'>",
	'collier3' => "<img src='collier3.png'>"
	);

for ($i=0; $i < 24; $i++) { 
	$sexe2 = $sexe[array_rand($sexe)];
	$couleur2 = $couleur[array_rand($couleur)];
	$moustache2 = $moustache[array_rand($moustache)];
	$barbe2 = $barbe[array_rand($barbe)];
	$lunette2 = $lunette[array_rand($lunette)];
	$cheveux2 = $cheveux[array_rand($cheveux)];
	$cravate2 = $cravate[array_rand($cravate)];
	$collier2 = $collier[array_rand($collier)];
	?><div id="image"><?php echo $sexe2;?>
	<p id="couleur"><?php echo $couleur2 ?></p>
	<p id="moustache"><?php echo $moustache2 ?></p>
	<p id="barbe"><?php echo $barbe2 ?></p>
	<p id="lunette"><?php echo $lunette2 ?></p>
	<p id="cheveux"><?php echo $cheveux2 ?></p>
	<p id="cravate"><?php echo $cravate2 ?></p>
	<p id="collier"><?php echo $collier2 ?></p></div><?php
}
	$perso = array(
		$sexe2,
		$couleur2,
		$moustache2,
		$barbe2,
		$lunette2,
		$cheveux2,
		$cravate2,
		$collier2
		);


		

include'footer.php';
?>