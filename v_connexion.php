<?php include'head.php'; ?>
<?php
//stockage dans des variables des saisis du formulaire
$pseudo = $_POST['pseudo'];

$mdp = sha1($_POST['mdp']);
$_SESSION['pseudo'] = 0;















$sql = "SELECT id FROM utilisateur WHERE pseudo = :pseudo AND mdp = :mdp";
// Vérification des identifiants
$req = $bdd->prepare($sql);
$req->execute(array(
    'pseudo' => $pseudo,
    'mdp' => $mdp
    ));


$resultat = $req->rowCount();



if ($resultat == 0)
{
    echo 'Identifiant incorrect !';

}
else
{
    $_SESSION['id'] = $resultat['id'];
    $_SESSION['pseudo'] = $pseudo;
    echo 'Vous etes connecte !';
   

}

$req->closeCursor();

header ("Refresh: 5;URL=accueil.php"); //redirection vers URL après 5 secondes.
?>




<?php include'footer.php'; ?>