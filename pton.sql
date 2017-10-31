-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017 年 9 朁E08 日 11:37
-- サーバのバージョン： 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pton`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `contcts`
--

CREATE TABLE `contcts` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '名前',
  `email` varchar(255) NOT NULL COMMENT 'アドレス',
  `body` text COMMENT '内容',
  `delete_flag` int(11) DEFAULT NULL COMMENT '削除',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime DEFAULT NULL COMMENT '更新日'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `genres`
--

CREATE TABLE `genres` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'ジャンル名',
  `delete_flag` varchar(255) NOT NULL DEFAULT '0' COMMENT '削除',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime DEFAULT NULL COMMENT '更新日'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `genres`
--

INSERT INTO `genres` (`id`, `name`, `delete_flag`, `created`, `modified`) VALUES
(1, '自分を超える', '0', '2017-09-08 06:12:55', '2017-09-08 06:12:55'),
(2, ' 強くなりたい', '0', '2017-09-08 06:13:32', '2017-09-08 06:13:32'),
(3, '楽しく生きる', '0', '2017-09-08 06:13:41', '2017-09-08 06:13:41'),
(4, '自己投資', '0', '2017-09-08 06:13:52', '2017-09-08 06:13:52'),
(5, '奮い立つ', '0', '2017-09-08 06:14:03', '2017-09-08 06:14:03'),
(6, '過去の自分', '0', '2017-09-08 06:14:12', '2017-09-08 06:14:12'),
(7, '失敗から学ぶ', '0', '2017-09-08 06:14:20', '2017-09-08 06:14:20'),
(8, '言い訳', '0', '2017-09-08 06:14:29', '2017-09-08 06:14:29'),
(9, '自分は自分', '0', '2017-09-08 06:14:40', '2017-09-08 06:14:40'),
(10, '焦るな', '0', '2017-09-08 06:14:48', '2017-09-08 06:14:48'),
(11, 'ぶれない心', '0', '2017-09-08 06:14:56', '2017-09-08 06:14:56'),
(12, '自分と向き合う', '0', '2017-09-08 06:15:04', '2017-09-08 06:15:04'),
(13, '諦めそうな時', '0', '2017-09-08 06:15:11', '2017-09-08 06:15:11'),
(14, '一流・二流・三流', '0', '2017-09-08 06:15:21', '2017-09-08 06:15:21'),
(15, ' 仕事', '0', '2017-09-08 06:15:40', '2017-09-08 06:15:40'),
(16, '感謝', '0', '2017-09-08 06:15:47', '2017-09-08 06:15:47'),
(17, 'チャンス', '0', '2017-09-08 06:15:54', '2017-09-08 06:15:54'),
(18, '希望', '0', '2017-09-08 06:16:06', '2017-09-08 06:16:06'),
(19, '行動', '0', '2017-09-08 06:16:13', '2017-09-08 06:16:13'),
(20, ' 頑張れる言葉', '0', '2017-09-08 06:16:26', '2017-09-08 06:16:26'),
(21, '前向きになれる', '0', '2017-09-08 06:16:43', '2017-09-08 06:16:43'),
(22, ' 見返してやる', '0', '2017-09-08 06:16:52', '2017-09-08 06:16:52'),
(23, ' 困難に立ち向かう', '0', '2017-09-08 06:17:05', '2017-09-08 06:17:05');

-- --------------------------------------------------------

--
-- テーブルの構造 `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `partner_id` int(10) DEFAULT NULL,
  `partner_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `images`
--

INSERT INTO `images` (`id`, `partner_id`, `partner_name`, `name`, `url`, `delete_flag`, `created`, `modified`) VALUES
(4, 2, 'Quotation', 'images (4).jpg', '/files/updir/20170908063633_0.jpeg', 0, '2017-09-08 06:36:36', '2017-09-08 06:36:36'),
(3, 1, 'Quotation', 'images (2).jpg', '/files/updir/20170908060137_0.jpeg', 0, '2017-09-08 06:01:39', '2017-09-08 06:01:39'),
(5, 3, 'Quotation', 'images (4).jpg', '/files/updir/20170908064652_0.jpeg', 0, '2017-09-08 06:51:51', '2017-09-08 06:51:51'),
(6, 4, 'Quotation', 'img3.jpg', '/files/updir/20170908071906_0.jpeg', 0, '2017-09-08 07:19:09', '2017-09-08 07:19:09'),
(7, 5, 'Quotation', '2d9182724_0.jpg', '/files/updir/20170908072100_0.jpeg', 0, '2017-09-08 07:21:02', '2017-09-08 07:21:02'),
(8, 6, 'Quotation', '2d9182724_0.jpg', '/files/updir/20170908072109_0.jpeg', 0, '2017-09-08 07:21:11', '2017-09-08 07:21:11'),
(9, 7, 'Quotation', '2s4_0.jpg', '/files/updir/20170908072135_0.jpeg', 0, '2017-09-08 07:21:37', '2017-09-08 07:21:37'),
(10, 8, 'Quotation', '20d182724_0.jpg', '/files/updir/20170908072155_0.jpeg', 0, '2017-09-08 07:21:57', '2017-09-08 07:21:57'),
(11, 3, 'Quotation', NULL, '/files/updir/', 0, '2017-09-08 07:22:25', '2017-09-08 07:22:25'),
(12, 3, 'Quotation', NULL, '/files/updir/', 0, '2017-09-08 07:22:32', '2017-09-08 07:22:32'),
(13, 3, 'Quotation', NULL, '/files/updir/', 0, '2017-09-08 07:22:34', '2017-09-08 07:22:34'),
(14, 3, 'Quotation', NULL, '/files/updir/', 0, '2017-09-08 07:22:47', '2017-09-08 07:22:47'),
(15, 9, 'Quotation', '272dsdsd4_0.jpg', '/files/updir/20170908072346_0.jpeg', 0, '2017-09-08 07:23:49', '2017-09-08 07:23:49'),
(16, 9, 'Quotation', 'images (4).jpg', '/files/updir/', 0, '2017-09-08 07:23:49', '2017-09-08 07:23:49'),
(17, 3, 'Quotation', NULL, '/files/updir/', 0, '2017-09-08 07:24:26', '2017-09-08 07:24:26'),
(18, 1, 'Quotation', NULL, '/files/updir/', 0, '2017-09-08 07:24:44', '2017-09-08 07:24:44'),
(19, 1, 'Quotation', NULL, '/files/updir/', 0, '2017-09-08 07:25:11', '2017-09-08 07:25:11'),
(20, 1, 'Quotation', NULL, '/files/updir/20170908072509_0.jpeg', 0, '2017-09-08 07:27:39', '2017-09-08 07:27:39'),
(21, 2, 'Quotation', NULL, '/files/updir/20170908072815_0.jpeg', 0, '2017-09-08 07:28:17', '2017-09-08 07:28:17'),
(22, 2, 'Quotation', NULL, '/files/updir/20170908072831_0.jpeg', 0, '2017-09-08 07:28:33', '2017-09-08 07:28:33'),
(23, 2, 'Quotation', NULL, '/files/updir/20170908072854_0.jpeg', 0, '2017-09-08 07:28:56', '2017-09-08 07:28:56'),
(24, 2, 'Quotation', NULL, '/files/updir/20170908072854_0.jpeg', 0, '2017-09-08 07:29:00', '2017-09-08 07:29:00'),
(25, 2, 'Quotation', NULL, '/files/updir/20170908072912_0.jpeg', 0, '2017-09-08 07:29:14', '2017-09-08 07:29:14'),
(26, 10, 'Quotation', '201608291dfsf82724_0.jpg', '/files/updir/20170908073040_0.jpeg', 0, '2017-09-08 07:30:49', '2017-09-08 07:30:49'),
(27, 10, 'Quotation', 'images (4).jpg', '/files/updir/', 0, '2017-09-08 07:30:49', '2017-09-08 07:30:49'),
(28, 10, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:30:49', '2017-09-08 07:30:49'),
(29, 10, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:30:49', '2017-09-08 07:30:49'),
(30, 10, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:30:49', '2017-09-08 07:30:49'),
(31, 10, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:30:49', '2017-09-08 07:30:49'),
(32, 10, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:30:49', '2017-09-08 07:30:49'),
(33, 11, 'Quotation', '201608291dfsf82724_0.jpg', '/files/updir/20170908073040_0.jpeg', 0, '2017-09-08 07:31:16', '2017-09-08 07:31:16'),
(34, 11, 'Quotation', 'images (4).jpg', '/files/updir/', 0, '2017-09-08 07:31:16', '2017-09-08 07:31:16'),
(35, 11, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:31:16', '2017-09-08 07:31:16'),
(36, 11, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:31:16', '2017-09-08 07:31:16'),
(37, 11, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:31:16', '2017-09-08 07:31:16'),
(38, 11, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:31:16', '2017-09-08 07:31:16'),
(39, 11, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:31:16', '2017-09-08 07:31:16'),
(40, 12, 'Quotation', '201608sdfasdf2918ddd2724_0.jpg', '/files/updir/20170908073533_0.jpeg', 0, '2017-09-08 07:35:35', '2017-09-08 07:35:35'),
(41, 13, 'Quotation', 'g0.jpg', '/files/updir/20170908073635_0.jpeg', 0, '2017-09-08 07:36:39', '2017-09-08 07:36:39'),
(42, 13, 'Quotation', '201608291dfsf82724_0.jpg', '/files/updir/', 0, '2017-09-08 07:36:39', '2017-09-08 07:36:39'),
(43, 13, 'Quotation', 'images (4).jpg', '/files/updir/', 0, '2017-09-08 07:36:39', '2017-09-08 07:36:39'),
(44, 13, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:36:39', '2017-09-08 07:36:39'),
(45, 13, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:36:39', '2017-09-08 07:36:39'),
(46, 13, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:36:39', '2017-09-08 07:36:39'),
(47, 13, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:36:39', '2017-09-08 07:36:39'),
(48, 13, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:36:39', '2017-09-08 07:36:39'),
(49, 14, 'Quotation', 'aaaa182724_0.jpg', '/files/updir/20170908073703_0.jpeg', 0, '2017-09-08 07:37:05', '2017-09-08 07:37:05'),
(50, 15, 'Quotation', 'ss82724_0.jpg', '/files/updir/20170908074214_0.jpeg', 0, '2017-09-08 07:43:04', '2017-09-08 07:43:04'),
(51, 15, 'Quotation', 'images (4).jpg', '/files/updir/', 0, '2017-09-08 07:43:04', '2017-09-08 07:43:04'),
(52, 15, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:43:04', '2017-09-08 07:43:04'),
(53, 15, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:43:04', '2017-09-08 07:43:04'),
(54, 15, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:43:04', '2017-09-08 07:43:04'),
(55, 15, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:43:04', '2017-09-08 07:43:04'),
(56, 15, 'Quotation', '', '/files/updir/', 0, '2017-09-08 07:43:04', '2017-09-08 07:43:04'),
(57, 16, 'Quotation', '201608291sdfasdf8ddd2724_0.jpg', '/files/updir/20170908091721_0.jpeg', 1, '2017-09-08 09:17:24', '2017-09-08 09:17:24'),
(58, 16, 'Quotation', '201608291sdfasdf82724_0.jpg', '/files/updir/20170908092055_0.jpeg', 1, '2017-09-08 09:20:58', '2017-09-08 09:20:58'),
(59, 16, 'Quotation', '2016082sdff9182724_0.jpg', '/files/updir/20170908092930_0.jpeg', 0, '2017-09-08 09:29:32', '2017-09-08 09:29:32');

-- --------------------------------------------------------

--
-- テーブルの構造 `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '名言',
  `author` varchar(255) DEFAULT NULL COMMENT '著者',
  `image_flag` varchar(255) DEFAULT NULL COMMENT '画像フラグ',
  `item_genre` varchar(255) DEFAULT NULL COMMENT 'ジャンル',
  `text` text,
  `delete_flag` varchar(10) DEFAULT '0' COMMENT '削除',
  `created` datetime DEFAULT NULL COMMENT '作成日',
  `modified` datetime DEFAULT NULL COMMENT '更新日'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `quotations`
