<?php
    require_once("baglanti.php");
    /* Veritabanı sorgulama */
    $sonuc = mysqli_query($baglanti, "
    SELECT * 
    FROM kitap
    ");
?>
<!DOCTYPE html>
<html lang="tr"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>PHP-MySQL Kütüphane </title>

    <!-- Bootstrap core CSS -->
<link href="bootstrap.min.css" rel="stylesheet">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.4/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="navbar-top-fixed.css" rel="stylesheet">
  </head>
  <body>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
  <a class="navbar-brand" href=>PHP & MySQL</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarCollapse">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Ana Sayfa <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Kitap İşlemleri</a>
      </li>
    </ul>
    <form class="form-inline mt-2 mt-md-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<main role="main" class="container">
  <div class="jumbotron">
    <h1>Kütüphane Veritabanı</h1>
    <p class=<?php
    require_once("baglanti.php");
    /* Veritabanı sorgulama */
    $sonuc = mysqli_query($baglanti, "
    SELECT * 
    FROM kitap
    ");
?>
<!DOCTYPE html>
   

    <!-- Bootstrap core CSS -->
<link href="bootstrap.min.css" rel="stylesheet">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.4/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="navbar-top-fixed.css" rel="stylesheet">
  </head>
  <body>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
  <a class="navbar-brand" href="https://getbootstrap.com/docs/4.4/examples/navbar-fixed/#">Ayşe Yeliz Türk</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarCollapse">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Ana Sayfa <span class="sr-only">(current)</span></a>
      </li>
        <li  class= "nav-item active"> 
            <a class="nav-link" href="Hakkimda.php">Hakkımda</a> <span class="sr-only">(current)</span></a>
            </li>

        <li class="nav-item active">
        <a class="nav-link" href="kitap.php">Kitap  İşlemleri <span class="sr-only">(current)</span></a>
      </li>
        <li class="nav-item active">
        <a class="nav-link" href="yazar.php">Yazar İşlemleri <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="yayinevi.php">Yayınevi İşlemleri <span class="sr-only">(current)</span></a>
      </li>
    </ul>
    <form class="form-inline mt-2 mt-md-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<main role="main" class="container">
  <div class="jumbotron">
      <style>
    #box1 {
        width: 100px;
        height: 150px;
        background-color: chocolate;
        margin: auto;
        padding: 10px;
        display: table;
    }
 
    #box2 {
        text-align: center;
        vertical-align: middle;
        display: table-cell;
        color: #fff;
        font-size: 25px;
    }
</style>
 
<div id="box1">
    <div id="box2">
       Bu veritabanından kitap listesine ulaşabilir, kitap, yazarlar ve yayınevleri hakkında bilgilere erişebilirsiniz.
    </div>
</div>
   
    </p>
    <p>
    <ol>
      <?php
    /* Sorgu sonuçlarının yazdırılması */
   
    ?>
    </ol>
    </p>
  </div>
</main>
<script src="jquery3.4.1.slim.min.js"></script>
<script src="bootstrap.bundle.min.js"></script>
</body></html>
    <style>
body {
  background-image: url('https://i.pinimg.com/originals/2e/da/2a/2eda2a6106bf3ec3e294b432e770c5f9.jpg');
}
</style>
 
    <p>
    <ol>
      <?php
    /* Sorgu sonuçlarının yazdırılması */
   
    ?>
    </ol>
    </p>
  </div>
</main>
<script src="jquery3.4.1.slim.min.js"></script>
<script src="bootstrap.bundle.min.js"></script>
</body></html>