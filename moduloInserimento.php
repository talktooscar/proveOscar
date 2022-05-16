<?php include ("database.php"); ?>
<HTML>
<HEAD>
<TITLE>PHP e MySQL</TITLE>
</HEAD>
<BODY>
Raccolta di dati dei clienti: <BR/><BR/>
<FORM ID="cln" NAME="cln" METHOD="POST" ACTION="raccoglicln.php">
<LABEL>Nome Cliente:
<INPUT TYPE="TEXT" NAME="nomecln" ID="nomecln"/>
</LABEL>
<P><LABEL>Indirizzo:
<INPUT TYPE="TEXT" NAME="idcln" ID="idcln"/>
</LABEL></P>
<P><LABEL>Codice Fiscale:
<INPUT TYPE="TEXT" NAME="cfcln" ID="cfcln"/>
</LABEL></P>
<P>
<INPUT TYPE="SUBMIT" NAME="submit" ID="submit" VALUE="INVIA"/>
<INPUT TYPE="RESET" NAME="cancel" ID="cancel" VALUE="PULISCI"/>
</P>
</FORM>
</BODY>
</HTML>
<?php.include ("database.php");
?>