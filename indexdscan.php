<?php include("headerscan.php") ?>



      <?php
      
      //conexion à la BDD
      require "fonctions.php";
      $bdd=connect();

      //requête
      $sql = "select * from scan WHERE note ='D' order by note";


      //execution de la requête
      $resultat=$bdd->query($sql) ;

      //affichage des resultats dans un objet>

      while($produit = $resultat->fetch(PDO::FETCH_OBJ))
        {
          ?>
          <div class='card' style='width: 15rem;'>
            <img src="Images/<?php echo $produit->photo ?>"class='card-img-top' >
            <div class='card-body'>
              <h4 class='card-title' ><?php echo $produit->nom ?></h4>
              <p class="card-text" ><b><?php echo $produit->note?> </b></p>
              <p class="card-text" ><b> L'épisode ou je suis :<?php echo $produit->eprn ?> </b></p>
              <p class="card-text" ><b> Finis ou pas : <?php echo $produit->yn ?> </b></p>
              <a href="<?php echo $produit-> lien ?>" class="btn btn-dark">Lien vers le site</a>
            </div>
          </div>
        <?php
        }

        $_SESSION['success']="le produit a été ajouté au panier !";
        if (!empty($_SESSION['succes']))
        {
        ?>

        <div class="alert alter-sucess" role="alert" id="alert">
          <?php echo $_SESSION['sucess']; ?>
        </div>
        <?php } 
        
        unset($_SESSION["sucess"]);
        
        ?>
      
<?php include("footer.php") ?>