--

INSERT INTO `quotations` (`id`, `title`, `author`, `image_flag`, `item_genre`, `text`, `delete_flag`, `created`, `modified`) VALUES
(1, '生きてるだけでもる儲け', '明石家さんま', '1', '1', '', '1', '2017-09-08 06:01:39', '2017-09-08 07:41:39'),
(2, '１１生きてるだけでもる儲け', '11明石家さんま', '1', NULL, '', '1', '2017-09-08 06:36:36', '2017-09-08 07:29:41'),
(3, '２２生きてるだけでもる儲け', '２２明石家さんま', '1', '3', '', '1', '2017-09-08 06:51:51', '2017-09-08 07:24:26'),
(9, '自分の思ったことをやりつづける事に後悔はありません。それでもし失敗しても後悔は絶対に無いはずですから', 'イチロー', '1', '11,22', '', '0', '2017-09-08 07:23:49', '2017-09-08 07:23:49'),
(10, 'あなたは負ける為に生まれたはずはない、諦める為に生まれたはずはない', 'ジェムス・スキナー', '1', '1,2', '', '1', '2017-09-08 07:30:49', '2017-09-08 07:30:49'),
(4, 'いかなる問題も、それを作りだした同じ意識によって解決することはできません', 'アルベルト･アインシュタイン', '1', '1', '', '0', '2017-09-08 07:19:09', '2017-09-08 07:19:09'),
(5, 'うまくいかない時ほどビッグマウスに', '本田圭佑', '1', NULL, '', '0', '2017-09-08 07:21:02', '2017-09-08 07:21:02'),
(6, 'うまくいかない時ほどビッグマウスに', '本田圭佑', '1', '2', '', '0', '2017-09-08 07:21:11', '2017-09-08 07:21:11'),
(7, '志とは自分の力を超えた存在に自分という有限な存在を同化させていく作業なのである', '松下幸之助', '1', '1', '', '0', '2017-09-08 07:21:37', '2017-09-08 07:21:37'),
(8, '得られたものの大きさはやってみた者にしか分からないでしょ', '桑田佳祐', '1', '1', '', '0', '2017-09-08 07:21:57', '2017-09-08 07:21:57'),
(11, 'あなたは負ける為に生まれたはずはない、諦める為に生まれたはずはない', 'ジェムス・スキナー', '1', '2,3,4', '', '1', '2017-09-08 07:31:16', '2017-09-08 07:36:00'),
(12, 'ぬるま湯から出る決意をした瞬間、人間の成長は始まる。自分よりちょっと上にある不快ゾーンに手を伸ばそう', '紫舟（書家）', '1', '2,12', '', '0', '2017-09-08 07:35:35', '2017-09-08 07:35:35'),
(13, 'リスクを取る勇気がなければ何も達成することがない人生になる', 'モハメド・アリ', '1', '1,2', '', '1', '2017-09-08 07:36:39', '2017-09-08 07:36:39'),
(14, 'リスクを取る勇気がなければ何も達成することがない人生になる', 'モハメド・アリ', '1', '2,12', '', '0', '2017-09-08 07:37:05', '2017-09-08 07:37:05'),
(15, '生きてるだけでもる儲け', '明石家さんま', '1', NULL, '', '1', '2017-09-08 07:43:04', '2017-09-08 07:43:11'),
(16, '感謝の気持ち。自分を信じる気持ち。最後まで諦めない気持ち。夢を掴むための三原則', '１１明石家さんま', '1', '1', '', '0', '2017-09-08 09:17:24', '2017-09-08 09:29:32');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `full_name_kana` varchar(11) DEFAULT NULL,
  `zip` varchar(11) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `mail_address` varchar(255) DEFAULT NULL,
  `tel` varchar(13) DEFAULT NULL,
  `delete_flag` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `full_name`, `full_name_kana`, `zip`, `address1`, `address2`, `role`, `mail_address`, `tel`, `delete_flag`, `created`, `modified`) VALUES
