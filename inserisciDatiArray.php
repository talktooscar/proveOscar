<?php
$conn=mysql_connect("localhost", "root", "");
if (!$conn)
{
	die ("Connessione al db fallita!".mysql_error());
}

$db=mysql_select_db ("negozio", $conn);
if (!$db)
{
	die ("Connessione al db fallita!".mysql_error());
}
?>
<HTML>
<HEAD>
<TITLE>PHP e MySQL</TITLE>
</HEAD>
<BODY>
<?php
$Risultato=mysql_query ("SELECT nome, indirizzo, cf FROM clienti", $conn);
if (!$Risultato)
{
	die ("Non ci sono informazioni nel database! ".mysql_error());
}
while ($riga=mysql_fetch_array ($Risultato))
{
	echo $riga[0]." ".$riga[1]." ".$riga[2]."<br/>";
}
?>
</HTML>
<?php
mysql_close($conn);
?>