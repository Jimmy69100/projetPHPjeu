<?php include'head.php'; ?>

<h1>Bienvenue dans votre interface de gestion d'utilisateur</h1>
 <p>Vous pouvez a partir de cette interface modifier vos information de compte, le nombre de parties
  joué </p></br>


    <h3>Vos informations : </h3>
    <?php
     $sql = "SELECT pseudo, mail FROM utilisateur WHERE pseudo = :pseudo";
  $req = $bdd->prepare($sql);
  $req->execute(array(
    'pseudo' => $_SESSION['pseudo']
    ));
  while ($donne = $req->fetch() ) {
    echo "Votre pseudo : ", $donne['pseudo'], "</br>";
    echo "votre adresse mail : ", $donne['mail'], "</br>";
    
  }
  $req->closeCursor();
?>

<h3>Modification des infos</h3>
<p>changer votre adresse mail : </p>
<form method="post" action="nouveau_mail.php">
   <input type="email" name="mail" placeholder="entrez votre nouveau mail" size="35"></br></br>
    <input type="submit" value="enregistrement">

</form>

<p>changer votre mot de passe : </p>
<form method="post" action="nouveau-pass.php">
   <input type="pass" name="pass" placeholder="entrez votre nouveau mot de passe" size="35"></br></br>
    <input type="submit" value="enregistrement">

</form>





























<?php include'footer.php'; ?>