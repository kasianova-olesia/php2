-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 05 2019 г., 20:14
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Платья'),
(2, 'Брюки'),
(3, 'Юбки'),
(4, 'Блузки'),
(5, 'Футболки'),
(6, 'Белье'),
(7, 'Лонгсливы'),
(8, 'Верхняя одежда');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `product_id`, `text`) VALUES
(1, 1, 4, 'Нежное кружево, мягкий хлопок, приятный к телу'),
(2, 2, 4, 'Идеальный комплект, сел как влитой'),
(3, 3, 2, 'Купила уже несколько вариантов, в разных тонах'),
(4, 4, 3, 'Идет в размер, село идеально, благородный оттенок');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `photo`, `short_description`, `description`, `price`) VALUES
(1, 8, 'Тест', 'no-photo.jpg', 'Краткое описание товара', 'Подробное описание товара', 100),
(2, 1, 'Платье 1', 'dress_001.jpg', 'Платье, Just Cavalli', 'Замечательное дизайнерское платье. Модель сочетает в себе нотки авангарда и этнического стиля. Рукава платья короткие, прямой крой. Вырез горловины округлый. Универсальная расцветка с декором в виде бисера.', 89000),
(3, 1, 'Платье 2', 'dress_002.jpg', 'Платье, Sofi Strokatto', 'Шикарное вечернее платье рыбка. Покрой платья создает идеальный силуэт фигуры. Глубокий вырез на спине подчеркивает данную область и добавляет образу очарование. Блестящая поверхность, создающаяся благодаря пайеткам, создает легкое сияние. А глубокий синий цвет облагораживает.', 38800),
(4, 6, 'Белье', 'panties.jpg', 'Комплект белья, Valentin Secret', 'Нежный комплект состоит из бюстгальтера и трусиков-слипов. Бюстгальтер имеет плотную чашку с несъемным пуш-апом. Благодаря этому эффекту грудь выглядит объемной и приподнятой. Чашки на косточках. Традиционная застежка на 3 крючка. Фурнитура металлическая.', 8999);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `groups_id` int(11) DEFAULT NULL,
  `login` varchar(32) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `surname` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `groups_id`, `login`, `password`, `name`, `surname`, `email`, `phone`, `description`) VALUES
(12, 1, 'admin', '123', 'Olesia', 'Kasianova', 'kas.olesia@gmail.com', '89258388004', 'The site administrator'),
(14, 1, 'admin', '123', 'Olesia', 'kas', 'kas.olesia@gmail.com', '89258388004', 'The site administrator'),
(15, 1, 'user2', '1234', 'Илья', 'Касьянов', 'ilya-kas@mail.ru', '89255486789', 'The site administrator'),
(16, 1, 'admin', '123', 'Olesia', 'Kasianova', 'kas.olesia@gmail.com', '89258388004', 'The site administrator'),
(17, 1, 'admin', '123', 'Olesia', NULL, NULL, NULL, 'The site administrator'),
(18, 1, 'admin', '123', 'Olesia', NULL, NULL, NULL, 'The site administrator'),
(19, 1, 'admin', '123', 'Olesia', NULL, NULL, NULL, 'The site administrator'),
(20, 1, 'user1', '12345', 'Анастасия', 'Касьянова', 'nastia@mail.ru', '123-456', 'Привет!'),
(21, 1, 'user1', '12345', 'Анастасия', 'Касьянова', 'nastia@mail.ru', '123-456', 'Привет!'),
(22, 1, 'user1', '12345', 'Анастасия', 'Касьянова', 'nastia@mail.ru', '123-456', 'Привет!'),
(23, 1, 'user1', '12345', 'Анастасия', 'Касьянова', 'nastia@mail.ru', '123-456', 'Привет!'),
(24, 1, 'user1', '12345', 'Анастасия', 'Касьянова', 'nastia@mail.ru', '123-456', 'Привет!'),
(25, 1, 'user1', '12345', 'Анастасия', 'Касьянова', 'nastia@mail.ru', '123-456', 'Привет!'),
(26, 1, 'user2', '123456789', 'Виталина', 'Касьянова', 'nastia@mail.ru', '123-456', 'Привет!'),
(27, 1, 'user1', '12345', 'Анастасия', 'Касьянова', 'nastia@mail.ru', '123-456', 'Привет!'),
(28, 1, 'user1', '12345', 'Анастасия', 'Касьянова', 'nastia@mail.ru', '123-456', 'Привет!'),
(29, 1, 'user1', '12345', 'Анастасия', 'Касьянова', 'nastia@mail.ru', '123-456', 'Привет!'),
(30, 1, 'user1', '12345', 'Анастасия', 'Касьянова', 'nastia@mail.ru', '123-456', 'Привет!'),
(31, 1, 'user1', '12345', 'Анастасия', 'Касьянова', 'nastia@mail.ru', '123-456', 'Привет!'),
(32, 1, 'user1', '12345', 'Анастасия', 'Касьянова', 'nastia@mail.ru', '123-456', 'Привет!');

-- --------------------------------------------------------

--
-- Структура таблицы `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
