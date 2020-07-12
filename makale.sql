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
('1234', 'Dijital Pazarlamaya Hakim Misiniz', 'Reon Pocket ismindeki bu klima Peltier etkisi sayesinde ise soğutma ve ısıtma eylemi gerçekleştiriliyor. Özel olarak üretilen tişörtün arka kısmındaki cebin içine koyulduğunda vücudu 13 dereceye kadar soğutabilen klima kış aylarında ise cihaz vücudu 8 dereceye kadar ısıtabiliyor. Akıllı telefon ile bağlantı kurarak yönetilen cihaz, USB-C bağlantısını kullanıyor ve iki saatte şarj edilebiliyor. Sony bu ürününü 2020 Tokyo Olimpiyatları için sunacağını belirtmişti. Covid-19 sebebiyle iptal edilen olimpiyatlara rağmen Sony, Reon Pocket’i piyasaya sürdü.', 'Kaya'),
('573', 'Teknoloji', 'Reon Pocket ismindeki bu klima Peltier etkisi sayesinde ise soğutma ve ısıtma eylemi gerçekleştiriliyor. Özel olarak üretilen tişörtün arka kısmındaki cebin içine koyulduğunda vücudu 13 dereceye kadar soğutabilen klima kış aylarında ise cihaz vücudu 8 dereceye kadar ısıtabiliyor. Akıllı telefon ile bağlantı kurarak yönetilen cihaz, USB-C bağlantısını kullanıyor ve iki saatte şarj edilebiliyor.  Sony bu ürününü 2020 Tokyo Olimpiyatları için sunacağını belirtmişti. Covid-19 sebebiyle iptal edilen olimpiyatlara rağmen Sony, Reon Pocket’i piyasaya sürdü.', 'Mehmet');

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
