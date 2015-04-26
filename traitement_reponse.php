<?php include'head.php'; 
$id_partie = $_SESSION['id_partie'];
$reponse = $_POST['couleur_cheveux'];
?>
<div id='tableau'>
<?php
echo $reponse;
?>

<?php
include'footer.php';
?>