(1, '3nakamura01008@decoo.co.jp', '$2a$10$FJI0CBOsMBROMoFMzMtsiOAkRmwTV8oYyembYBmiDv/P7HU4D1eMe', '中村篤史', 'ナカムラアツシ', '550-0021', '大阪府大阪市西区川口', 'dsfsads', 'admin', '3nakamura01008@decoo.co.jp', '08040167186', 0, '2016-06-24 00:01:47', '2017-08-22 08:30:07'),
(8, 'atusi027', '$2a$10$O0wBnfmjnmwjnKg/hrBicu5d8tFXDcc.zf7yNI0df1WvWwjFWDQcG', NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 0, '2017-05-15 17:23:43', '2017-05-15 17:23:43'),
(9, 'linkinpark', '$2a$10$43ggHgZGfKSXw8PjsMAopOAi4HqgpWuSnM926UmkTQlKyCfxZxvTK', NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 0, '2017-08-10 10:50:54', '2017-08-10 10:50:54'),
(10, '2nakamura01008@decoo.co.jp', '$2a$10$kJUe.cNWSGuYH7zJ0K7J4OovqRvxEbUtF8GJUwvB8c0ifnUMygOv.', '中村篤史', 'ナカムラアツシ', '550', '川口', '西区', 'author', 'nakamura01008@decoo.co.jp', '2147483647', 0, '2017-08-10 11:00:21', '2017-08-17 05:47:09'),
(16, NULL, '$2a$10$kVd1e44Y5LvyerNpCnrYQ.L3dxDgC88MSn0jGxiBOU5mK.jottz4e', NULL, NULL, NULL, NULL, NULL, NULL, 'aaaaanakamura01008@decoo.co.jp', NULL, 0, '2017-08-17 05:52:41', '2017-08-17 05:52:41'),
(20, '1nakamura01008@decoo.co.jp', '$2a$10$ACEFw6Vle/eJWeAwSycA2.21u1tggsfCfFMCukBVzoBhJemfQ5o/6', '中村篤史', 'ナカムラアツシ', '550', '川口', '中野区', 'author', 'nakamura01008@decoo.co.jp', '2147483647', 0, '2017-08-17 06:07:14', '2017-08-17 11:55:52');

