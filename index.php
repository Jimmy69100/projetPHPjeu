<?php include'head.php'; ?>
<div id="head">
<div>
<p>bienvenue sur qui est-ce en ligne.</p>

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

</div>
<?php include'footer.php'; ?>