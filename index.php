<?php include'head.php'; ?>
<div id="head">
<div>

<?php
if (empty($_SESSION['pseudo'])) {
	?>
<li><a href="connexion.php"><img src="accueil/connexion.png"></a><br></li>
<li><a href="inscription.php"><img src="accueil/Inscription.png"></a><br></li>
<?php
}

if (!empty($_SESSION['pseudo'])) {
?>
<li><a href="commencer.php"><img src="accueil/Commencer.png"></a><br></li>
<li><a href="deconnexion.php"><img src="accueil/Deconnexion.png"></a><br></li>
<?php } ?>
<li><a href="regle.php"><img src="accueil/Reglesdujeu.png"></a><br></li>
<li><a href="classement.php"><img src="accueil/Classement.png"></a></li>


<?php
/* test



$sql = "SELECT id, image, couleur, genre FROM cheveux ORDER BY RAND() LIMIT 1";
$affichage_cheveux= $bdd->query($sql);
while ($donne = $affichage_cheveux->fetch() )
{
?>
	<img src="Cheveux_femme/<?php echo $donne['image']; ?>" />
	<?php
}
*/
?>







</div>
<?php include'footer.php'; ?>