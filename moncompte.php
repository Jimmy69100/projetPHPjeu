<?php include'head.php'; ?>
<div id="head">
<h1 id="bienvenue">Bienvenue dans votre interface de gestion d'utilisateur</h1>
 <p>Vous pouvez a partir de cette interface modifier vos information de compte, le nombre de parties
  jou&eacute </p></br>


    <h3>Vos informations : </h3>
    <?php
     $sql = "SELECT * FROM utilisateur WHERE pseudo = :pseudo";
  $req = $bdd->prepare($sql);
  $req->execute(array(
    'pseudo' => $_SESSION['pseudo']
    ));
  while ($donne = $req->fetch() ) {
    echo "Votre pseudo : ", $donne['pseudo'], "</br>";
    echo "votre adresse mail : ", $donne['mail'], "</br>";
    echo "Votre nombre de partie gagn&eacutee : ", $donne['nb_partie_gagnee'], "</br>";
    echo "Votre nombre de partie perdu : ", $donne['nb_partie_perdu'], "</br>";
  }
  $req->closeCursor();
?>

<h3>Modification des informations</h3>
<p>Changer votre adresse mail : </p>
<form method="post" action="nouveau_mail.php">
   <input type="email" name="mail" placeholder="entrez votre nouveau mail" size="35"></br></br>
    <input type="submit" value="enregistrement">

</form>

<p>Changer votre mot de passe : </p>
<form method="post" action="nouveau-pass.php">
   <input type="password" name="pass" placeholder="entrez votre nouveau mot de passe" size="35"></br></br>
    <input type="submit" value="enregistrement">

</form></div>

<?php include'footer.php'; ?>