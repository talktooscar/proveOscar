<?php
$conn=mysql_connect("localhost" , "root" , "");
if (!$conn)
{
die ("Connessione al db fallita!
".mysql_error());
}
$db=mysql_select_db ("negozio", $conn);
if (!$db)
{
	die ("Connessione al db fallita!
	".mysql_error());
} 
?>
<HTML>
<HEAD>
<TITLE>PHP e MySQL</TITLE>
</HEAD>

</HTML>