<?php
include '../PagesFunction/connection.php';

?>
<form action="index.php" method="post">
    
<span><?php echo $msg; ?></span>
<input type="text" name="adminName" value="paul.salcedo13@gmail.com">

<button class="button" name="inserttoactionlog" type="submit">insert</button></form>

<?php

if(isset($_POST['inserttoactionlog'])){
    $dateNow = date("d/m/Y");
    $adminname=$_POST['adminName'];
    
    $sql = "INSERT INTO tbl_activity_log (AdminName, Description, DateAction) VALUES ('$adminname','deleting','$dateNow')";
    if($con->query($sql)===TRUE){
        
        $msg="INSERT DONE";
        
        
        
    }else{
        $msg="MALI UNG QUERY";
    }
    
}

?>

