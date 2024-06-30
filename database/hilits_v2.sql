-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 02:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hilits`
--

-- --------------------------------------------------------

--
-- Table structure for table `ideas`
--

CREATE TABLE `ideas` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `kata_kunci` varchar(50) NOT NULL,
  `prestasi` varchar(50) DEFAULT NULL,
  `kontak` varchar(50) NOT NULL,
  `review` varchar(250) DEFAULT NULL,
  `berkas` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ideas`
--

INSERT INTO `ideas` (`id`, `judul`, `deskripsi`, `kata_kunci`, `prestasi`, `kontak`, `review`, `berkas`, `user_id`) VALUES
(1, 'PKM-GFT : Perancangan Drainase Kota Berbasis Cocopeat Bioswale untuk Mendukung Konsep Sponge City pada Pembangunan IKN', ' Sistem drainase berbasis bioswale dengan inovasi pembaruan pada lapisan kedua bioswale yang menggunakan limbah cocopeat atau serabut kelapa. Dibuat untuk mendukung konsep Sponge City yang dikembangkan oleh Ibu Kota Negara Baru', 'Drainase, IKN, Sponge City, Bioswale', 'PIMNAS 36', 'delfiralisaviani@gmail.com', '-', 'Proposal - Perancangan Drainase Kota Berbasis Cocopeat Bioswale untuk Mendukung Konsep Sponge City pada Pembang.pdf', 1),
(2, 'PKM-K : Raih asa: Platform Konsultasi Beasiswa Dalam Negeri Nomor 1 Melalui Peer Mentoring Berbasis Website', 'Raih Asa merupakan platform one-stop solution untuk pejuang beasiswa dalam negeri mewujudkan mimpi. Raih Asa dilengkapi dengan fitur yang menyempurnakan kekurangan dari platform lainnya yang telah ada. Raih Asa memiliki fitur personalisasi yang terjangkau dan sesuai dengan kualitas yang dapat memudahkan pengguna untuk mendapatkan usaha konsultasi beasiswa yang eksklusif bersama awardee beasiswa.', 'Beasiswa, Mentoring, Startup, Website', 'PIMNAS 36', 'nsaufar@gmail.com', '-', NULL, 1),
(3, 'PKM-KC : Detektor Hemoglobin Non-Invasif dengan Kecerdasan Buatan Tertanam STM32', 'Penyakit Systemic Lupus Erythematosus (SLE) memiliki prevalensi sebesar 0.5% di Indonesia dengan jumlah penderita mencapai 5 juta jiwa. Penderita penyakit ini umumnya memiliki gangguan hematologi berupa anemia, dengan jumlah 50% dari total penderita. Akan tetapi, pendeteksian anemia pada penderita SLE secara umum masih dilakukan secara invasif dengan pengambilan darah. Program ini bertujuan untuk membuat rancang bangun prototipe alat detektor hemoglobin non-invasif serta mengetahui akurasi dan efektivitas pengukuran maupun prediksi dari alat tersebut. ', 'Anemia, SLE, Kecerdasan Buatan, Detektor Hemoglobin', 'PIMNAS 36', 'muhammadhuda1025@gmail.com', '-', NULL, 1),
(4, 'PKM-KI : ONPAC: Automatic Onion Peeler and Cutter', 'ONPAC : Automatic Onion Peeler and Cutter dengan battery valve-regulated lead-acd sebagai backup system guna optimalisasi pengolahan bawang merah goreng.', 'Bawang Merah, Makanan, Produksi, Lead-Acid', 'PIMNAS 36', 'aldinugroho637@gmail.com', '-', NULL, 1),
(5, 'PKM-PM : ECO-COMMUNITY Sebagai Upaya Meningkatkan Potensi Wirausaha Melalui Program Pembuatan Eco-Enzip dan Budidaya Lumbricus Rubellus Masyarakat Kampung Bratang Kali Jagir', 'Pengurus Kampung Bratang Gede RT 7 RW 12 merupakan organisasi non-profit yang bertanggung jawab dalam menyelesaikan masalah lingkungan dan ekonomi masyarakat. Namun, pengurus ini masih belum berdaya untuk menuntaskan masalah tersebut. Tingginya volume sampah organik sebesar 169,6 kg tiap harinya dan tingginya jumlah masyarakat marginal mencapai 40% menjadi hambatan serius. Oleh karena itu, Pengurus Kampung Bratang Gede dengan Tim PKM menyepakati adanya pemberdayaan masyarakat berbasis lingkungan untuk meningkatkan potensi wirausaha masyarakat Kampung Bratang Gede melalui program pembuatan eco-enzim dan budidaya Lumbricus rubellus. Kegiatan ini dilakukan selama tiga bulan dengan peserta 20 orang yang terdiri dari sosialisasi program, tiga kali pelatihan dan pendampingan program meliputi budidaya L. rubellus, pembuatan eco-enzim dan produk turunannya, serta pendampingan keberlanjutan program. Terbentuknya tim ECO-COMMUNITY sebagai pengolah limbah organik menjadi produk ekonomi seperti sabun eco-enzim, hand sanitizer, dan cacing segar berpotensi menjadi sumber pendapatan bagi keberlanjutan program', 'Wirausaha, Budidaya, Lumbricus Rubellus, Eco-Enzim', 'PIMNAS 36', 'wahyunjetak210@gmail.com', '-', NULL, 1),
(6, 'PKM-RE : Fabrikasi Komposit ZIF-8/BNT sebagai Fotokatalis untuk Degradasi Limbah Pewarna beta-Naftol', 'Beta-Naftol merupakah salah satu pewarna berbahaya yang telah banyak digunakan oleh industri tekstil yang dapat didegradasi melalui fotokatalitik. Komposit ZIF-8/BNT 10% menunjukkan persentase efisiensi tertinggi sebesar 85,38% dengan waktu iradiasi selama 60 menit, konsentrasi beta-Naftol 100 mg/L, dan dosis adsorben 10 mg. Reaksi yang terjadi selama proses fotokatalitik menunjukkan kinetik reaksi orde nol. Selama proses fotodegradasi, radikal OH dan O2 sebagai spesi reaktif utama dalam mendegradasi beta-Naftol menjadi senyawa lebih sederhana, yaitu asetaldehida, asam format, asam asetat, CO2, dan air. Hasil riset ini menunjukkan ZIF-8/BNT berpotensi dalam mendegradasi polutan organik dalam limbah cair.', 'Degradasi Limbah, Pewarna, Beta-Naftol, Fotokatalitik, ZIF-8, BNT', 'PIMNAS 36', 'rifdah.205004@student.its.ac.id', '-', NULL, 1),
(7, 'PKM-K : Marmorstuff: Inovasi Bisnis Furnitur & Home Decor Ramah Lingkungan bergaya Elclectic Berbasis Upcycling Material Limbah', 'MarmorStuff merupakan sebuah brand furnitur dan home decor dengan lini produk pertamanya yaitu Marmor Collection yang merupakan produk furnitur berbasis teraso upcycling limbah potongan marmer yang dalam pembuatannya menggunakan teknik upcycling dan dalam proses produksinya akan bekerja sama dengan pengrajin teraso lokal Tulungagung. Dalam desainnya, tidak hanya memperhatikan estetika namun produk juga ergonomis menyesuaikan dengan kebutuhan customer ketika beraktivitas. Jenis furnitur semi outdoor dipilih karena material terazo yang dapat bertahan dengan baik di luar ruangan. Marmor Collection terdiri dari Abinaya Series yakni Abinaya Coffee Table, Abinaya Stool. Lalu untuk home décor terdapat Bena Object yakni sebagai pelengkap furnitur yang terdiri dari coaster dan tray. Beberapa produk tersebut berdasarkan riset kebutuhan furnitur pada coffee shop sehingga diharapkan produk dapat memiliki fungsi yang baik serta menambah estetika pada ruangan. ', 'Upcycling, Furnitur, Home Decor, Startup', 'PIMNAS 36', 'salsabiladhita@gmail.com', '-', NULL, 1),
(8, 'PKM-KC : aWay PCG: Wireless Phonocardiogram System.', 'Penyakit kardiovaskular merupakan salah satu penyebab utama kematian di dunia, termasuk di Indonesia. Pemeriksaan fisik jantung dengan metode auskultasi menggunakan stetoskop membutuhkan pengalaman klinis dan kepekaan telinga, sehingga mempengaruhi keakuratan dalam mendeteksi kelainan suara jantung. Selain itu, stetoskop yang umumnya digunakan saat ini masih menggunakan tubing, yang dapat menimbulkan tantangan dalam hal kontak fisik antara tenaga medis dan pasien. Apabila penggunaannya pada pasien yang terindikasi dengan penyakit menular melalui airborne dan droplet, stetoskop dapat menjadi media penularan. Berdasarkan permasalahan tersebut, dikembangkan prototipe untuk merekam suara jantung dengan piranti Phonocardiography (PCG) melalui komunikasi bluetooth berbasis website yang memiliki keunggulan low-cost, computer-aided diagnosis, dan wearable. Selain itu, kontribusi utama pada penelitian ini adalah mendeteksi adanya kelainan suara jantung akibat anomali cardiodynamic katup jantung yang disebut murmur', 'Phonocardiogram, Kesehatan, Wireless, Bluetooth', 'PIMNAS 36', 'fathinhanum699@gmail.com', '-', NULL, 1),
(9, 'PKM-RE : Potensi Keratin dari Limbah Rambut dalam Sintesis Membran Hibrida Karbon Tertemplat Zeolit untuk Pemurnian Biogas dari Palm Oil Mill Effluent', 'Pemanfaatan Palm Oil Mill Effluent (POME) berpotensi untuk diolah menjadi biogas sebagai sumber energi bersih dan terbarukan. Namun, kandungan CO2 dalam biogas dapat menurunkan nilai kalor pembakaran, sehingga pemurnian biogas perlu dilakukan. Pendekatan inovatif dengan membran hibrida karbon tertemplat zeolit (KTZ) dengan keratin dari limbah rambut sebagai prekursor karbon. Oleh karena itu, penelitian ini bertujuan untuk melakukan optimasi dalam rasio penambahan filler KTZ pada membran hibrida serta menganalisis kinerjanya untuk proses pemisahan gas CO2 dari biogas POME', 'Sintesis, Keratin, Limbah Rambut, Membran Hibrida Karbon', 'PIMNAS 36', 'irmafitriaa11@gmail.com', '-', NULL, 1),
(10, 'PKM-K : Alpha Academy, Platform perdampingan Persiapan Olimpiade Sains Nasional (OSN) Berbasis Website sebagai Upaya Talent Scouting dan Pemerataan Akses Pendidikan Siswa di Indonesia', 'Alpha Academy merupakan startup yang menyediakan layanan one stop solution untuk mengatasi keresahan siswa yang ingin mengikuti olimpiade namun terkendala pada persiapannya karena materi yang diajarkan di sekolah tidak linear dengan materi yang diajarkan di olimpiade. Alpha Academy menggunakan website pada penerapannya untuk memudahkan siswa untuk mengakses materi demipemerataan akses pendidikan dan talent scouting siswa di Indonesia. Alpha Academy berkomitmen untuk membantu para siswa mewujudkan harapan untuk menjadi pemenang olimpiade melalui one stop solution berisi Alpha Ecosystem yang dapat mempermudah dan meratakan akses persiapan dan pelatihan olimpiade.', 'Pendidikan, Olimpiade, Website, Talent Scouting, OSN', 'PIMNAS 36', 'sahdarani@gmail.com', '-', NULL, 1),

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `kata_kunci` varchar(50) NOT NULL,
  `perusahaan` varchar(50) DEFAULT NULL,
  `kontak` varchar(50) NOT NULL,
  `berkas` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`id`, `judul`, `deskripsi`, `kata_kunci`, `perusahaan`, `kontak`, `berkas`, `user_id`) VALUES
