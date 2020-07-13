-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Tem 2020, 16:42:09
-- Sunucu sürümü: 10.4.13-MariaDB
-- PHP Sürümü: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `makaledb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makale`
--

CREATE TABLE `makale` (
  `Id` varchar(250) NOT NULL,
  `Title` text NOT NULL,
  `Article` text NOT NULL,
  `Author` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `makale`
--

INSERT INTO `makale` (`Id`, `Title`, `Article`, `Author`) VALUES
('1078', 'Makale 1', 'Hayal kurmak insanın doğasında var. En kötü, en zor günlerin bile hemen sonunda hayal kurmaya başlarız. Belki de hiç gerçekleşmeyeceğini bile bile… Ama yine de hayal kurmak çok güzel. Sağlığımız için, borçlarımızın bitmesi için ya da üniversite kazanmak için…', 'Hamza'),
('5118', 'Makale 1', 'Modern Fizik’te Kuantum çok büyük anlam ifade eder. Birçok teknolojik kavramın altında yatan gerçekliği Kuantuma borçluyuz. Önümüzdeki günlerde hayata geçmesi planlanan 5G teknolojisinden tutun da akıllı telefonun RAM belleğine değin tüm alanlarda bu kavramın ayak izlerini bulabiliriz.', 'Ali'),
('8590', 'Makale 2', 'Tıp dünyasının içinde bulunduğu kötü durum gün geçtikçe daha da kötüye gitmeye devam ediyor. Henüz okuma yazma bilmeyen ve hatta ismini soyadını dahi tam olarak söylemeyi beceremeyen çocukları Tıp sözcüğü ile tanıştırıyor ve her şeyden daha çok bu kelimeye alıştırıyoruz onları. ', 'Mehmet');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `makale`
--
ALTER TABLE `makale`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
