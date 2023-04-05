<?php
session_start();
?>

<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
  <!-- Jquery -->
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
</head>


<body>
  <nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="indexadminscan.php"><img src="Images/logo.jpg" height="100" width="100" alt="..."></a>
      <div class="btn-group">
        <a href="ajouterscan.php" class="btn btn-primary" aria-current="page">Ajouter</a>
        <a href="modifierscan.php" class="btn btn-primary">Modifier</a>
        <a href="supprimerscan.php" class="btn btn-primary">Supprimer</a>
      </div>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
        <div class="container-fluid">
          <form class="d-flex" method="POST" action='recherchescan.php'>
            <input class="form-control me-2" type="search" placeholder="Rechercher des scans" aria-label="Recherche" name="recherche">
            <input class="btn btn-outline-success" type="submit" value="Rechercher">
          </form>
        </div>
      </div>
    </div>
    <!-- Button trigger modal -->
    <a href="index.php" type="button" class="btn btn-danger">
      Deconnexion
    </a>


  </nav>