(1,'Seeking Safe And Effective Outdoor Mosquito Solutions','Seeking safe and effective outdoor mosquito solutions to help consumers enjoy their yard and outdoor spaces without the annoyance and inconvenience of mosquito bites. Mosquitos are a common nuisance and disease spreading insect. In addition to being vectors of disease, one of the main reasons we want to tackle this pest is to allow people to enjoy outdoor activities more frequently - e.g., eating outside, spending time with family, and watching outdoor sporting events. Here in P&G Ventures, we are looking for existing, in market solutions which exist globally that are specifically designed to kill or repel mosquitos.', 'Care, Hygiene, Beauty, Cosmetics ,mosquito, repel, Internasional', 'The Procter & Gamble Company (AS)', 'https://procter-gambleopeninnovation.innoget.com/', NULL, 2),
(2,'Seeking Fluid Dynamic Numerical Simulation Of A Ballpoint Pen Writing System','BIC is looking for advanced computer simulations that can accurately model how ink flows in a ballpoint pen during writing. The writing performance of a ballpoint pen depends on the interaction between the ink, the ball and ball socket, and the paper. Fluid dynamic numerical simulations could help determine quantitatively on the one hand the magnitude of certain key parameters such as the ink viscosity, surface roughness, shear rate, stress & strain distribution etc and on the other their influence on ink flow and consumption. The group has extensive empirical knowledge of the parameters affecting writing but has never used numerical simulations to further enhance it. A quantitative analysis of the influence of a system parameter on writing would help us pinpoint those that have to be adjusted to meet the expected product performance.', 'Fluid Dynamics, Lubricants and functional fluids, rheology, computer simulations', 'BIC (FRA)', 'https://bicopeninnovation.innoget.com/', NULL, 2),
(3,'Seeking Existing Market Solutions Targeted Towards Crawling Insects','The issue of crawling insects in homes has been an ongoing issue. The popular types of crawling insects causing problems have been ants and cockroaches. The search will focus on existing market solutions targeted towards crawling insects such as ants and cockroaches (other types of crawling insects are in scope i.e., bed bugs).', 'Protecting Man and Environment, Health careMedical/health, Consumer related, Consumer Products, Health and beauty aids, Cosmetics, insects', 'The Procter & Gamble Company (USA)', 'https://procter-gambleopeninnovation.innoget.com/', NULL, 2),
-- TEMPLATE
-- (4,'','', '', '', '', NULL, 2),

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
-- Other than admin, pass is "qweqwe"

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'ITS', 'its@example.com', '$2y$10$f83ru5Wxbj9GqWKlGUfViOItuKMup3iTJHJHbk79RF1XjsF/98n2K'),
(2, 'Mitra_Admin', 'mitra.admin@example.com', '$2y$10$f83ru5Wxbj9GqWKlGUfViOItuKMup3iTJHJHbk79RF1XjsF/98n2K'),
(3, 'eric_jones', 'eric.jones@example.com', '$2y$10$f83ru5Wxbj9GqWKlGUfViOItuKMup3iTJHJHbk79RF1XjsF/98n2K'),
(4, 'alice_wong', 'alice.wong@example.com', '$2y$10$f83ru5Wxbj9GqWKlGUfViOItuKMup3iTJHJHbk79RF1XjsF/98n2K'),
(5, 'bob_chen', 'bob.chen@example.com', '$2y$10$f83ru5Wxbj9GqWKlGUfViOItuKMup3iTJHJHbk79RF1XjsF/98n2K'),
(6, 'eva_li', 'eva.li@example.com', '$2y$10$f83ru5Wxbj9GqWKlGUfViOItuKMup3iTJHJHbk79RF1XjsF/98n2K'),
(7, 'admin', 'corneliusv35@gmail.com', '$2y$10$cbESVm4j37AYF1f6KcSPg.aa8HoFqIplfi980KeMHcyqAK4khqtf6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ideas`
--
ALTER TABLE `ideas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ideas`
--
ALTER TABLE `ideas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
