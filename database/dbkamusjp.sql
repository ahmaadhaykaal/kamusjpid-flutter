-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2024 at 07:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkamusjp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbkosakata`
--

CREATE TABLE `tbkosakata` (
  `id` int(11) NOT NULL,
  `kosakata` varchar(100) NOT NULL,
  `arti` varchar(100) NOT NULL,
  `detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbkosakata`
--

INSERT INTO `tbkosakata` (`id`, `kosakata`, `arti`, `detail`) VALUES
(1, 'Ohayō gozaimasu', 'Selamat Pagi', 'Di Gunakan Ketika ingin menyapa seseorang di pagi hari, bisa diperpendek menjadi \'Ohayo\' untuk penggunaan yang lebih non-formal'),
(2, 'Konnichiwa', 'Selamat Siang', 'Di Gunakan Ketika ingin menyapa seseorang di Siang hari'),
(3, 'Konbanwa', 'Selamat Malam', 'Di Gunakan Ketika ingin menyapa seseorang di malam hari'),
(4, 'Sayōnara', 'Sampai Jumpa', 'Digunakan ketika ingin mengucapkan selamat tinggal ke seseorang dan tidak berjumpa dalam waktu dekat'),
(5, 'Oyasumi nasai', 'Selamat Beristirahat', 'Digunakan ketika ingin mengucapkan selamat tidur ke seseorang, bisa diperpendek menjadi Oyasumi untuk penggunaan yang lebih non-formal'),
(6, 'Moshi moshi', 'Sapaan Menelfon', 'Digunakan ketika Sapaan untuk memulai percakapan saat menelfon'),
(7, 'Otsukaresama desu', 'Terima kasih kerja kerasnya', 'Digunakan saat menyelesaikan suatu pekerjaan yang dikerjaan bersama orang lain'),
(8, 'Ittekimasu', 'Sapaan Saat Meninggalkan Rumah', 'Digunakan saat ingin meninggalkan rumah, Tujuannya untuk memberi tahu kepada orang lain bahwa kita akan pergi.'),
(9, 'Ganbatte', 'Semangat', 'ungkapan penyemangat yang sering diucapkan oleh orang Jepang dan biasanya berbentuk kalimat perintah. Contoh penggunaan kata ganbatte seperti “Ganbatte ne!” yang artinya “Semangat ya!”'),
(10, 'Jā mata', 'Sampai Jumpa (Non-formal)', 'Digunakan untuk mengucapkan sampai jumpa dengan kondisi kita bisa bertemu dengan orang tersebut dalam waktu dekat.'),
(11, 'Tadaima', 'Salam ketika pulang ke rumah', 'Digunakan ketika kita masuk ke dalam rumah, tujuannya untuk memberi tahu bahwa kita sudah kembali ke rumah.'),
(12, 'Okaerinasai', 'Selamat datang kembali', 'Digunakan untuk menyambut orang yang datang kembali ke rumah, biasanya ditujukan ke kerabat yang tinggal di rumah yang sama.'),
(13, 'itterashai', 'Hati - Hati', 'Respons atas salam perpisahan yang diucapkan seseorang ketika hendak meninggalkan rumah atau tempat kerja mereka. Ini merupakan jawaban dari ungkapan ittekimasu.'),
(14, 'Arigato Gozaimasu', 'Terima Kasih', 'Digunakan untuk mengucapkan terima kasih ke pada seseorang, bisa diperpendek menjadi Arigato untuk penggunaan yang lebih non-formal'),
(15, 'Itadakimasu', 'Selamat Makan', 'ucapan yang dikatakan sebelum mulai makan.'),
(16, 'Oishii', 'Enak', 'Kata sifat “oishii” merupakan kata bahasa Jepang umum yang digunakan untuk menyatakan “enak” atau “lezat”. “Oishii” dapat digunakan dalam berbagai situasi, baik formal maupun non formal.'),
(17, 'Kawaii', 'Lucu atau Imut', 'Ungkapan kawaii digunakan untuk menggambarkan penampilan seseorang. Biasanya, ungkapan ini dilontarkan oleh orang-orang Jepang untuk memuji penampilan seseorang perempuan yang cantik dan imut.'),
(18, 'Daijobu', 'Aku baik-baik saja', 'digunakan untuk memastikan apakah keadaan diri kita atau orang lain “baik-baik saja”. Kata ini sering digunakan dalam percakapan sehari-hari dalam suasana formal maupun informal.'),
(19, 'Sumimasen', 'Minta Maaf', 'SUMIMASEN memiliki beberapa makna yang benar-benar berbeda: \"maaf\", \"terima kasih\" dan saat menyapa seseorang. Mungkin awalnya membingungkan, tapi kalau sudah terbiasa akan terasa praktis. Saat orang Jepang mengucapkan SUMIMASEN, mereka biasanya membungkukkan badan untuk berterima kasih atau meminta maaf.'),
(20, 'Onegai', 'Tolong', 'Jika Anda ingin meminta seseorang melakukan sesuatu, tambahkan \"ONEGAI SHIMASU\" di akhir kalimat.\r\n\r\nMisalnya, di taksi, daripada menggunakan \"mohon antar ke\" tempat tujuan, gunakanlah \"ONEGAI SHIMASU\" setelah menyebutkan tujuan.'),
(21, 'Sugoi', 'Luar Biasa', 'digunakan oleh seseorang untuk mengekspresikan suatu hal karena ia terkejut akan hal-hal yang dinilai keren, atau hal yang membuat orang tersebut merasa takjub dan kagum.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbkosakata`
--
ALTER TABLE `tbkosakata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbkosakata`
--
ALTER TABLE `tbkosakata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
