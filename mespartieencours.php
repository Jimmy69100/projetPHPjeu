<?php include'head.php'; ?>
<div id="head">



<?php
$user = "SELECT * FROM utilisateur WHERE pseudo = :utilisateur";
$user = $bdd->prepare($user);
$user->execute(array(
    'utilisateur' => $_SESSION['pseudo']
    ));
while ($user2= $user->fetch() ) {
	$_SESSION['id'] = $user2['id_utilisateur'];
}
echo "Voici la liste de vos partie en cours :";




$partie = "SELECT * FROM partie p WHERE id_utilisateur = :utilisateur AND partie_finis = :finis";
$partie = $bdd->prepare($partie);
$partie->execute(array(
    'utilisateur' => $_SESSION['id'],
    'finis' => 0
    ));

while ($partie2= $partie->fetch() ) {
	
	$_SESSION['num_partie'] = $partie2['ID_partie'];
	?>
	<a href="partie_en_cours.php?id=<?php echo $_SESSION['num_partie']; ?>"><?php echo "partie".$_SESSION['num_partie']; ?></a>
	<?php
}

















?>
<?php include'footer.php'; ?>