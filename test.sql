-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 26 2019 г., 14:56
-- Версия сервера: 10.1.36-MariaDB
-- Версия PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `email`) VALUES
(1, '123Ñ„Ð°', 'Ð°Ð²Ñ„', 'adffd@fdasafd'),
(2, '', '', ''),
(3, '', '', ''),
(4, '', '', ''),
(5, '', '', ''),
(6, 'adf', 'adadaad', 'adf@sdfadf'),
(7, 'adf', 'adadfafd', 'DADAF@adfadf'),
(8, '123Ñ„Ð°', 'Ð°Ð²Ñ„', 'dfafdf@adadf'),
(9, '123Ñ„Ð°', 'Ð°Ð²Ñ„', 'adadfadf@dasf'),
(10, '123adf', 'Ð°Ð²Ñ„', 'adfadf@adf'),
(11, '123adf', 'adf', 'adfadf@adfad'),
(12, '123adf', 'addafsdf', 'adfadf@adfada'),
(13, '123adf', 'adds', 'adfadf@adfadaa'),
(14, '123adf', 'ad', 'adfadf@adfadaadaf'),
(15, '123adf', 'adfdafd', 'adfadf@adfadaadafsa'),
(16, '123adf', 'sdafd', 'adfadf@adfadaadafsaaaaaa'),
(17, '123adf', 'ad', 'adfadf@adfadaadafsaaaaaaadfa'),
(18, '123adafdf', 'dfadfsdf', 'adafdafda@adaagghfsg'),
(19, 'adfad', 'adadf', 'adad@adfafd'),
(20, 'adfadf', 'adfafd', 'adafd@adf');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
