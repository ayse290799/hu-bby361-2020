<?php
    /* VeritabanÄ± baÄŸlantÄ± bilgileri */
    $sunucu = "localhost";
    $kullanici = "root";
    $sifre = "";
    $veritabani = "ayseyeliz_01";
    $port = 3306;

    /* VeritabanÄ±na baÄŸlantÄ± */
    $baglanti = mysqli_connect($sunucu, $kullanici, $sifre, $veritabani, 3306)
        or die("VeritabanÄ±na baÄŸlantÄ± gerÃ§ekleÅŸtirilemedi..!");

    /* TÃ¼rkÃ§e karakterler iÃ§in dÃ¼zenleme */
    mysqli_set_charset($baglanti,"utf8");
?>