<?php
        session_start();

        include "fonctions.php";
        $bdd = connect();

        $choix=$_GET["choix"];
        $nom=$_POST["nom"];
        $note=$_POST["note"];
        $eprn=$_POST["eprn"];
        $yn=$_POST["yn"];
        $lien=$_POST["lien"];
        $photo=$_POST["photo"];

        //move photo dans dossier

        $dossier_destination = 'Images/';
        $photo=$_FILES['photo']['name'];
  

        if(move_uploaded_file($_FILES['photo']['tmp_name'], $dossier_destination . $photo)) //Si la fonction renvoie TRUE, c'est que ça a fonctionné...
        {
            echo 'Upload effectué avec succès !';
        }
        else //Sinon (la fonction renvoie FALSE).
        {
            echo 'Upload : Echec, veuillez re-essayer.';
        }

        //requêtes

        $sql = "update scan SET nom ='$nom', photo='$photo', note ='$note',eprn = '$eprn', yn='$yn', lien='$lien' WHERE id='$choix'; " ;

        $resultat=$bdd->query($sql);

        echo $sql;

        header("location:modifierscan.php");
?>
