<?php include("headeradminscan.php") ?>


    <?php
      $nom=$_POST["nom"];
      $note=$_POST["note"];
      $eprn=$_POST["eprn"];
      $yn=$_POST["yn"];
      $lien=$_POST["lien"];

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



      //connexion à la BDD
      include("fonctions.php");
      $bdd=connect();

      //requete


      $sql = "INSERT INTO scan (nom, note, eprn, yn, lien, photo) VALUES ('$nom', '$note', '$eprn' ,'$yn' ,'$lien', '$photo')";
        $resultat=$bdd->exec($sql);

          $_SESSION["message"]="Nouveau enregistrement créé avec succès";

          header("location:indexadminscan.php");

      ?>


<?php include("footer.php")?>