-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2024 pada 18.30
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `note_todo_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `createdAt`, `updatedAt`) VALUES
(10, 'G', '¢\n\nsistem\n\nmasuk ke halaman home\n\n‘menampilkan halaman\npenerjemah\n\nfmasukkan Kalimal\nyg akan di\nterjemahkan\n\nmenampilkan hasil\nterjemahanya\n\n(QMisuaira\n\nradigm )\n', '2024-06-15 16:29:30', '2024-06-15 16:29:30'),
(12, 'JMgjv', '(‘\'/predict*, methods=[*POST*])\nQO:\n\nfile = request.files[ ‘image’ ]\nimg = Image. (io.BytesI0(file.read()))\nimg = img. ((224, 224))\nimg_array = np. (img)\nimg_array = img array / 255.0\nimg_array = np. (img_array, axis=@)\nprediction = model.predict(img_array)\npredicted_index = np. (prediction[@])\npredicted_class = class_labels[predicted_index]\n\nreturn ({‘ prediction’: predicted_class})\n\n', '2024-06-16 03:13:16', '2024-06-16 11:25:59'),
(13, 'ljn', 'h\n\nUser Klik toombol Upload\npage\n\n‘Sistem Menampilkan\ndokumen Gambar\n\nlemilin dan upload)\nGambar\n\nIMendeteksi dan menapilkan|\nhasil deteksinya\n\nQ VisualParadigm }\n', '2024-06-16 03:43:05', '2024-06-16 03:43:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `task` varchar(255) NOT NULL,
  `completed` tinyint(1) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dueDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `todos`
--

INSERT INTO `todos` (`id`, `task`, `completed`, `createdAt`, `updatedAt`, `dueDate`) VALUES
(2, 'makan', 0, '2024-06-03 06:20:14', '2024-06-16 15:48:06', '2024-06-19 19:07:00'),
(3, 'minum', 0, '2024-06-16 08:20:59', '2024-06-16 15:48:15', '2024-06-15 18:25:00'),
(5, 'kuliah', 0, '2024-06-16 11:26:15', '2024-06-16 15:48:23', '2024-06-16 08:26:00'),
(6, 'h ', 0, '2024-06-16 13:36:47', '2024-06-16 13:36:47', '2024-06-06 00:08:00'),
(7, 'khb', 0, '2024-06-16 15:14:53', '2024-06-16 15:14:53', '2024-06-16 15:16:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
