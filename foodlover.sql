-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 21 2020 г., 07:03
-- Версия сервера: 8.0.15
-- Версия PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- База данных: `foodlover`
--
CREATE DATABASE IF NOT EXISTS `foodlover` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `foodlover`;
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `title`, `description`, `date`, `image`, `viewed`, `user_id`, `status`, `category_id`) VALUES
(1, 'Стиль Треш полька в тату', 'ИСТОРИЯ ВОЗНИКНОВЕНИЯ\r\nМало когда можно точно определить рамки появления того или иного стиля в татуировании. Сложно бывает назвать и его основателей. Но не в случае с треш полькой. Место рождения — западная Германия. «Родители» стиля треш полька — Симон Плафф и Волько Мершски. Между прочим, семейная пара. Их собственная студия заработала в начале двухтысячных, но до этого на протяжении трех десятков лет было «прощупывание» стиля. Понимание идеи возникло у Мершски в 1973 году.\r\n\r\nКак ни странно, основы стиля в некотором роде следует искать в фольклоре. В этом признавались его создатели. В частности, название Trash Polka — это не что иное, как отсылка авторов к цыганскому и немецкому фольклору.\r\n\r\nХотя стиль молодой, он в некотором роде уже устоявшийся. Но при этом  — постоянно развивающийся. Современные мастера продолжают вносить в него какие-то свои идеи.\r\n\r\nСтиль треш полька «родилсь» из фотографий, коллажей, газетных вырезок. Этот «хлам» служил для двух основателей — татуировщиков-экспериментаторов — основой, поверх которой они делали свои рисунки. Спустя время выработался стиль, оформились черты. К ним относится, например, использование мрачных образов. Череп — один из постоянных «спутников» татуировок в стиле трэш полька. Но, например, если в орнаментале он «нейтрален», насколько это возможно, то здесь часто выражает ужас, боль, отчаяние. Эта и другая символика «рождает» страшные нательные картины. Хотя для них может быть характерна и злая ирония, в целом остается довольно гнетущее впечатление.\r\n\r\nМРАЧНОСТЬ КАК ОСНОВА\r\nУ татуировок в стиле треш полька нет «света». Не считая восхищения работой мастера, татуировка обычно вызывает у окружающих неприятные эмоции. Она шокирует, пугает, подавляет. Энергетика у таких иллюстраций всегда тяжелая. При этом депрессивность нательных рисунков сочетается с их мощностью.\r\n\r\nСюжеты в нательных картинах абсурдистские. Часто это смерть, разложение, убийство. При этом в такой экспрессивной технике могут быть перенесены портреты. Помимо черепов героями рисунков становятся лица без глаз, кресты, ангелы и, как ни странно, цветы. Впрочем, в рамках этого стиля они производят тревожное, гнетущее впечатление, здесь выступая символом не жизни, а смерти. В татуировках сквозят агрессия и чрезмерность. Притом в них чувствуется явный протест, по ощущениям — на уровне назревшего взрыва.', '2019-10-08', 'ljrvupn5nrk.jpg', 14, 1, 1, 1),
(2, 'Стиль Графика в тату', '', '2019-09-18', 'img_1580_2ysh.jpg', 6, 1, 1, 1),
(3, 'Стиль Биомеханика в тату', 'Сфера тату многие года пользуется колоссальной популярностью среди обоих полов, причем разного возрастного поколения. Данная сфера включает в себя множество стилевых вариаций в которых исполняются тату-работы, одним из самых широко распространенных является биомеханика. Данный стиль легко узнаваем: фрагменты тела человека татуировщик заменяет механическими конструкциями. В тату-работах биомеханики видны разрывы кожных тканей, сквозь которые можно разглядеть механизм. Стиль довольно зрелищный, и смотрится всегда великолепно.', '2020-01-22', 'biomehanika_s_mehanizmami_rukav_muzh_2.jpg', 4, 1, 1, 1),
(4, 'Стиль Чикано в тату', 'Одним из самых популярных стилей в сфере тату, является стиль \"Чикано\". Данный стиль относительно молодой в сфере татуировок, но несмотря на это, он узнаваем и пользуется колоссальной популярностью. Тату чикано имеет собственную историю возникновения. Так как точный перевод самого слова \"чикано\" не известен, одно из самых приближенных вариантов перевода - \"мексикано\", обозначающее американских мексиканцев. Тату в данном стиле, в начале своего возникновения, были популярны в латиноамериканских бандах, и на протяжении длительного периода времени их набивали исключительно преступные слоя населения. Но, со временем стиль чикано перестал нести в себе негативные значения, и данное украшение тела могли себе позволить все желающие.\r\n\r\nПомимо того, что тату чикано являлось украшением уличных банд, данный стиль нес в себе так же особую трактовку. Данные татуировки несут в себе значение бесполезного бытия и высшей справедливости. Довольно часто изображения этого стиля люди связывали с \"пляской смерти\", в которой изображается смерть, ведущая в своем танце различных людей. Поэтому нательные изображения чикано обладают загадочным и даже зловещим обозначением.', '2019-09-09', 'img_7132aaa_2ysh.jpg', 45, 1, 1, 1),
(5, 'Стиль Скетч в тату', '\r\nСкетч стайл тату – стиль, который возник в начале 20 века и сегодня пользуется большой популярностью. В переводе он означает «набросок». Изображения отличаются незавершенностью, при этом имеют смысловую нагрузку.\r\n\r\nТату в стиле скетч рекомендуют тем, кто впервые решил нанести рисунок на тело. Мастер создает композицию, которую со временем можно изменить или дополнить.', '2019-09-18', 'sketch-4.png', 2, 1, 1, 1),
(6, 'Стиль Минимализм в тату', 'Тату в стиле минимализм подходит для девушек, предпочитающих не яркие и крупные рисунки, а маленькие изображения. Лаконичные рисунки выбирают люди, которые хотят сделать эстетичное тату, но не привлекать чрезмерного внимания. Изображения гармонично смотрятся на любой части тела, большей популярность пользуются плечо, предплечье, шея, запястье.\r\n\r\nДевушки часто наносят тату в стиле минимализм на запястье руки или щиколотку. Это тончайшие изображения цветов, птиц и сказочных персонажей. Такие образы призваны подчеркнуть хрупкость и женственность.', '2019-09-27', 'minimalizm-5.jpg', 11, 1, 1, 1),
(7, 'Стиль Барокко в тату', 'Тату в стиле барокко выбирают, чтобы привлечь внимание, подчеркнуть свою неординарность. Эскиз нередко состоит из нескольких орнаментов и рисунков, напоминающих кружева, причудливую лепнину.\r\n\r\nСчитается, что стиль появился в искусстве тату как вызов традициям. В переводе название означает «склонность к излишествам». Изображения отличаются богатством узоров, витиеватостью, динамичностью линий, наличием резких переходов.', '2019-05-14', '8.jpg', 91, 1, 1, 1),
(8, 'Стиль Хайда в тату', '\r\nТату в стиле хайда является современной интерпретацией рисунков, которые наносили на тело индейцы одноименного племени. Направление известно узкому кругу любителей нательных изображений, которые высоко ценят стилистику и аутентичные особенности татуировки.\r\n\r\nИз истории тату хайда\r\nСтиль основан на искусстве племенной татуировки, распространенной на островах и по побережью Канады, Аляски. В те времена изображения демонстрировали социальный статус, подвиги человека. Рисунки на теле считались привилегией знати. Наносили татуировки по большим праздникам, это был публичный обряд, который проводил вождь.\r\n\r\nПлемя было разделено на кланы, каждый из которых имел свое животное, которому поклонялись. Тотемом служили изображения волка, медведя, вороны, орла, дельфина, лягушки. Древние считали, что рисунок их защищает.', '2019-10-10', 'haida7.jpg', 2, 1, 1, 1),
(9, 'Стиль Греческий в тату', '\r\nТату в греческом стиле – новое популярное направление, которое выбирают мужчины и женщины разных возрастов. Изображения привлекают многогранностью, оригинальностью. В зависимости от эскиза они подчеркивают женственность и мужественность, придают образу индивидуальность. Широко распространены рисунки мифологических персонажей, надписи и орнаменты.', '2019-09-09', 'greece11.jpg', 2, 1, 1, 1),
(10, 'Стиль Каллиграфия в тату', 'Каллиграфия – древнее искусство, которое в современном мире воплотилось в тату в виде различных надписей. Их нередко делают именитые персоны. Этот стиль любят за то, что получаемые надписи не только содержательны, но и очень красивы. Они дают возможность самовыражения и через эстетику, и через особый философский смысл.', '2019-10-08', 'kalligrafiya_nadpis_ruka_zhen_1.jpg', 45, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `article_tag`
--

CREATE TABLE `article_tag` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`) VALUES
(1, 1, 2),
(3, 2, 1),
(5, 3, 2),
(4, 4, 2),
(6, 5, 1),
(7, 6, 1),
(8, 7, 1),
(9, 8, 1),
(2, 9, 2),
(10, 10, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Женские'),
(2, 'Мужские');

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tag`
--

INSERT INTO `tag` (`id`, `title`) VALUES
(1, 'Женские'),
(2, 'Мужские');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAdmin` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `isAdmin`, `photo`) VALUES
(1, 'Marina', 'marina@gmail.com', '1', 1, ''),
(2, 'Sonya', 'blep@gmail.com', '1', 0, '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`article_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`),
  ADD CONSTRAINT `article_tag_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;