<?php include'head.php'; ?>
<div id="classement">

<?php


$user = "SELECT * FROM utilisateur ORDER BY nb_partie_gagnee ASC limit 0, 10";
$user = $bdd->query($user);


while ($user2= $user->fetch() ) {
$partie_total = $user2['nb_partie_gagnee'] + $user2['nb_partie_perdu'];
echo $user2['pseudo'], " a gagn&eacute ".$user2['nb_partie_gagnee']. " parties et a perdu ".$user2['nb_partie_perdu']. " parties, pour un total de ".$partie_total. " parties jou&eacute.";

	
}







?>



<?php include'footer.php'; ?>