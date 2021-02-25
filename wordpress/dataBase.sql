-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 25 fév. 2021 à 10:07
-- Version du serveur :  8.0.23-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chatelier`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/projet-tuto-chapellerie/wordpress/wp', 'yes'),
(2, 'home', 'http://localhost/projet-tuto-chapellerie/wordpress/wp', 'yes'),
(3, 'blogname', 'tuto-chapellerie', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'root@root.fr', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:128:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"course/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"course/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"course/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"course/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"course/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"course/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"course/([^/]+)/embed/?$\";s:39:\"index.php?course=$matches[1]&embed=true\";s:27:\"course/([^/]+)/trackback/?$\";s:33:\"index.php?course=$matches[1]&tb=1\";s:35:\"course/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?course=$matches[1]&paged=$matches[2]\";s:42:\"course/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?course=$matches[1]&cpage=$matches[2]\";s:31:\"course/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?course=$matches[1]&page=$matches[2]\";s:23:\"course/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"course/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"course/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"course/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"course/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"course/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"style/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?style=$matches[1]&feed=$matches[2]\";s:41:\"style/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?style=$matches[1]&feed=$matches[2]\";s:22:\"style/([^/]+)/embed/?$\";s:38:\"index.php?style=$matches[1]&embed=true\";s:34:\"style/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?style=$matches[1]&paged=$matches[2]\";s:16:\"style/([^/]+)/?$\";s:27:\"index.php?style=$matches[1]\";s:49:\"material/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?material=$matches[1]&feed=$matches[2]\";s:44:\"material/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?material=$matches[1]&feed=$matches[2]\";s:25:\"material/([^/]+)/embed/?$\";s:41:\"index.php?material=$matches[1]&embed=true\";s:37:\"material/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?material=$matches[1]&paged=$matches[2]\";s:19:\"material/([^/]+)/?$\";s:30:\"index.php?material=$matches[1]\";s:46:\"level/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?level=$matches[1]&feed=$matches[2]\";s:41:\"level/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?level=$matches[1]&feed=$matches[2]\";s:22:\"level/([^/]+)/embed/?$\";s:38:\"index.php?level=$matches[1]&embed=true\";s:34:\"level/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?level=$matches[1]&paged=$matches[2]\";s:16:\"level/([^/]+)/?$\";s:27:\"index.php?level=$matches[1]\";s:45:\"tool/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?tool=$matches[1]&feed=$matches[2]\";s:40:\"tool/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?tool=$matches[1]&feed=$matches[2]\";s:21:\"tool/([^/]+)/embed/?$\";s:37:\"index.php?tool=$matches[1]&embed=true\";s:33:\"tool/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?tool=$matches[1]&paged=$matches[2]\";s:15:\"tool/([^/]+)/?$\";s:26:\"index.php?tool=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:23:\"chatelier/chatelier.php\";i:3;s:25:\"fakerpress/fakerpress.php\";i:4;s:21:\"jwt-auth/jwt-auth.php\";i:5;s:29:\"wp-rest-user/wp-rest-user.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:94:\"/var/www/html/projet-tuto-chapellerie/wordpress/content/plugins/advanced-custom-fields/acf.php\";i:1;s:86:\"/var/www/html/projet-tuto-chapellerie/wordpress/content/themes/chatelier/functions.php\";i:2;s:82:\"/var/www/html/projet-tuto-chapellerie/wordpress/content/themes/chatelier/style.css\";i:4;s:78:\"C:\\wamp64\\www\\tuto-chapellerie\\wordpress/content/themes/twentytwenty/style.css\";i:5;s:0:\"\";}', 'no'),
(40, 'template', 'chatelier', 'yes'),
(41, 'stylesheet', 'chatelier', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1628537952', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:77:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:13:\"manage_styles\";b:1;s:11:\"edit_styles\";b:1;s:13:\"delete_styles\";b:1;s:13:\"assign_styles\";b:1;s:16:\"manage_materials\";b:1;s:14:\"edit_materials\";b:1;s:16:\"delete_materials\";b:1;s:16:\"assign_materials\";b:1;s:13:\"manage_levels\";b:1;s:11:\"edit_levels\";b:1;s:13:\"delete_levels\";b:1;s:13:\"assign_levels\";b:1;s:12:\"manage_tools\";b:1;s:10:\"edit_tools\";b:1;s:12:\"delete_tools\";b:1;s:12:\"assign_tools\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:58:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:13:\"manage_styles\";b:1;s:11:\"edit_styles\";b:1;s:13:\"delete_styles\";b:1;s:13:\"assign_styles\";b:1;s:16:\"manage_materials\";b:1;s:14:\"edit_materials\";b:1;s:16:\"delete_materials\";b:1;s:16:\"assign_materials\";b:1;s:13:\"manage_levels\";b:1;s:11:\"edit_levels\";b:1;s:13:\"delete_levels\";b:1;s:13:\"assign_levels\";b:1;s:12:\"manage_tools\";b:1;s:10:\"edit_tools\";b:1;s:12:\"delete_tools\";b:1;s:12:\"assign_tools\";b:1;s:12:\"delete_users\";b:1;s:10:\"edit_users\";b:1;s:15:\"install_plugins\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:9:\"add_users\";b:1;s:12:\"create_users\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:7:\"student\";a:2:{s:4:\"name\";s:6:\"Elève\";s:12:\"capabilities\";a:5:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"upload_files\";b:0;s:16:\"edit_other_posts\";b:0;s:12:\"delete_posts\";b:0;}}s:12:\"editorCustom\";a:2:{s:4:\"name\";s:8:\"Editrice\";s:12:\"capabilities\";a:35:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:9:\"edit_post\";b:1;s:17:\"edit_others_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:12:\"upload_files\";b:1;s:16:\"edit_other_posts\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:13:\"manage_styles\";b:1;s:11:\"edit_styles\";b:1;s:13:\"delete_styles\";b:1;s:13:\"assign_styles\";b:1;s:16:\"manage_materials\";b:1;s:14:\"edit_materials\";b:1;s:16:\"delete_materials\";b:1;s:16:\"assign_materials\";b:1;s:13:\"manage_levels\";b:1;s:11:\"edit_levels\";b:1;s:13:\"delete_levels\";b:1;s:13:\"assign_levels\";b:1;s:12:\"manage_tools\";b:1;s:10:\"edit_tools\";b:1;s:12:\"delete_tools\";b:1;s:12:\"assign_tools\";b:1;s:12:\"delete_users\";b:1;s:10:\"edit_users\";b:1;s:15:\"install_plugins\";b:0;s:16:\"activate_plugins\";b:0;s:12:\"edit_plugins\";b:0;s:14:\"delete_plugins\";b:0;s:9:\"add_users\";b:0;s:12:\"create_users\";b:0;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(212, 'level_children', 'a:0:{}', 'yes'),
(209, 'material_children', 'a:0:{}', 'yes'),
(587, 'style_children', 'a:0:{}', 'yes'),
(226, 'current_theme', 'Chatelier', 'yes'),
(227, 'theme_mods_chatelier', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(228, 'theme_switched', '', 'yes'),
(107, 'cron', 'a:5:{i:1614249552;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1614281952;a:5:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1614283165;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1614283167;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(591, '_site_transient_timeout_theme_roots', '1614242503', 'no'),
(592, '_site_transient_theme_roots', 'a:1:{s:9:\"chatelier\";s:7:\"/themes\";}', 'no'),
(125, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1613065741;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(213, 'acf_version', '5.9.5', 'yes'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(132, 'can_compress_scripts', '1', 'no'),
(234, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"7\",\"critical\":\"2\"}', 'yes'),
(148, 'WPLANG', 'fr_FR', 'yes'),
(479, '_site_transient_timeout_browser_1a2dc04bb795f060fbb9a0d4921dd3e5', '1614362150', 'no'),
(480, '_site_transient_browser_1a2dc04bb795f060fbb9a0d4921dd3e5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"88.0.4324.182\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(450, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:21:\"wp-rest-user/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.2.4\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1613678883;s:11:\"plugin_path\";s:29:\"wp-rest-user/wp-rest-user.php\";}}s:7:\"abspath\";s:51:\"/var/www/html/projet-tuto-chapellerie/wordpress/wp/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:29:\"wp-rest-user/wp-rest-user.php\";s:8:\"sdk_path\";s:21:\"wp-rest-user/freemius\";s:7:\"version\";s:5:\"2.2.4\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1613678883;}}', 'yes'),
(451, 'fs_debug_mode', '', 'yes'),
(452, 'fs_accounts', 'a:5:{s:21:\"id_slug_type_path_map\";a:1:{i:3362;a:3:{s:4:\"slug\";s:12:\"wp-rest-user\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:29:\"wp-rest-user/wp-rest-user.php\";}}s:11:\"plugin_data\";a:1:{s:12:\"wp-rest-user\";a:15:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:29:\"wp-rest-user/wp-rest-user.php\";}s:17:\"install_timestamp\";i:1613678883;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.2.4\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"1.4.3\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:13:\"52.200.116.71\";s:9:\"server_ip\";s:12:\"88.120.18.16\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1613678883;s:7:\"version\";s:5:\"1.4.3\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1613678888;s:7:\"version\";s:5:\"1.4.3\";}}}s:13:\"file_slug_map\";a:1:{s:29:\"wp-rest-user/wp-rest-user.php\";s:12:\"wp-rest-user\";}s:7:\"plugins\";a:1:{s:12:\"wp-rest-user\";O:9:\"FS_Plugin\":20:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:12:\"WP REST User\";s:4:\"slug\";s:12:\"wp-rest-user\";s:12:\"premium_slug\";s:20:\"wp-rest-user-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:4:\"file\";s:29:\"wp-rest-user/wp-rest-user.php\";s:7:\"version\";s:5:\"1.4.3\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_ad92ea533f1c9236024e43c9bfeb7\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"3362\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"cd3406c060393495a19ca120b7235057\";}', 'yes'),
(453, 'fs_api_cache', 'a:0:{}', 'yes'),
(454, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(159, 'recently_activated', 'a:0:{}', 'yes'),
(469, '_site_transient_timeout_browser_3adb51f39d7d7a57ba2686ecdbf3f1c6', '1614332708', 'no'),
(470, '_site_transient_browser_3adb51f39d7d7a57ba2686ecdbf3f1c6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"88.0.4324.182\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(596, '_site_transient_timeout_browser_0dfb3ef9c1b48f7db77c2e3064864c91', '1614845600', 'no'),
(597, '_site_transient_browser_0dfb3ef9c1b48f7db77c2e3064864c91', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"88.0.4324.190\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(531, '_site_transient_timeout_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9', '1614585561', 'no'),
(532, '_site_transient_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(533, '_site_transient_timeout_browser_09414b1150381e1b83389196c30eaf0f', '1614587916', 'no'),
(534, '_site_transient_browser_09414b1150381e1b83389196c30eaf0f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"88.0.4324.150\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(593, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.6.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.2\";s:7:\"version\";s:5:\"5.6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6.2-partial-1.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.2\";s:7:\"version\";s:5:\"5.6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.6.1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.6.2\";s:7:\"version\";s:5:\"5.6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.6.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1614240703;s:15:\"version_checked\";s:5:\"5.6.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.6.1\";s:7:\"updated\";s:19:\"2021-02-21 19:41:06\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.1/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(162, 'new_admin_email', 'root@root.fr', 'yes'),
(215, 'tool_children', 'a:0:{}', 'yes'),
(594, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1614240703;s:7:\"checked\";a:1:{s:9:\"chatelier\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(595, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1614240704;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.5\";s:23:\"chatelier/chatelier.php\";s:3:\"1.0\";s:25:\"fakerpress/fakerpress.php\";s:5:\"0.5.1\";s:21:\"jwt-auth/jwt-auth.php\";s:5:\"1.4.2\";s:31:\"query-monitor/query-monitor.php\";s:5:\"3.6.7\";s:29:\"wp-rest-user/wp-rest-user.php\";s:5:\"1.4.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.9.5\";s:7:\"updated\";s:19:\"2021-01-18 23:35:03\";s:7:\"package\";s:89:\"https://downloads.wordpress.org/translation/plugin/advanced-custom-fields/5.9.5/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:10:\"fakerpress\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"0.5.1\";s:7:\"updated\";s:19:\"2017-07-05 20:19:02\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/plugin/fakerpress/0.5.1/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"fakerpress/fakerpress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/fakerpress\";s:4:\"slug\";s:10:\"fakerpress\";s:6:\"plugin\";s:25:\"fakerpress/fakerpress.php\";s:11:\"new_version\";s:5:\"0.5.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/fakerpress/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/fakerpress.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:63:\"https://ps.w.org/fakerpress/assets/icon-256x256.png?rev=1846090\";s:2:\"1x\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";s:3:\"svg\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/fakerpress/assets/banner-1544x500.png?rev=1152002\";s:2:\"1x\";s:65:\"https://ps.w.org/fakerpress/assets/banner-772x250.png?rev=1152002\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"jwt-auth/jwt-auth.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/jwt-auth\";s:4:\"slug\";s:8:\"jwt-auth\";s:6:\"plugin\";s:21:\"jwt-auth/jwt-auth.php\";s:11:\"new_version\";s:5:\"1.4.2\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/jwt-auth/\";s:7:\"package\";s:51:\"https://downloads.wordpress.org/plugin/jwt-auth.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/jwt-auth/assets/icon-256x256.png?rev=2298869\";s:2:\"1x\";s:61:\"https://ps.w.org/jwt-auth/assets/icon-256x256.png?rev=2298869\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/jwt-auth/assets/banner-1544x500.png?rev=2298891\";s:2:\"1x\";s:63:\"https://ps.w.org/jwt-auth/assets/banner-772x250.png?rev=2298883\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:5:\"3.6.7\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/query-monitor.3.6.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/query-monitor/assets/icon-256x256.png?rev=2301273\";s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=2457098\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=2457098\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-rest-user/wp-rest-user.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-rest-user\";s:4:\"slug\";s:12:\"wp-rest-user\";s:6:\"plugin\";s:29:\"wp-rest-user/wp-rest-user.php\";s:11:\"new_version\";s:5:\"1.4.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-rest-user/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wp-rest-user.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-rest-user/assets/icon-256x256.png?rev=1866223\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-rest-user/assets/icon-128x128.png?rev=1866223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(137, 65, '_URL_video', 'field_602bd6730d2e4'),
(136, 65, 'URL_video', 'https://www.youtube.com/watch?v=677DLm1SiEU'),
(135, 65, '_edit_last', '1'),
(134, 65, '_edit_lock', '1614173287:1'),
(133, 63, '_URL_video', 'field_602bd6730d2e4'),
(129, 62, '_URL_video', 'field_602bd6730d2e4'),
(130, 63, '_edit_lock', '1614173246:1'),
(131, 63, '_edit_last', '1'),
(132, 63, 'URL_video', 'https://www.youtube.com/watch?v=1DrL-2P-Q4A'),
(127, 62, '_edit_last', '1'),
(128, 62, 'URL_video', 'https://www.youtube.com/watch?v=BuT56IQw324'),
(126, 62, '_edit_lock', '1614172927:1'),
(125, 61, '_URL_video', 'field_602bd6730d2e4'),
(124, 61, 'URL_video', 'https://www.youtube.com/watch?v=s_ZFwlyJc1k'),
(123, 61, '_edit_last', '1'),
(122, 61, '_edit_lock', '1614172762:1'),
(121, 33, '_URL_video', 'field_602bd6730d2e4'),
(119, 33, '_edit_last', '1'),
(120, 33, 'URL_video', 'https://www.youtube.com/watch?v=P3nN4xza3Zs'),
(45, 33, '_edit_lock', '1614247398:1'),
(62, 41, '_edit_lock', '1613485819:1'),
(63, 41, '_edit_last', '1'),
(64, 43, '_edit_lock', '1614161198:1'),
(65, 43, '_edit_last', '1'),
(66, 43, 'URL_video', 'https://www.youtube.com/watch?v=4wcNnhfaZRY'),
(67, 43, '_URL_video', 'field_602bd6730d2e4'),
(68, 45, '_edit_lock', '1614014044:1'),
(69, 46, '_wp_attached_file', '2021/02/chapeau-melon-feutre-laine-e1613643502463.jpg'),
(70, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:53:\"2021/02/chapeau-melon-feutre-laine-e1613643502463.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"chapeau-melon-feutre-laine-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"chapeau-melon-feutre-laine-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"chapeau-melon-feutre-laine-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"chapeau-melon-feutre-laine-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 48, '_wp_attached_file', '2021/02/5bcfa5a8379bb82f17bdb11a-large-e1613643614950.jpg'),
(73, 45, '_thumbnail_id', '46'),
(76, 47, '_edit_lock', '1614016055:1'),
(78, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:57:\"2021/02/5bcfa5a8379bb82f17bdb11a-large-e1613643614950.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"5bcfa5a8379bb82f17bdb11a-large-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"5bcfa5a8379bb82f17bdb11a-large-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(82, 49, '_edit_lock', '1614011647:1'),
(81, 47, '_thumbnail_id', '48'),
(83, 50, '_wp_attached_file', '2021/02/IMG_0066-e1613643539492.jpg'),
(84, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:684;s:6:\"height\";i:684;s:4:\"file\";s:35:\"2021/02/IMG_0066-e1613643539492.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"IMG_0066-e1613642961327-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"IMG_0066-e1613642961327-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 49, '_thumbnail_id', '50'),
(88, 50, '_wp_attachment_backup_sizes', 'a:4:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:684;s:6:\"height\";i:912;s:4:\"file\";s:12:\"IMG_0066.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:20:\"IMG_0066-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:20:\"IMG_0066-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"full-1613643539492\";a:3:{s:5:\"width\";i:684;s:6:\"height\";i:684;s:4:\"file\";s:27:\"IMG_0066-e1613642961327.jpg\";}}'),
(91, 46, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:30:\"chapeau-melon-feutre-laine.jpg\";}}'),
(92, 48, '_wp_attachment_backup_sizes', 'a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:34:\"5bcfa5a8379bb82f17bdb11a-large.jpg\";}s:18:\"full-1613643599400\";a:3:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:49:\"5bcfa5a8379bb82f17bdb11a-large-e1613643555599.jpg\";}s:18:\"full-1613643614950\";a:3:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:49:\"5bcfa5a8379bb82f17bdb11a-large-e1613643599400.jpg\";}}'),
(97, 53, '_edit_lock', '1614011590:1'),
(108, 56, '_edit_lock', '1613671899:1'),
(102, 53, '_thumbnail_id', '46'),
(110, 58, '_wp_attached_file', '2021/02/fordfedorabrun1.jpg'),
(109, 57, '_edit_lock', '1614012319:1'),
(111, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:27:\"2021/02/fordfedorabrun1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"fordfedorabrun1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"fordfedorabrun1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"fordfedorabrun1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 57, '_thumbnail_id', '58');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(47, 1, '2021-02-17 22:31:50', '2021-02-17 22:31:50', '<!-- wp:paragraph -->\n<p>Jelly-o gummi bears wafer. Oat cake cupcake bonbon toffee. Jelly tiramisu gummi bears jelly beans dragée dragée cupcake fruitcake. Jelly beans pastry toffee halvah caramels. Jujubes chocolate cake croissant powder marshmallow lemon drops jujubes gingerbread gingerbread. Gummi bears macaroon ice cream jujubes gingerbread sesame snaps sweet tootsie roll. Toffee candy donut chupa chups sugar plum liquorice muffin tiramisu. Jujubes icing croissant sweet gummi bears jelly beans gummies liquorice. Sweet roll fruitcake candy gummies marshmallow. Sweet roll topping pastry oat cake chocolate cake. Oat cake jelly beans marshmallow jelly-o. Bear claw chocolate carrot cake chocolate cake marzipan pastry chocolate danish gummies. Sweet roll topping marshmallow.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wafer icing cotton candy oat cake. Toffee muffin jelly jelly beans toffee. Tart topping tiramisu tiramisu jelly. Danish chocolate chupa chups ice cream tootsie roll topping chocolate. Sesame snaps jelly topping tiramisu gummi bears. Cheesecake marzipan bonbon lemon drops. Wafer macaroon donut macaroon pudding pudding cupcake. Pie candy icing pastry fruitcake biscuit jelly beans chupa chups jelly. Powder cookie liquorice danish chocolate. Soufflé lemon drops jelly beans tart wafer. Bear claw tiramisu muffin jelly-o donut cake. Cupcake macaroon pudding halvah pudding tootsie roll cupcake. Cake cake jelly tart biscuit biscuit wafer icing. Macaroon cupcake cake cupcake tart brownie.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cupcake brownie halvah gingerbread gingerbread brownie danish muffin. Caramels gummi bears pie. Sugar plum sweet roll chocolate gingerbread jelly halvah muffin. Marzipan macaroon bonbon gummies cake gummies lemon drops. Soufflé bonbon cake. Sweet roll marzipan cake tootsie roll sweet. Sweet tart marzipan candy carrot cake topping. Pudding pudding gummies bonbon icing chupa chups. Icing jelly-o dragée. Cupcake soufflé cheesecake jelly beans. Sesame snaps gummi bears bonbon pie tiramisu. Cupcake carrot cake danish. Biscuit gummi bears croissant jujubes.</p>\n<!-- /wp:paragraph -->', 'Chapeau Vintage', 'Jelly-o gummi bears wafer. Oat cake cupcake bonbon toffee. Jelly tiramisu gummi bears jelly beans dragée dragée cupcake fruitcake. Jelly beans pastry', 'publish', 'open', 'open', '', 'chapeau-vintage', '', '', '2021-02-22 16:36:50', '2021-02-22 16:36:50', '', 0, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/?p=47', 0, 'post', '', 0),
(48, 1, '2021-02-17 22:31:43', '2021-02-17 22:31:43', '', '5bcfa5a8379bb82f17bdb11a-large', '', 'inherit', 'open', 'closed', '', '5bcfa5a8379bb82f17bdb11a-large', '', '', '2021-02-17 22:31:43', '2021-02-17 22:31:43', '', 47, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/content/uploads/2021/02/5bcfa5a8379bb82f17bdb11a-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(2, 1, '2021-02-10 19:39:12', '2021-02-10 19:39:12', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/tuto-chapellerie/wordpress/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-02-10 19:39:12', '2021-02-10 19:39:12', '', 0, 'http://localhost/tuto-chapellerie/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-02-10 19:39:12', '2021-02-10 19:39:12', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/tuto-chapellerie/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-02-10 19:39:12', '2021-02-10 19:39:12', '', 0, 'http://localhost/tuto-chapellerie/wordpress/?page_id=3', 0, 'page', '', 0),
(61, 1, '2021-02-19 18:41:46', '2021-02-19 18:41:46', '<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression</p>\n<!-- /wp:paragraph -->', 'Changer le ruban d’un chapeau', '', 'publish', 'open', 'closed', '', 'changer-le-ruban-dun-chapeau', '', '', '2021-02-24 13:17:22', '2021-02-24 13:17:22', '', 0, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/?post_type=course&#038;p=61', 0, 'course', '', 0),
(62, 1, '2021-02-19 18:42:39', '2021-02-19 18:42:39', '<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression</p>\n<!-- /wp:paragraph -->', 'Comment bien stocker son chapeaux', '', 'publish', 'open', 'closed', '', 'comment-bien-stocker-son-chapeaux', '', '', '2021-02-24 13:22:07', '2021-02-24 13:22:07', '', 0, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/?post_type=course&#038;p=62', 0, 'course', '', 0),
(63, 1, '2021-02-19 18:45:12', '2021-02-19 18:45:12', '<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression</p>\n<!-- /wp:paragraph -->', 'LA CASQUETTE', '', 'publish', 'open', 'closed', '', 'la-casquette', '', '', '2021-02-24 13:22:57', '2021-02-24 13:22:57', '', 0, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/?post_type=course&#038;p=63', 0, 'course', '', 0),
(65, 1, '2021-02-19 18:47:04', '2021-02-19 18:47:04', '<!-- wp:paragraph -->\n<p>Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition  en page <strong>avant impression</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Comment faire un chapeau Saint Patrick', '', 'publish', 'open', 'closed', '', 'comment-faire-un-chapeau-saint-patrick', '', '', '2021-02-24 13:17:09', '2021-02-24 13:17:09', '', 0, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/?post_type=course&#038;p=65', 0, 'course', '', 0),
(33, 1, '2021-02-14 20:47:03', '2021-02-14 20:47:03', '<!-- wp:paragraph -->\n<p>Un cours pour fabriquer un super Bob</p>\n<!-- /wp:paragraph -->', 'Fabriquer son bob', '', 'publish', 'open', 'closed', '', 'un-cours-en-video', '', '', '2021-02-25 09:03:37', '2021-02-25 09:03:37', '', 0, 'http://localhost/projet-tuto-chapellerie/wordpress/?post_type=course&#038;p=33', 0, 'course', '', 0),
(41, 1, '2021-02-16 14:30:07', '2021-02-16 14:30:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"course\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Media', 'media', 'publish', 'closed', 'closed', '', 'group_602bd667ee14f', '', '', '2021-02-16 14:30:07', '2021-02-16 14:30:07', '', 0, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2021-02-16 14:30:07', '2021-02-16 14:30:07', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'URL video', 'URL_video', 'publish', 'closed', 'closed', '', 'field_602bd6730d2e4', '', '', '2021-02-16 14:30:07', '2021-02-16 14:30:07', '', 41, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/?post_type=acf-field&p=42', 0, 'acf-field', '', 0),
(43, 1, '2021-02-16 14:32:34', '2021-02-16 14:32:34', '<!-- wp:paragraph -->\n<p>Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression</p>\n<!-- /wp:paragraph -->', 'Cours sur la casquette', '', 'publish', 'open', 'closed', '', 'fabrication-dun-fedora', '', '', '2021-02-24 10:06:38', '2021-02-24 10:06:38', '', 0, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/?post_type=course&#038;p=43', 0, 'course', '', 0),
(68, 1, '2021-02-25 08:13:20', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-02-25 08:13:20', '0000-00-00 00:00:00', '', 0, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/?p=68', 0, 'post', '', 0),
(45, 1, '2021-02-17 22:26:09', '2021-02-17 22:26:09', '<!-- wp:paragraph -->\n<p>I love bonbon chocolate cake topping topping carrot cake gingerbread sweet roll. Caramels candy canes tootsie roll pastry gingerbread toffee I love cookie cake. I love sesame snaps sesame snaps. Carrot cake donut powder I love. Biscuit halvah lemon drops jelly-o icing biscuit fruitcake. Marzipan danish halvah. Cupcake icing lemon drops biscuit. Jelly I love cake fruitcake tart I love gummi bears pastry. Sugar plum I love brownie pudding. I love candy canes cheesecake dragée candy liquorice sesame snaps caramels. Chocolate cake dessert I love bonbon tart sugar plum pastry pie caramels. Cake gingerbread I love jelly-o macaroon carrot cake. Ice cream carrot cake sweet roll I love marzipan marzipan chupa chups chocolate bar oat cake. Cake gingerbread gummi bears gummi bears I love bonbon macaroon gummies.<br>Croissant gingerbread biscuit topping I love ice cream biscuit chocolate cake. Danish caramels liquorice pie jelly tootsie roll. Tootsie roll apple pie sweet cheesecake sugar plum jujubes chocolate bar lollipop. Croissant bonbon lollipop cake. Brownie tootsie roll gummi bears pastry donut. Macaroon cupcake carrot cake carrot cake cake. Chocolate cake pudding marshmallow carrot cake dessert soufflé sweet. Icing gummies gummies bear claw macaroon macaroon marzipan. Marshmallow lollipop donut I love. Cotton candy dragée cookie I love pie I love. Cotton candy caramels gummi bears cookie jelly-o soufflé oat cake. Muffin tootsie roll cake I love candy canes I love topping chocolate. Tootsie roll cupcake danish cotton candy croissant gingerbread I love jelly-o sugar plum.<br>I love marzipan tootsie roll jelly-o. Lollipop cheesecake gingerbread halvah dessert cotton candy donut. Marzipan powder cake. Wafer powder donut chocolate bar I love marzipan caramels powder powder. Cake gummi bears jujubes I love marzipan fruitcake bear claw donut. Dragée liquorice I love I love chocolate gummi bears. I love sesame snaps cheesecake icing. Pie ice cream gummi bears fruitcake. Sweet roll liquorice jelly gummies jelly cupcake candy lollipop. Cake tart lemon drops sugar plum pastry jelly-o chupa chups candy canes. Oat cake cheesecake sweet donut I love sugar plum caramels chocolate cake. Chocolate bar muffin candy tiramisu lemon drops cupcake pudding. Brownie oat cake halvah icing apple pie.<br>Biscuit sesame snaps pudding gummies tiramisu cookie cake dessert cake. Toffee cake halvah oat cake gummi bears macaroon powder. Marshmallow carrot cake marzipan macaroon cookie jelly-o chocolate. Brownie caramels fruitcake toffee wafer ice cream. Cupcake cake cookie. Muffin brownie jujubes jujubes. Halvah gummies cake tiramisu dragée cookie liquorice tootsie roll dessert. Jelly beans jelly-o wafer oat cake soufflé. Halvah icing donut apple pie biscuit muffin. I love chocolate tootsie roll marzipan soufflé toffee candy. Candy sweet jelly beans apple pie topping topping jujubes. Dessert icing bonbon halvah lollipop apple pie carrot cake. Jujubes soufflé lollipop dessert marzipan marshmallow I love. Liquorice gummi bears gingerbread chocolate muffin wafer brownie.<br>Muffin cheesecake macaroon powder ice cream I love. I love candy canes halvah. Tiramisu tootsie roll sweet pudding gummies macaroon. Brownie cake dragée I love cake marzipan marzipan dragée. Dragée tiramisu halvah liquorice cheesecake I love marshmallow. I love jelly beans chocolate pastry toffee I love I love. Toffee chupa chups I love lollipop fruitcake oat cake I love. Macaroon lollipop chocolate jelly halvah. Apple pie wafer wafer cupcake ice cream tootsie roll. Dessert sweet donut gummi bears bonbon gummi bears. Pastry pastry I love candy lemon drops cupcake. Ice cream gingerbread pastry candy icing. Cheesecake cake muffin wafer I love. Chocolate bar cake macaroon chocolate cake chocolate cake.</p>\n<!-- /wp:paragraph -->', 'Le nouveau chapeau melon', 'Chapeau melon et bottes de cuir est le titre français de deux séries télévisées : la série britannique The Avengers et sa suite, la série franco-canado-britannique The New Avengers. Ces deux séries, mélangeant espionnage, science-fiction et action, mettent en scène le personnage de John Steed, un agent secret britannique.', 'publish', 'open', 'open', '', 'le-nouveau-chapeau-de-paille', '', '', '2021-02-22 16:48:06', '2021-02-22 16:48:06', '', 0, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/?p=45', 0, 'post', '', 0),
(46, 1, '2021-02-17 22:25:54', '2021-02-17 22:25:54', '', 'chapeau-melon-feutre-laine', '', 'inherit', 'open', 'closed', '', 'chapeau-melon-feutre-laine', '', '', '2021-02-17 22:25:54', '2021-02-17 22:25:54', '', 45, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/content/uploads/2021/02/chapeau-melon-feutre-laine.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2021-02-18 09:01:34', '2021-02-18 09:01:34', '<!-- wp:paragraph -->\n<p>Cookie sweet roll jelly tiramisu bonbon. Fruitcake marzipan fruitcake icing. Muffin pastry candy canes croissant. Bear claw dessert chupa chups dessert croissant bonbon wafer chocolate cake apple pie. Chocolate bar cookie sesame snaps fruitcake candy wafer. Candy pudding jelly beans candy biscuit halvah dessert jelly beans liquorice. Dessert cupcake cheesecake chupa chups biscuit. Chocolate cake dragée jelly beans marshmallow carrot cake muffin gingerbread sweet chocolate bar. Cake powder bonbon muffin icing cake toffee candy canes cheesecake. Jujubes toffee toffee sweet roll topping. Fruitcake pudding cupcake pudding. Wafer tootsie roll muffin dessert bear claw sugar plum cupcake pudding pastry.<br>Chocolate jelly beans tootsie roll. Bonbon carrot cake oat cake lemon drops jelly. Chocolate cake wafer dessert croissant jujubes sweet sugar plum croissant dessert. Cookie icing tiramisu muffin. Brownie gingerbread dessert lollipop wafer apple pie. Chupa chups sweet roll halvah muffin. Gingerbread gingerbread topping chocolate bar. Chocolate bar jelly beans fruitcake candy canes brownie jujubes cake. Muffin chupa chups powder. Macaroon carrot cake icing jujubes. Chupa chups marzipan caramels macaroon. Gummi bears liquorice carrot cake sweet roll danish gummies. Cupcake donut cake carrot cake dragée cotton candy croissant bonbon macaroon.<br>Marzipan carrot cake gummies pie tart cake. Bear claw dessert jelly-o sweet roll brownie. Candy canes candy canes danish pastry. Sugar plum macaroon tiramisu pastry jujubes macaroon caramels soufflé. Chupa chups jujubes oat cake. Cheesecake cheesecake croissant chocolate caramels tootsie roll. Macaroon croissant carrot cake jujubes macaroon ice cream jelly tart sweet roll. Bonbon marzipan danish jujubes jujubes cheesecake icing apple pie. Biscuit cookie apple pie. Toffee bonbon cheesecake muffin sweet. Topping tart tart cheesecake sugar plum fruitcake pastry. Icing pastry chocolate bar danish sweet roll danish sesame snaps cookie.<br>Jujubes marshmallow marzipan dragée. Candy bear claw carrot cake jujubes. Danish sesame snaps candy canes. Bear claw bonbon jelly-o cookie candy oat cake. Dragée jujubes candy canes macaroon chupa chups chocolate cheesecake. Soufflé cookie gingerbread chocolate bar muffin powder powder dessert. Halvah icing danish bonbon sweet. Wafer candy canes soufflé apple pie biscuit marzipan chocolate cake. Sweet roll oat cake sugar plum. Chocolate bar liquorice marshmallow. Tiramisu cake marshmallow liquorice sugar plum. Wafer sugar plum danish marzipan tart marzipan macaroon. Tart muffin apple pie muffin bonbon ice cream danish pastry. Croissant lemon drops chocolate bar.<br>Chocolate cake liquorice bonbon. Sugar plum pie tiramisu carrot cake chocolate chocolate gummi bears jelly beans soufflé. Lemon drops cupcake cupcake danish biscuit dragée jujubes sesame snaps. Bear claw sugar plum sweet roll halvah. Pie tootsie roll croissant dragée cake jelly beans jelly. Pie sweet roll cake. Wafer icing soufflé topping danish halvah halvah danish. Bonbon bonbon powder caramels carrot cake jujubes chupa chups macaroon donut. Candy gingerbread tart marshmallow sugar plum sesame snaps gummi bears oat cake toffee. Chupa chups macaroon croissant brownie. Carrot cake jelly beans marshmallow pudding candy canes cheesecake macaroon marshmallow. Jelly cookie sweet roll gummies powder cake apple pie. Candy tiramisu gummi bears jelly liquorice cotton candy.</p>\n<!-- /wp:paragraph -->', 'Botte de cuir', '', 'publish', 'open', 'open', '', 'botte-de-cuir', '', '', '2021-02-22 16:36:30', '2021-02-22 16:36:30', '', 0, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/?p=49', 0, 'post', '', 0),
(50, 1, '2021-02-18 09:01:18', '2021-02-18 09:01:18', '', 'IMG_0066', '', 'inherit', 'open', 'closed', '', 'img_0066', '', '', '2021-02-18 09:01:18', '2021-02-18 09:01:18', '', 49, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/content/uploads/2021/02/IMG_0066.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2021-02-18 10:44:07', '2021-02-18 10:44:07', '<!-- wp:paragraph -->\n<p><strong>Griffondor ou slytherin</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Brownie muffin candy canes marshmallow liquorice jujubes. Cake fruitcake cookie sesame snaps donut lemon drops sesame snaps gingerbread. Pastry sesame snaps danish pastry cheesecake. Lollipop marzipan fruitcake donut pudding. Chocolate bar tootsie roll chocolate cake cake chupa chups candy canes sesame snaps. Halvah marzipan cake tiramisu dessert donut cake pie donut. Cheesecake cake sweet roll croissant. Caramels oat cake gummi bears dessert lemon drops pudding dessert jelly beans sugar plum. Sweet roll danish cake marzipan macaroon jelly-o tart pudding. Cake cotton candy sweet roll dragée sweet roll dessert.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Gingerbread candy canes bear claw gummies. Topping sweet fruitcake. Dessert apple pie carrot cake candy halvah caramels sweet roll macaroon. Brownie pastry chocolate cake pudding soufflé cake bear claw liquorice muffin. Bonbon fruitcake halvah bear claw powder. Tart toffee wafer gummi bears pudding lemon drops cake. Cookie powder caramels danish dragée tootsie roll lemon drops pastry. Chocolate oat cake fruitcake. Toffee candy cupcake tootsie roll.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wafer candy danish sweet roll powder danish dessert tootsie roll. Candy canes marshmallow icing tootsie roll sweet roll lemon drops powder oat cake powder. Danish candy chocolate sweet cake pie lollipop halvah croissant. Biscuit jujubes carrot cake croissant ice cream. Carrot cake fruitcake dragée jelly-o chocolate cake cotton candy pie. Jelly beans topping lollipop caramels toffee sweet dessert sweet gingerbread. Pastry dessert topping icing croissant icing donut. Ice cream jelly-o dessert pudding.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Halvah bear claw danish bonbon chocolate cake brownie dessert. Carrot cake jelly toffee macaroon powder biscuit marshmallow. Croissant caramels tart topping marzipan pie. Chocolate carrot cake pastry. Jelly tart chupa chups fruitcake. Sweet cookie tart cheesecake jelly soufflé sesame snaps lemon drops tootsie roll. Soufflé dragée sweet chupa chups.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Soufflé brownie jelly beans. Croissant donut candy powder powder gummies dessert jujubes dragée. Muffin cookie chocolate bar gingerbread marzipan sweet dessert gummies. Biscuit macaroon pudding sweet roll dessert caramels topping jelly beans. Liquorice chocolate cake halvah. Sweet bonbon caramels apple pie soufflé. Cheesecake cheesecake sweet roll pastry gingerbread macaroon liquorice jelly. Apple pie powder sweet roll jelly-o pie chocolate cake jelly-o oat cake.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Choixpeau', '', 'publish', 'open', 'open', '', 'choixpeau', '', '', '2021-02-22 16:35:32', '2021-02-22 16:35:32', '', 0, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/?p=53', 0, 'post', '', 0),
(58, 1, '2021-02-18 18:16:56', '2021-02-18 18:16:56', '', 'fordfedorabrun1', '', 'inherit', 'open', 'closed', '', 'fordfedorabrun1', '', '', '2021-02-18 18:16:56', '2021-02-18 18:16:56', '', 57, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/content/uploads/2021/02/fordfedorabrun1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2021-02-18 18:13:52', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-02-18 18:13:52', '0000-00-00 00:00:00', '', 0, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/?p=56', 0, 'post', '', 0),
(57, 1, '2021-02-18 18:17:14', '2021-02-18 18:17:14', '<!-- wp:paragraph -->\n<p>Sugar plum cupcake marshmallow cupcake muffin cookie ice cream sweet. Liquorice bonbon cake pastry macaroon oat cake cheesecake. Cake dessert soufflé chocolate bar. Toffee danish croissant chocolate bar pudding marzipan cotton candy. Caramels gummies gummies liquorice pudding wafer. Caramels pudding cotton candy gingerbread danish. Jujubes pastry sweet jelly beans lemon drops oat cake. Sugar plum biscuit pudding halvah gingerbread sesame snaps halvah. Apple pie bear claw tart gummies donut donut liquorice lemon drops. Jelly-o macaroon wafer cheesecake tootsie roll candy canes donut chocolate cake cake. Halvah dragée powder oat cake. Danish fruitcake macaroon soufflé danish gingerbread. Sugar plum muffin icing. Powder cheesecake marshmallow tootsie roll gummi bears donut caramels bear claw sesame snaps.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Icing cotton candy fruitcake toffee oat cake. Cake apple pie</p>\n<!-- /wp:paragraph -->', 'Chapeaux Western', '', 'publish', 'open', 'open', '', 'chapeaux-western', '', '', '2021-02-22 13:52:01', '2021-02-22 13:52:01', '', 0, 'http://52.200.116.71/projet-tuto-chapellerie/wordpress/?p=57', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Fedora', 'fedora', 0),
(3, 'Bibi et Serre-tête', 'bibi-serre-tete', 0),
(4, 'Turban', 'turban', 0),
(5, 'Capeline', 'capeline', 0),
(6, 'Paille', 'paille', 0),
(7, 'Feutre', 'feutre', 0),
(8, 'Tissus', 'tissus', 0),
(9, 'Plumes', 'plumes', 0),
(10, 'Fleurs', 'fleurs', 0),
(11, 'Débutant', 'debutant', 0),
(12, 'Avancé', 'avance', 0),
(13, 'Expert', 'expert', 0),
(14, 'Sans Matériel', 'sans-materiel', 0),
(15, 'Avec bois', 'avec-bois', 0),
(16, 'hivers', 'hivers', 0),
(17, 'homme', 'homme', 0),
(18, 'harry potter', 'harry-potter', 0),
(19, 'retro', 'retro', 0),
(20, 'classique', 'classique', 0),
(21, 'rond', 'rond', 0),
(22, 'Nouveauté', 'nouveaute', 0),
(23, 'Ruban', 'ruban', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(47, 1, 0),
(33, 5, 0),
(33, 7, 0),
(33, 12, 0),
(33, 14, 0),
(45, 21, 0),
(47, 20, 0),
(47, 19, 0),
(53, 18, 0),
(57, 17, 0),
(57, 16, 0),
(43, 5, 0),
(43, 2, 0),
(43, 10, 0),
(43, 9, 0),
(43, 12, 0),
(43, 14, 0),
(45, 1, 0),
(45, 3, 0),
(45, 10, 0),
(45, 6, 0),
(45, 13, 0),
(45, 15, 0),
(47, 3, 0),
(47, 9, 0),
(47, 13, 0),
(47, 15, 0),
(49, 1, 0),
(49, 4, 0),
(49, 7, 0),
(49, 13, 0),
(49, 15, 0),
(53, 1, 0),
(57, 1, 0),
(57, 3, 0),
(57, 7, 0),
(57, 12, 0),
(57, 15, 0),
(65, 7, 0),
(61, 7, 0),
(61, 12, 0),
(61, 14, 0),
(45, 22, 0),
(63, 10, 0),
(65, 10, 0),
(63, 4, 0),
(65, 12, 0),
(65, 14, 0),
(65, 2, 0),
(63, 12, 0),
(63, 15, 0),
(61, 23, 0),
(65, 8, 0),
(61, 8, 0),
(62, 2, 0),
(62, 11, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'style', '', 0, 3),
(3, 3, 'style', '', 0, 3),
(4, 4, 'style', '', 0, 2),
(5, 5, 'style', '', 0, 2),
(6, 6, 'material', '', 0, 1),
(7, 7, 'material', '', 0, 5),
(8, 8, 'material', '', 0, 2),
(9, 9, 'material', '', 0, 2),
(10, 10, 'material', '', 0, 4),
(11, 11, 'level', '', 0, 1),
(12, 12, 'level', '', 0, 6),
(13, 13, 'level', '', 0, 3),
(14, 14, 'tool', '', 0, 4),
(15, 15, 'tool', '', 0, 5),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 1),
(18, 18, 'post_tag', '', 0, 1),
(19, 19, 'post_tag', '', 0, 1),
(20, 20, 'post_tag', '', 0, 1),
(21, 21, 'post_tag', '', 0, 1),
(22, 22, 'post_tag', '', 0, 1),
(23, 23, 'style', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"815d939410044c8fc3f536df5b8b086a6abff838abe6902eddffd9eb7fdd8c74\";a:4:{s:10:\"expiration\";i:1614690645;s:2:\"ip\";s:13:\"81.220.245.23\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36\";s:5:\"login\";i:1613481045;}s:64:\"99dab9aec2b1f053ad458c6fc641d2847e80514b73f05bb035753fb178df8b16\";a:4:{s:10:\"expiration\";i:1614768413;s:2:\"ip\";s:13:\"81.220.245.23\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36\";s:5:\"login\";i:1613558813;}s:64:\"8e9f3f69a806053af6d47198dde5e092543759ca6fadd9760def69ec0e152bb3\";a:4:{s:10:\"expiration\";i:1614332366;s:2:\"ip\";s:12:\"88.120.18.16\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36\";s:5:\"login\";i:1614159566;}s:64:\"7dbcf5ce9a2b8f67d91ea7cb42b705589486d7cae685b751dce5a59884c69474\";a:4:{s:10:\"expiration\";i:1614413600;s:2:\"ip\";s:12:\"88.120.18.16\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\";s:5:\"login\";i:1614240800;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '68'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"88.120.18.0\";}'),
(328, 24, 'wp_capabilities', 'a:1:{s:7:\"student\";b:1;}'),
(326, 24, 'show_admin_bar_front', 'true'),
(327, 24, 'locale', ''),
(325, 24, 'use_ssl', '0'),
(324, 24, 'admin_color', 'fresh'),
(323, 24, 'comment_shortcuts', 'false'),
(322, 24, 'syntax_highlighting', 'true'),
(321, 24, 'rich_editing', 'true'),
(320, 24, 'description', ''),
(317, 24, 'nickname', 'aa'),
(318, 24, 'first_name', ''),
(319, 24, 'last_name', ''),
(312, 23, 'use_ssl', '0'),
(313, 23, 'show_admin_bar_front', 'true'),
(314, 23, 'locale', ''),
(315, 23, 'wp_capabilities', 'a:1:{s:7:\"student\";b:1;}'),
(316, 23, 'wp_user_level', '0'),
(311, 23, 'admin_color', 'fresh'),
(303, 22, 'wp_user_level', '0'),
(304, 23, 'nickname', 'tata'),
(305, 23, 'first_name', ''),
(306, 23, 'last_name', ''),
(307, 23, 'description', ''),
(308, 23, 'rich_editing', 'true'),
(309, 23, 'syntax_highlighting', 'true'),
(310, 23, 'comment_shortcuts', 'false'),
(39, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(40, 1, 'metaboxhidden_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(289, 21, 'wp_capabilities', 'a:1:{s:7:\"student\";b:1;}'),
(288, 21, 'locale', ''),
(41, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(42, 1, 'wp_user-settings-time', '1613728705'),
(331, 1, 'metaboxhidden_course', 'a:0:{}'),
(278, 21, 'nickname', 'tutu'),
(279, 21, 'first_name', ''),
(280, 21, 'last_name', ''),
(281, 21, 'description', ''),
(282, 21, 'rich_editing', 'true'),
(283, 21, 'syntax_highlighting', 'true'),
(284, 21, 'comment_shortcuts', 'false'),
(265, 20, 'nickname', 'toto'),
(330, 1, 'closedpostboxes_course', 'a:0:{}'),
(329, 24, 'wp_user_level', '0'),
(302, 22, 'wp_capabilities', 'a:1:{s:7:\"student\";b:1;}'),
(299, 22, 'use_ssl', '0'),
(300, 22, 'show_admin_bar_front', 'true'),
(301, 22, 'locale', ''),
(298, 22, 'admin_color', 'fresh'),
(297, 22, 'comment_shortcuts', 'false'),
(296, 22, 'syntax_highlighting', 'true'),
(295, 22, 'rich_editing', 'true'),
(294, 22, 'description', ''),
(293, 22, 'last_name', ''),
(291, 22, 'nickname', 'aaaa'),
(292, 22, 'first_name', ''),
(290, 21, 'wp_user_level', '0'),
(277, 20, 'wp_user_level', '0'),
(276, 20, 'wp_capabilities', 'a:1:{s:7:\"student\";b:1;}'),
(275, 20, 'locale', ''),
(274, 20, 'show_admin_bar_front', 'true'),
(273, 20, 'use_ssl', '0'),
(272, 20, 'admin_color', 'fresh'),
(266, 20, 'first_name', ''),
(267, 20, 'last_name', ''),
(268, 20, 'description', ''),
(269, 20, 'rich_editing', 'true'),
(270, 20, 'syntax_highlighting', 'true'),
(271, 20, 'comment_shortcuts', 'false'),
(287, 21, 'show_admin_bar_front', 'true'),
(286, 21, 'use_ssl', '0'),
(285, 21, 'admin_color', 'fresh');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$B9xWCVZKkizyazM6BI.ahM988/rz1v.', 'root', 'root@root.fr', 'http://localhost/tuto-chapellerie/wordpress/wp', '2021-02-10 19:39:12', '', 0, 'root'),
(22, 'aaaa', '$P$BrexaTsN3ZgY8iDb5glr0b8IX.gceS.', 'aaaa', 'aaaa@aaaa.fr', '', '2021-02-22 09:04:26', '', 0, 'aaaa'),
(23, 'tata', '$P$BAyZA/fuXUxavmkEigSm73Gt.c7Na61', 'tata', 'tata@gmail.com', '', '2021-02-22 13:11:00', '', 0, 'tata'),
(24, 'aa', '$P$B/ZcOB9840/cVFtp.qaLx8aL8OrnSn1', 'aa', 'aa@aa.fr', '', '2021-02-22 16:16:42', '', 0, 'aa'),
(21, 'tutu', '$P$B7wBQh6VhdNSHNcb6/EGiE9aCeVlhv0', 'tutu', 'tutu@gmail.com', '', '2021-02-22 08:49:45', '', 0, 'tutu'),
(20, 'toto', '$P$B0F9x4ZexQ1Az2baom4jGrCZBLv0Hu1', 'toto', 'toto@gmail.com', '', '2021-02-22 08:46:41', '', 0, 'toto');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=600;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
