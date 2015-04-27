<?php
include("head.php");
?>
<div id="regle">
<p id="connect">
<?php
  
   	echo "Vous avez &eacutet&eacute deconnecte ! ";
    $_SESSION['pseudo'] = 0;
    $_SESSION['id'] = 0;
?>   
</p>
    
 

</div>
<?php
header ("Refresh: 2;URL=index.php");
include("footer.php");
?>