<?php include'head.php'; ?>
<div id="head">

<?php
//stockage dans des variables des saisis du formulaire
$pseudo = strip_tags($_POST['pseudo']);
$nom = strip_tags($_POST['nom']);
$prenom = strip_tags($_POST['prenom']);
$mail = strip_tags($_POST['email']);
$mdp = sha1($_POST['mdp']);
$erreur = 0;
$date = date('j/m/y');



$sql = "SELECT id_utilisateur FROM utilisateur WHERE pseudo = :pseudo";
// Vérification des identifiants
$req = $bdd->prepare($sql);
$req->execute(array(
    'pseudo' => $pseudo   
    ));

$verification_pseudo = $req->rowCount();

if ($verification_pseudo > 0)
   {
   	 echo "votre pseudo est deja utilise, veuillez en choisir un autre";
   	 $erreur++;
   }
$req->CloseCursor();
/*
$mail = $_POST['email'];
include ("mailto.php");
*/





if ($erreur == 0) {


$req2 = $bdd->prepare('INSERT INTO utilisateur(pseudo, nom, prenom, mail, mdp, date_inscription) VALUES(:pseudo, :nom, :prenom, :mail, :mdp, :date_inscription)');
$req2->execute(array(
    'pseudo' => $pseudo,
    'nom' => $nom,
    'prenom' => $prenom,
    'mail' => $mail,
    'mdp' =>$mdp,
    'date_inscription' => $date
    ));

?>
<div id="message">
  <?php
echo "Felicitation ! Vous &ecirctes a pr&eacutesent inscrit sur notre site !";


}

header ("Refresh: 2;URL=index.php"); //redirection vers URL après 5 secondes.
?>




<?php include'footer.php'; ?>