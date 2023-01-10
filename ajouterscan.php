<?php include("headeradminscan.php") ?>



    <div class="container">
      <form method="POST" action="ajouter_formscan.php" enctype="multipart/form-data">
        <div class="row">
          <div class="col-25">
            <label for="Prénom">Nom de l'anime</label>
          </div>
          <div class="col-75">
            <input type="text" name="nom" placeholder="Nom de l'anime">
          </div>
        </div>

        <div class="row">
          <div class="col-25">
            <label for="Prix">la note</label>
          </div>
          <div class="col-75">
            <input type="text" name="note" placeholder="Saisir la note (A-E)">
          </div>
        </div>

        <div class="row">
          <div class="col-25">
            <label for="Prix">Nombre d'épisodes </label>
          </div>
          <div class="col-75">
            <input type="text" name="eprn" placeholder="Sasir le nombre d'épisode actuallement">
          </div>
        </div>

        <div class="row">
          <div class="col-25">
            <label for="Prix">L'anime est-il finis ou pas </label>
          </div>
          <div class="col-75">
            <input type="text" name="yn" placeholder="Saisir O ou N">
          </div>
        </div>

        <div class="row">
          <div class="col-25">
            <label for="Prix">le lien du site pour visionner </label>
          </div>
          <div class="col-75">
            <input type="text" name="lien" placeholder="Saisir le lien du site pour visualiser">
          </div>
        </div>



        <div class="row">
          <div class="col-25">
            <label for="Sujet">Images</label>
          </div>
          <div class="col-75">
            <input type="file" name="photo" placeholder="Selectionnez l'image" ></textarea>
          </div>
        </div>

        <div class="row">
          <input type="submit" value="Envoyer">
        </div>
      </form>
    </div>

    <?php include("footer.php") ?>

