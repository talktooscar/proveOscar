<?php include ("database.php"); ?>

<?php
$nomecln=$_POST['nomecln'];
$idcln=$_POST['idcln'];
$cfcln=$_POST['cfcln'];

$query="INSERT INTO clienti (nome, indirizzo, cf)";
$query.="VALUES ('".$nomecln."','".$idcln."','".$cfcln."')";

mysql_query ($query, $conn);
?>

<?php include ("database.php"); ?>