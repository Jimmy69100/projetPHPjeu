<?php
include("head.php");


?>


<p id="connect">
<?php
  
   	echo "Vous avez ete deconnecte ! ";
    $_SESSION['pseudo'] = 0;
    $_SESSION['id'] = 0;
?>   
</p>
    
 


<?php
header ("Refresh: 2;URL=index.php");
include("footer.php");
?>