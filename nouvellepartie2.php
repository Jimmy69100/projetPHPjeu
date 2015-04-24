<?php include'head.php'; 


$corps = "SELECT * FROM corp ORDER BY RAND() LIMIT 0, 1";
$corps = $bdd->query($corps);


while ($donnee = $corps->fetch() ) {
?>
	<img src="Corps/<?php echo $donnee['image']; ?>" /></br>
<?php
}
$corps->closeCursor();
?>

<?php 
include'footer.php';
 ?>