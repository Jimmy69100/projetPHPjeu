<?php include'head.php'; ?>
<div id="regle">
<?php
//stockage dans des variables des saisis du formulaire
$pseudo = $_POST['pseudo'];

$mdp = sha1($_POST['mdp']);
$_SESSION['pseudo'] = 0;








$sql = "SELECT id_utilisateur FROM utilisateur WHERE pseudo = :pseudo AND mdp = :mdp";
// Vérification des identifiants
$req = $bdd->prepare($sql);
$req->execute(array(
    'pseudo' => $pseudo,
    'mdp' => $mdp
    ));


$resultat = $req->rowCount();

?>
<p id='connect'><?php
if ($resultat == 0)
{
    echo 'Identifiant incorrect !';
header ("Refresh: 2;URL=connexion.php");
}



else
{
   
    $_SESSION['pseudo'] = $pseudo;
    echo 'Vous etes connecte !';
   

}?></p><?php

$req->closeCursor();

header ("Refresh: 2;URL=index.php"); //redirection vers URL après 5 secondes.
?>




<?php include'footer.php'; ?>