-- --------------------------------------------------------

--
-- テーブルの構造 `write_downs`
--

CREATE TABLE `write_downs` (
  `id` int(10) NOT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `write_name` varchar(255) NOT NULL COMMENT '名前',
  `write_text` text COMMENT '投稿内容',
  `up_flag` int(11) NOT NULL COMMENT '表示・非表示',
  `delete_flag` int(11) NOT NULL COMMENT '削除',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `write_downs`
--

INSERT INTO `write_downs` (`id`, `quotation_id`, `write_name`, `write_text`, `up_flag`, `delete_flag`, `created`, `modified`) VALUES
(41, 4, 'ｄｄｄ', 'ｖｖｖｖｖ', 0, 0, '2017-09-08 10:25:21', '2017-09-08 10:25:21'),
(42, 4, '匿名', 'ｓｓｘｘｚ', 0, 0, '2017-09-08 10:41:16', '2017-09-08 10:41:16'),
(43, 4, 'もおｍ', 'あｓｆｓっだｆだｓｆああｆｓだふぁｄｓｆだｓｓだｆだｓふぁｄｓｆ\n\nｓだｆだｓふぁｄｓ\n\nｄさふぁｓｄｆｄさｆｆｓだふぁｓｆ\nだｓふぁｄｓｆｓだｆｄｓｔｇｆｇｂｆｂ', 0, 0, '2017-09-08 10:46:04', '2017-09-08 10:46:04'),
(44, 16, 'dfdf', 'かかかかｆでｒｄｆｄふぇれ', 0, 0, '2017-09-08 10:54:55', '2017-09-08 10:54:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `write_downs`
--
ALTER TABLE `write_downs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `write_downs`
--
ALTER TABLE `write_downs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
