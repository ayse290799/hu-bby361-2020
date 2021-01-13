<?php
    /* BaÄŸlantÄ± bilgilerinin alÄ±nmasÄ±*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $guncellenecek = mysqli_real_escape_string($baglanti, $_GET["KitapKayitNo"]);
    $sorgu = mysqli_query($baglanti, "SELECT * FROM kitap WHERE KitapKayitNo = $guncellenecek");
    $satir = mysqli_fetch_assoc($sorgu)
?>
<!DOCTYPE html>
<html lang="tr"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>AYŞE YELİZ</title>

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
    <link href="./final/navbar-top.css" rel="stylesheet">
  </head>
  <body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
  <a class="navbar-brand" href="https://getbootstrap.com/docs/4.4/examples/navbar-static/#">Top navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarCollapse">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="index.php">Ana Sayfa </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="kitap.php">Kitap İşlemleri</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="yazar.php">Yazar İşlemleri</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="yayinevi.php">Yayinevi İşlemleri</a>
      </li>
    </ul>
    <form class="form-inline mt-2 mt-md-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<main role="main" class="container">
<!-- KODLAR -->
<h1>Kitap Güncelle</h1>
<form action="kitap_guncellendi.php" method="post">
    KitapKayitNo: <input type="text" name="KitapKayitNo" value="<?php echo $satir["KitapKayitNo"] ;?>"><br><br>
    KitapKayitTarih: <input type="text" name="KitapKayitTarih" value="<?php echo $satir["KitapKayitTarih"] ;?>"><br><br>
    KitapISBN: <input type="text" name="KitapISBN" value="<?php echo $satir["KitapISBN"] ;?>"><br><br>
    KitapAdi: <input type="text" name="KitapAdi" value="<?php echo $satir["KitapAdi"] ;?>"><br><br>
    YazarKayitNo: <input type="text" name="YazarKayitNo" value="<?php echo $satir["YazarKayitNo"] ;?>"><br><br>
    KitapSayfaSayi: <input type="text" name="KitapSayfaSayi" value="<?php echo $satir["KitapSayfaSayi"] ;?>"><br><br>
    KitapBasimYeri: <input type="text" name="KitapBasimYeri" value="<?php echo $satir["KitapBasimYeri"] ;?>"><br><br>
    KitapBasimTarih: <input type="text" name="KitapBasimTarih" value="<?php echo $satir["KitapBasimTarih"] ;?>"><br><br>
    KitapKopyaSayi: <input type="text" name="KitapKopyaSayi" value="<?php echo $satir["KitapKopyaSayi"] ;?>"><br><br>
    YayinEviKayitNo: <input type="text" name="YayinEviKayitNo" value="<?php echo $satir["YayinEviKayitNo"] ;?>"><br><br>
    <input type="hidden" value="<?php echo $satir["KitapKayitNo"] ;?>" name="KitapKayitNo">
    <input type="submit" value="Kitap Güncelle">
</form>
<!-- KODLAR -->   
</main>
<script src="jquery-3.4.1.slim.min.js"></script>
      <script src="bootstrap.bundle.min.js"></script>

</body></html>