-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889:8889
-- Czas generowania: 16 Cze 2023, 14:54
-- Wersja serwera: 5.7.24
-- Wersja PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `react-crud-employees`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employees`
--

CREATE TABLE `employees` (
  `id_employee` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `shift` varchar(20) NOT NULL,
  `group_number` varchar(20) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `employees`
--

INSERT INTO `employees` (`id_employee`, `name`, `surname`, `shift`, `group_number`, `create_at`, `update_at`) VALUES
(1, 'John', 'Cruz', '3', '1', '2023-06-15 22:00:00', '2023-06-16 14:05:13');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id_employee`),
  ADD UNIQUE KEY `id_employee` (`id_employee`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `employees`
--
ALTER TABLE `employees`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
