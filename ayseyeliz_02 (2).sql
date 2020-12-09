-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 09 Ara 2020, 09:58:30
-- Sunucu sürümü: 10.4.16-MariaDB
-- PHP Sürümü: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ayseyeliz_01`
--
CREATE DATABASE IF NOT EXISTS `ayseyeliz_01` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ayseyeliz_01`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `KitapKayitNo` int(100) NOT NULL COMMENT 'Kitabin kayit numarasini icerir.',
  `KitapKayitTarih` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'Kitabin kayit oldugu tarihi belirtmektedir',
  `KitapISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabin ISBN numarasını gösteren alandir.',
  `KitapAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabin adi girilecektir',
  `YazarKayitNo` int(11) NOT NULL COMMENT 'Yazarin kayit nosu girilecektir.',
  `KitapSayfaSayi` tinyint(4) NOT NULL COMMENT 'Kitabin sayfa sayisini verir.',
  `KitapBasimYeri` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabin basildigi yerin verildigi alandir.',
  `KitapBasimTarih` year(4) NOT NULL COMMENT 'Kitabin basildiği tarihi gösterir.',
  `KitapKopyaSayi` int(100) NOT NULL COMMENT 'Kitabin kopya sayisini belirtir.',
  `YayinEviKayitNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kitap ile ilgili temel bilgileri içermektedir.';

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`KitapKayitNo`, `KitapKayitTarih`, `KitapISBN`, `KitapAdi`, `YazarKayitNo`, `KitapSayfaSayi`, `KitapBasimYeri`, `KitapBasimTarih`, `KitapKopyaSayi`, `YayinEviKayitNo`) VALUES
(1, '2020-11-15 13:57:14.180117', '9789751026491', 'Çalıkuşu', 1, 127, 'İstanbul', 2018, 0, 1),
(2, '2020-11-04 23:21:12.086211', '9789754704532', 'Kırmızı Saçlı Kadın', 10, 127, 'İstanbul', 2009, 2, 7),
(4, '2020-11-04 06:28:12.062094', '9789751015440', 'Yaprak Dökümü', 3, 119, 'İstanbul', 2014, 3, 3),
(5, '2020-11-15 05:25:26.382421', '9789754370485', 'Dokuzuncu Hariciye Koğuşu', 4, 112, 'İstanbul', 2018, 0, 4),
(6, '2020-11-15 11:43:35.460382', '9789944829670', 'Martı Jonathan Livingston', 5, 127, 'İstanbul', 2018, 0, 5),
(7, '2020-11-15 14:30:30.546601', '9786052361450', 'Ikıgaı', 6, 127, 'İStanbul', 2017, 0, 6),
(8, '2020-11-16 05:29:35.671414', '9789750807190', 'Teneke', 7, 127, 'İstanbul', 2014, 1, 2),
(9, '2020-11-16 04:24:29.570601', '9789751402967', 'İnsan İnsana', 8, 127, 'İstanbul', 2001, 4, 8),
(10, '2020-11-12 07:29:30.164164', '9789754378009', 'Bozkurtlar', 9, 127, 'İstanbul', 2015, 0, 9),
(13, '2020-11-16 00:24:19.297219', '9789750835605', 'Kara Kitap', 2, 127, 'İstanbul', 2009, 0, 10);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `kitaplistesi`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `kitaplistesi` (
`KitapAdi` varchar(100)
,`YayinEviAdi` varchar(100)
,`YazarAdSoyad` varchar(201)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `YayinEviKayitNo` int(11) NOT NULL,
  `YayinEviAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `YayinEviUrl` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yayın evi erişim adresi verilecektir.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yayinevi ile ilgili bilgileri içerir.';

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`YayinEviKayitNo`, `YayinEviAdi`, `YayinEviUrl`) VALUES
(1, 'İnkılap', 'https://www.inkilap.com/'),
(2, 'Yapı Kredi Yayınları', 'https://www.yapikrediyayinlari.com.tr/'),
(3, 'İnkılap', 'https://www.inkilap.com/'),
(4, 'Ötüken', 'https://www.otuken.com.tr/'),
(5, 'Epsilon', 'https://www.epsilonyayinevi.com/'),
(6, 'İndigo', 'https://www.indigodukkan.com/'),
(7, 'Yapı Kredi Yayınları', 'https://www.yapikrediyayinlari.com.tr/'),
(8, 'Remzi', 'http://www.remzi.com.tr/anasayfa'),
(9, 'Ötüken', 'https://www.otuken.com.tr/'),
(10, 'İletişim', 'https://iletisim.com.tr/');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `YazarKayitNo` int(11) NOT NULL COMMENT 'Yazarin kayit numarasi girilecektir.',
  `YazarAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarin adi yer alir.',
  `YazarSoyadi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarin soyadi yer alir.',
  `YazarUrl` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yazarin erisim adresi girilecektir.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`YazarKayitNo`, `YazarAdi`, `YazarSoyadi`, `YazarUrl`) VALUES
(1, 'Raşat Nuri', 'Güntekin', 'https://g.co/kgs/uYSkoX'),
(2, 'Orhan', 'Pamuk', 'https://g.co/kgs/KgoKe4'),
(3, 'Reşat Nuri', 'Güntekin', 'https://g.co/kgs/uYSkoX'),
(4, 'Peyami', 'Safa', 'https://g.co/kgs/TF8eQ6'),
(5, 'Richard', 'Bach', 'https://g.co/kgs/iZkp1Z'),
(6, 'Hector ', 'Garcia', 'https://g.co/kgs/gy8aBe'),
(7, 'Yaşar', 'Kemal', 'https://g.co/kgs/2r9mk5'),
(8, 'Doğan', 'Cüceloğlu', 'https://g.co/kgs/9EMqZm'),
(9, 'Nihal', 'Atsız', 'https://g.co/kgs/L7xqda'),
(10, 'Orhan', 'Pamuk', 'https://g.co/kgs/KgoKe4');

-- --------------------------------------------------------

--
-- Görünüm yapısı `kitaplistesi`
--
DROP TABLE IF EXISTS `kitaplistesi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kitaplistesi`  AS SELECT `ka`.`KitapAdi` AS `KitapAdi`, `ye`.`YayinEviAdi` AS `YayinEviAdi`, concat(`ya`.`YazarAdi`,' ',`ya`.`YazarSoyadi`) AS `YazarAdSoyad` FROM ((`kitap` `ka` join `yayinevi` `ye`) join `yazar` `ya`) WHERE `ka`.`YayinEviKayitNo` = `ye`.`YayinEviKayitNo` AND `ka`.`YazarKayitNo` = `ya`.`YazarKayitNo` ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`KitapKayitNo`) USING BTREE,
  ADD UNIQUE KEY `KitapISBN` (`KitapISBN`);

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`YayinEviKayitNo`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`YazarKayitNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitap`
--
ALTER TABLE `kitap`
  MODIFY `KitapKayitNo` int(100) NOT NULL AUTO_INCREMENT COMMENT 'Kitabin kayit numarasini icerir.', AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `YayinEviKayitNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `YazarKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yazarin kayit numarasi girilecektir.', AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
