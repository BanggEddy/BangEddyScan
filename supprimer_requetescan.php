<?php
        session_start();

        include "fonctions.php";
        $bdd = connect();

        $choix = $_GET["choix"];



        $sql = "DELETE FROM scan WHERE id='$choix'" ;

        $resultat=$bdd->query($sql);

        echo $sql;

        header("location:supprimerscan.php");
?>
