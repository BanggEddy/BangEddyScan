<?php include("headeradminscan.php") ?>

    <?php

    include "fonctions.php";
    $bdd = connect();

    $sql = "select * from scan order by note";

    $resultat = $bdd->query($sql);



    while ($produit = $resultat->fetch(PDO::FETCH_OBJ)) {

      echo "<div class='card' style='width: 15rem;'>
            <img src='Images/$produit->photo' class='card-img-top'>
            <div class='card-body'>
            <h4 class='card-title'><b>$produit->nom</b></h4>
            <p class='card-text' ><b>$produit->note  </b></p>
            <p class='card-text' ><b> Je suis à l'épisode : $produit->eprn  </b></p>
            <p class='card-text' ><b> Est ce que j'ai finis : $produit->yn  </b></p>
              <a class='btn btn-warning' href='modifier_formscan.php?choix=$produit->id'>Modifier <i class='far fa-edit'></i></a>
            </div>
          </div>";
    }

    ?>
<?php include("footer.php") ?>
