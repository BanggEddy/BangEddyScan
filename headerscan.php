<?php
session_start() ;
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

  </head>


  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="scan.php"><img src="Images/logo.jpg" height="100" width="100" alt="..."></a>
        <div class="btn-group">
          <a href="index.php" class="btn btn-secondary" aria-current="page">Page d'Anime</a>
        </div>
        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
          <div class="container-fluid">
            <form class="d-flex" method="POST" action='recherchevisiscan.php'>
              <input class="form-control me-2" type="search" placeholder="Rechercher des scans" aria-label="Recherche" name="recherche">
              <input class="btn btn-outline-success" type="submit" value="Rechercher" >
            </form>
          </div>
        </div>
        <div class="btn-group">
        <a href="indexascan.php" class="btn btn-outline-secondary" aria-current="page">A</a>
          <a href="indexbscan.php" class="btn btn-outline-secondary" aria-current="page">B</a>
          <a href="indexcscan.php" class="btn btn-outline-secondary" aria-current="page">C</a>
          <a href="indexdscan.php" class="btn btn-outline-secondary" aria-current="page">D</a>
          <a href="indexescan.php" class="btn btn-outline-secondary" aria-current="page">E</a>
          </div>
      </div>
      <!-- Button trigger modal -->
<a href="indexadminscan.php" type="button" class="btn btn-danger">
Administration
</a>

<!-- Modal -->

    </nav>