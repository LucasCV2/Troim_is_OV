-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 22 2014 г., 22:27
-- Версия сервера: 5.5.33-log
-- Версия PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `asu`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admlist`
--

CREATE TABLE IF NOT EXISTS `admlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `psw` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dolgnost`
--

CREATE TABLE IF NOT EXISTS `dolgnost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `dolgnost`
--

INSERT INTO `dolgnost` (`id`, `name`) VALUES
(1, 'Староста'),
(2, 'Зам. старосты'),
(3, 'Физорг'),
(4, 'Культорг'),
(5, 'Профорг'),
(6, 'Студент');

-- --------------------------------------------------------

--
-- Структура таблицы `fam`
--

CREATE TABLE IF NOT EXISTS `fam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `fam`
--

INSERT INTO `fam` (`id`, `name`) VALUES
(1, 'Мать'),
(2, 'Отец'),
(3, 'Дедушка'),
(4, 'Бабушка'),
(5, 'Брат'),
(6, 'Сестра'),
(7, 'Тетя'),
(8, 'Дядя'),
(9, 'Отчим'),
(10, 'Мачеха');

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sp_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `name`, `sp_id`) VALUES
(1, '1ОВ-13', 1),
(2, '1ПР-13', 2),
(3, '1ЗВ-13', 3),
(4, '1ОВ-12', 1),
(5, '1ОВ-11', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `pr_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ocenka`
--

CREATE TABLE IF NOT EXISTS `ocenka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `pr_id` int(11) NOT NULL,
  `mod_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `tp_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st_id` int(11) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `tell` varchar(200) NOT NULL,
  `dater` date NOT NULL,
  `pass` varchar(255) NOT NULL,
  `vidan` varchar(255) NOT NULL,
  `inn` varchar(255) NOT NULL,
  `dolgnost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `personal`
--

INSERT INTO `personal` (`id`, `st_id`, `adress`, `tell`, `dater`, `pass`, `vidan`, `inn`, `dolgnost`) VALUES
(3, 84, 'Дружковка Ленина 32', '0990535425', '2014-10-15', 'ВА959568', 'Дружковским ГО УМВД', '309833258', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_r`
--

CREATE TABLE IF NOT EXISTS `personal_r` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st_id` int(11) NOT NULL,
  `fam_id` varchar(255) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `mesto_rab` varchar(255) NOT NULL,
  `tel_dom` varchar(255) NOT NULL,
  `tel_rab` varchar(255) NOT NULL,
  `dolgnost` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `predmeti`
--

CREATE TABLE IF NOT EXISTS `predmeti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `pr_id` int(11) NOT NULL,
  `mod_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `propuski`
--

CREATE TABLE IF NOT EXISTS `propuski` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) NOT NULL,
  `koll` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spec`
--

CREATE TABLE IF NOT EXISTS `spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `spec`
--

INSERT INTO `spec` (`id`, `name`) VALUES
(1, 'Обслуговування верстаів з ПУ та РТК'),
(2, 'Розробка програмного забезпечення'),
(3, 'Зварювальне виробництво');

-- --------------------------------------------------------

--
-- Структура таблицы `studs`
--

CREATE TABLE IF NOT EXISTS `studs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fam` varchar(255) NOT NULL,
  `imya` varchar(255) NOT NULL,
  `otch` varchar(255) NOT NULL,
  `gp_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Дамп данных таблицы `studs`
--

INSERT INTO `studs` (`id`, `fam`, `imya`, `otch`, `gp_id`) VALUES
(1, 'Висоцький', 'Данило', 'Сегійович', 3),
(2, 'Вілков', 'Єгор', 'Олександрович', 1),
(41, 'Висоцький', 'Данило', 'Сегійович', 3),
(43, 'Вілков', 'Єгор', 'Олександрович', 1),
(84, 'Лисовский ', 'Егор', 'Иванович', 5),
(85, 'ff', 'ff', 'ff', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `tip_ocenki`
--

CREATE TABLE IF NOT EXISTS `tip_ocenki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `tip_ocenki`
--

INSERT INTO `tip_ocenki` (`id`, `name`) VALUES
(1, 'Модуль'),
(2, 'Зачет'),
(3, 'Экзамен'),
(4, 'Аттестация на 1.11'),
(5, 'Аттестация на 1.04');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `st_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `pass`, `st_id`) VALUES
(1, 'dan', 'dan', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
