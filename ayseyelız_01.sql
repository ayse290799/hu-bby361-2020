-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Kas 2020, 08:09:58
-- Sunucu sürümü: 10.1.38-MariaDB
-- PHP Sürümü: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ayseyelız_01`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `KitapKayıtNo` smallint(6) NOT NULL COMMENT 'Kitabin kayit numarasi',
  `KitapISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabin Uluslararası standart kitap numarasi',
  `KitapAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabin adi',
  `KitapYazar` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabin yazari',
  `KitapSayfaSayi` int(11) NOT NULL COMMENT 'Kitabin sayfa sayisi',
  `KitapBasimYeri` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabin basildiği yer',
  `KitapBasimTarihi` year(4) NOT NULL COMMENT 'Kitabin basildiği tarih',
  `KitapKopyaSayi` int(10) NOT NULL COMMENT 'Kitabın kopyas sayisi',
  `KitapKonu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Kitabın konusu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kitap ile ilgili temel bilgileri içermektedir.';

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`KitapKayıtNo`, `KitapISBN`, `KitapAdi`, `KitapYazar`, `KitapSayfaSayi`, `KitapBasimYeri`, `KitapBasimTarihi`, `KitapKopyaSayi`, `KitapKonu`) VALUES
(1, '9786053608851', 'Semaver', 'Sait Faik Abasıyanık', 138, 'İstanbul', 2012, 0, NULL),
(2, '9789750807197', 'Teneke', 'Yaşar Kemal', 158, 'İstanbul', 2016, 0, NULL),
(3, '9789750835605', 'Kırmızı Saçlı Kadın', 'Orhan Pamuk', 195, 'İstanbul', 2016, 0, 'Aşk'),
(4, '9786059372459', 'Denemeler', 'Montaigne', 271, 'İstanbul', 2016, 0, NULL),
(5, '9789751402967', 'İnsan İnsana', 'Doğan Cüceloğlu', 280, 'Etiler,  İstanbul', 2018, 0, 'İletişim'),
(6, '9789754378009', 'Bozkurtlar', 'Nihal Atsız', 625, 'Beyoğlu, İstanbul', 1973, 0, NULL),
(7, '9789944829670', 'Martı Jonathon Livingston', 'Richard Bach', 147, 'Beylikdüzü, İstanbul', 2018, 0, 'Bir martının zorluklarla baş etmesi'),
(8, '9786052361450', 'Ikıgaı', 'Hector Garcia, Francesc Miralles', 171, 'Zeytinburnu, İstanbul', 2017, 0, 'Japonların uzun ve mutlu yaşam sırları'),
(9, '9789754370485', 'Dokuzuncu Hariciye Koğuşu', 'Peyami Safa', 112, 'Beyoğlu, İstanbul', 2018, 0, NULL),
(10, '9786050822038', 'İçimizdeki Müzik', 'Sharon M. Draper', 256, 'İstanbul', 2019, 0, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayınevi`
--

CREATE TABLE `yayınevi` (
  `YayinEviKayitNo` smallint(6) NOT NULL,
  `YayınEviAdi` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yayınevi`
--

INSERT INTO `yayınevi` (`YayinEviKayitNo`, `YayınEviAdi`) VALUES
(1, 'Türkiye İş Bankası Kültür Yayınları'),
(2, 'Yapı Kredi Yayınları'),
(3, 'Yapı Kredi Yayınları'),
(4, 'Maviçatı Yayınları'),
(5, 'Remzi Kitabevi'),
(6, 'Ötüken'),
(7, 'Epsilon'),
(8, 'İndigo '),
(9, 'Ötüken'),
(10, 'Genç Timaş');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `YazarKayitNo` smallint(6) NOT NULL COMMENT 'Yazarin kayit numarası girilecektir.',
  `YazarAdi` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarin adi girilecektir.',
  `YazarSoyadı` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarin soyadi girilecektir.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yazar ile ilgili temel bilgileri içermektedir.';

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`YazarKayitNo`, `YazarAdi`, `YazarSoyadı`) VALUES
(1, 'Sait Faik ', 'Abasıyanık'),
(2, 'Yaşar ', 'Kemal'),
(3, 'Orhan ', 'Pamuk'),
(4, 'Montaigne', 'Montaigne'),
(5, 'Doğan', 'Cüceloğlu'),
(6, 'Nihal', 'Atsız'),
(7, 'Richard ', 'Bach'),
(8, 'Hector, Francesc', 'Garcia, Miralles'),
(9, 'Peyami', 'Safa'),
(10, 'Sharon M.', 'Draper');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`KitapKayıtNo`) USING BTREE;

--
-- Tablo için indeksler `yayınevi`
--
ALTER TABLE `yayınevi`
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
  MODIFY `KitapKayıtNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Kitabin kayit numarasi', AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yayınevi`
--
ALTER TABLE `yayınevi`
  MODIFY `YayinEviKayitNo` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `YazarKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yazarin kayit numarası girilecektir.', AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
