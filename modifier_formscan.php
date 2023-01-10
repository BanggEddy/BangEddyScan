<?php include("headeradminscan.php") ?>

    <?php

        $choix = $_GET["choix"];

        $sql = "select * from scan where id=$choix";

        $_SESSION["choix"] = $choix;

        include "fonctions.php";
        $bdd = connect();

        $resultat=$bdd->query($sql);

        $produit = $resultat->fetch(PDO::FETCH_OBJ);

            echo "<form method='POST' action='secure_updatescan.php?choix=$choix' enctype='multipart/form-data'>
            <div class='form-group'>
                <label for='formGroupExampleInput'>Nom de l'anime : </label>
                <input type='text' class='form-control' id='formGroupExampleInput' placeholder='nom du bonbon' name='nom' value='$produit->nom'>

                <label for='formGroupExampleInput2'>La note : </label>
                <input type='text' class='form-control' id='formGroupExampleInput2' placeholder='prix du bonbon' name='note' value='$produit->note'>

                <label for='formGroupExampleInput2'>Nombre d'épisodes : </label>
                <input type='text' class='form-control' id='formGroupExampleInput2' placeholder='prix du bonbon' name='eprn' value='$produit->eprn'>

                <label for='formGroupExampleInput2'>L'anime est-il finis ou pas : </label>
                <input type='text' class='form-control' id='formGroupExampleInput2' placeholder='prix du bonbon' name='yn' value='$produit->yn'>

                <label for='formGroupExampleInput2'>Le lien du site : </label>
                <input type='text' class='form-control' id='formGroupExampleInput2' placeholder='prix du bonbon' name='lien' value='$produit->lien'>


                <label for='formGroupExampleInput2'>Image du produit : </label>
                <br>

                <input type='file' name='photo' accept=''>

                <br><br>

                <button type='submit' class='btn btn-primary'>Enregistrer</button>
            </div>

            </form>";

?>

<?php include("footer.php") ?>
