<?php
include "config.php";
$tmtype = $_POST["Tm_type"];
$ntype = $_POST["N_type"];
$result = mysqli_query($conn,"SELECT * FROM cancerdetails WHERE Tmtype='$tmtype' AND Ntype='$ntype'");

?>
<?php
while($row = mysqli_fetch_array($result)) {
    
?>
<?php echo $row["cancerStage"] ."|". $row["survivalYear"] ."|". $row["survivalRate"] ."|". $row["link"]; ?>
<?php
}
?> 