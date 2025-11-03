-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2025 at 10:49 PM
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
-- Database: `wptest01`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Een WordPress reageerder', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-10-06 08:36:46', '2025-10-06 08:36:46', 'Hoi, dit is een reactie.\nOm te beginnen met modereren, bewerken en verwijderen van reacties, ga je naar het Reacties scherm op het dashboard.\nAvatars van auteurs komen van <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_gallery_galleries`
--

CREATE TABLE `wp_gallery_galleries` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_gallery_galleries`
--

INSERT INTO `wp_gallery_galleries` (`id`, `title`, `created`, `modified`) VALUES
(1, 'variant_naam', '2025-10-31 17:31:48', '2025-10-31 18:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `wp_gallery_galleriesslides`
--

CREATE TABLE `wp_gallery_galleriesslides` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL DEFAULT 0,
  `slide_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gallery_slides`
--

CREATE TABLE `wp_gallery_slides` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `showinfo` varchar(50) NOT NULL DEFAULT 'both',
  `iopacity` int(11) NOT NULL DEFAULT 70,
  `image` text NOT NULL,
  `type` enum('media','file','url') NOT NULL DEFAULT 'file',
  `image_url` text NOT NULL,
  `attachment_id` int(11) NOT NULL DEFAULT 0,
  `uselink` enum('Y','N') NOT NULL DEFAULT 'N',
  `linktarget` enum('self','blank') NOT NULL DEFAULT 'self',
  `link` varchar(200) NOT NULL DEFAULT '',
  `order` int(11) NOT NULL DEFAULT 0,
  `expiry` date NOT NULL DEFAULT '0000-00-00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:18:{i:1762206821;a:1:{s:11:\"wp_cache_gc\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1762207606;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1762209406;a:2:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1762245406;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1762245460;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1762245466;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1762248188;a:1:{s:15:\"ao_cachechecker\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1762249006;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1762291724;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1762348627;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1762533725;a:1:{s:24:\"slideshow_ratereviewhook\";a:1:{s:32:\"d63aca0b7e6237c7964320bd7fc95644\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:7;}}}}i:1762764332;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1763138525;a:1:{s:24:\"slideshow_ratereviewhook\";a:1:{s:32:\"78525e41f5c2848ff7e1a2337fb96361\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:14;}}}}i:1764520925;a:1:{s:24:\"slideshow_ratereviewhook\";a:1:{s:32:\"b81956e4bb4ba571b1678549dbe90e2a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:30;}}}}i:1767112925;a:1:{s:24:\"slideshow_ratereviewhook\";a:1:{s:32:\"1f2017e1ed51c7e11ca55ed0583ac79c\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:60;}}}}i:1777480925;a:1:{s:24:\"slideshow_ratereviewhook\";a:1:{s:32:\"b058f96ad617d118dc656b8b440ccdb0\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:180;}}}}i:1793032925;a:1:{s:24:\"slideshow_ratereviewhook\";a:1:{s:32:\"32a99f765d2b1a63b1790ee770c3fb21\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:360;}}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/wptest01', 'on'),
(3, 'home', 'http://localhost/wptest01', 'on'),
(4, 'blogname', 'Minecraft', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'philenevanmil@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '0', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j F Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'j F Y H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:129:{s:20:\"minecraft-updates/?$\";s:36:\"index.php?post_type=minecraft-update\";s:37:\"minecraft-updates/page/([0-9]{1,})/?$\";s:54:\"index.php?post_type=minecraft-update&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:16:\"minecraft-mob/?$\";s:33:\"index.php?post_type=minecraft-mob\";s:33:\"minecraft-mob/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=minecraft-mob&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:44:\"minecraft-update/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"minecraft-update/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"minecraft-update/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"minecraft-update/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"minecraft-update/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"minecraft-update/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"minecraft-update/([^/]+)/embed/?$\";s:49:\"index.php?minecraft-update=$matches[1]&embed=true\";s:37:\"minecraft-update/([^/]+)/trackback/?$\";s:43:\"index.php?minecraft-update=$matches[1]&tb=1\";s:45:\"minecraft-update/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?minecraft-update=$matches[1]&paged=$matches[2]\";s:52:\"minecraft-update/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?minecraft-update=$matches[1]&cpage=$matches[2]\";s:41:\"minecraft-update/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?minecraft-update=$matches[1]&page=$matches[2]\";s:33:\"minecraft-update/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"minecraft-update/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"minecraft-update/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"minecraft-update/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"minecraft-update/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"minecraft-update/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"minecraft-mob/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"minecraft-mob/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"minecraft-mob/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"minecraft-mob/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"minecraft-mob/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"minecraft-mob/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"minecraft-mob/([^/]+)/embed/?$\";s:46:\"index.php?minecraft-mob=$matches[1]&embed=true\";s:34:\"minecraft-mob/([^/]+)/trackback/?$\";s:40:\"index.php?minecraft-mob=$matches[1]&tb=1\";s:42:\"minecraft-mob/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?minecraft-mob=$matches[1]&paged=$matches[2]\";s:49:\"minecraft-mob/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?minecraft-mob=$matches[1]&cpage=$matches[2]\";s:38:\"minecraft-mob/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?minecraft-mob=$matches[1]&page=$matches[2]\";s:30:\"minecraft-mob/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"minecraft-mob/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"minecraft-mob/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"minecraft-mob/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"minecraft-mob/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"minecraft-mob/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:5:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:27:\"autoptimize/autoptimize.php\";i:2;s:33:\"customize-site/customize-site.php\";i:3;s:45:\"secure-custom-fields/secure-custom-fields.php\";i:4;s:27:\"wp-super-cache/wp-cache.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', 'a:2:{i:0;s:62:\"C:\\xampp\\htdocs\\wptest01/wp-content/themes/theme-noa/style.css\";i:2;s:0:\"\";}', 'off'),
(41, 'template', 'theme-noa', 'on'),
(42, 'stylesheet', 'theme-noa', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60421', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:3:{s:45:\"secure-custom-fields/secure-custom-fields.php\";s:20:\"scf_plugin_uninstall\";s:27:\"autoptimize/autoptimize.php\";s:29:\"autoptimizeMain::on_uninstall\";s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1775291806', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '60421', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:68:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:17:\"slideshow_welcome\";b:1;s:22:\"slideshow_submitserial\";b:1;s:15:\"slideshow_about\";b:1;s:16:\"slideshow_slides\";b:1;s:19:\"slideshow_galleries\";b:1;s:18:\"slideshow_settings\";b:1;s:26:\"slideshow_settings_updates\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '1', 'off'),
(104, 'WPLANG', 'nl_NL', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recente berichten</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:228:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recente reacties</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:147:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archieven</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:152:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorieën</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.8.3\";s:5:\"files\";a:536:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:26:\"post-content/style-rtl.css\";i:309;s:30:\"post-content/style-rtl.min.css\";i:310;s:22:\"post-content/style.css\";i:311;s:26:\"post-content/style.min.css\";i:312;s:23:\"post-date/style-rtl.css\";i:313;s:27:\"post-date/style-rtl.min.css\";i:314;s:19:\"post-date/style.css\";i:315;s:23:\"post-date/style.min.css\";i:316;s:27:\"post-excerpt/editor-rtl.css\";i:317;s:31:\"post-excerpt/editor-rtl.min.css\";i:318;s:23:\"post-excerpt/editor.css\";i:319;s:27:\"post-excerpt/editor.min.css\";i:320;s:26:\"post-excerpt/style-rtl.css\";i:321;s:30:\"post-excerpt/style-rtl.min.css\";i:322;s:22:\"post-excerpt/style.css\";i:323;s:26:\"post-excerpt/style.min.css\";i:324;s:34:\"post-featured-image/editor-rtl.css\";i:325;s:38:\"post-featured-image/editor-rtl.min.css\";i:326;s:30:\"post-featured-image/editor.css\";i:327;s:34:\"post-featured-image/editor.min.css\";i:328;s:33:\"post-featured-image/style-rtl.css\";i:329;s:37:\"post-featured-image/style-rtl.min.css\";i:330;s:29:\"post-featured-image/style.css\";i:331;s:33:\"post-featured-image/style.min.css\";i:332;s:34:\"post-navigation-link/style-rtl.css\";i:333;s:38:\"post-navigation-link/style-rtl.min.css\";i:334;s:30:\"post-navigation-link/style.css\";i:335;s:34:\"post-navigation-link/style.min.css\";i:336;s:27:\"post-template/style-rtl.css\";i:337;s:31:\"post-template/style-rtl.min.css\";i:338;s:23:\"post-template/style.css\";i:339;s:27:\"post-template/style.min.css\";i:340;s:24:\"post-terms/style-rtl.css\";i:341;s:28:\"post-terms/style-rtl.min.css\";i:342;s:20:\"post-terms/style.css\";i:343;s:24:\"post-terms/style.min.css\";i:344;s:24:\"post-title/style-rtl.css\";i:345;s:28:\"post-title/style-rtl.min.css\";i:346;s:20:\"post-title/style.css\";i:347;s:24:\"post-title/style.min.css\";i:348;s:26:\"preformatted/style-rtl.css\";i:349;s:30:\"preformatted/style-rtl.min.css\";i:350;s:22:\"preformatted/style.css\";i:351;s:26:\"preformatted/style.min.css\";i:352;s:24:\"pullquote/editor-rtl.css\";i:353;s:28:\"pullquote/editor-rtl.min.css\";i:354;s:20:\"pullquote/editor.css\";i:355;s:24:\"pullquote/editor.min.css\";i:356;s:23:\"pullquote/style-rtl.css\";i:357;s:27:\"pullquote/style-rtl.min.css\";i:358;s:19:\"pullquote/style.css\";i:359;s:23:\"pullquote/style.min.css\";i:360;s:23:\"pullquote/theme-rtl.css\";i:361;s:27:\"pullquote/theme-rtl.min.css\";i:362;s:19:\"pullquote/theme.css\";i:363;s:23:\"pullquote/theme.min.css\";i:364;s:39:\"query-pagination-numbers/editor-rtl.css\";i:365;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:366;s:35:\"query-pagination-numbers/editor.css\";i:367;s:39:\"query-pagination-numbers/editor.min.css\";i:368;s:31:\"query-pagination/editor-rtl.css\";i:369;s:35:\"query-pagination/editor-rtl.min.css\";i:370;s:27:\"query-pagination/editor.css\";i:371;s:31:\"query-pagination/editor.min.css\";i:372;s:30:\"query-pagination/style-rtl.css\";i:373;s:34:\"query-pagination/style-rtl.min.css\";i:374;s:26:\"query-pagination/style.css\";i:375;s:30:\"query-pagination/style.min.css\";i:376;s:25:\"query-title/style-rtl.css\";i:377;s:29:\"query-title/style-rtl.min.css\";i:378;s:21:\"query-title/style.css\";i:379;s:25:\"query-title/style.min.css\";i:380;s:25:\"query-total/style-rtl.css\";i:381;s:29:\"query-total/style-rtl.min.css\";i:382;s:21:\"query-total/style.css\";i:383;s:25:\"query-total/style.min.css\";i:384;s:20:\"query/editor-rtl.css\";i:385;s:24:\"query/editor-rtl.min.css\";i:386;s:16:\"query/editor.css\";i:387;s:20:\"query/editor.min.css\";i:388;s:19:\"quote/style-rtl.css\";i:389;s:23:\"quote/style-rtl.min.css\";i:390;s:15:\"quote/style.css\";i:391;s:19:\"quote/style.min.css\";i:392;s:19:\"quote/theme-rtl.css\";i:393;s:23:\"quote/theme-rtl.min.css\";i:394;s:15:\"quote/theme.css\";i:395;s:19:\"quote/theme.min.css\";i:396;s:23:\"read-more/style-rtl.css\";i:397;s:27:\"read-more/style-rtl.min.css\";i:398;s:19:\"read-more/style.css\";i:399;s:23:\"read-more/style.min.css\";i:400;s:18:\"rss/editor-rtl.css\";i:401;s:22:\"rss/editor-rtl.min.css\";i:402;s:14:\"rss/editor.css\";i:403;s:18:\"rss/editor.min.css\";i:404;s:17:\"rss/style-rtl.css\";i:405;s:21:\"rss/style-rtl.min.css\";i:406;s:13:\"rss/style.css\";i:407;s:17:\"rss/style.min.css\";i:408;s:21:\"search/editor-rtl.css\";i:409;s:25:\"search/editor-rtl.min.css\";i:410;s:17:\"search/editor.css\";i:411;s:21:\"search/editor.min.css\";i:412;s:20:\"search/style-rtl.css\";i:413;s:24:\"search/style-rtl.min.css\";i:414;s:16:\"search/style.css\";i:415;s:20:\"search/style.min.css\";i:416;s:20:\"search/theme-rtl.css\";i:417;s:24:\"search/theme-rtl.min.css\";i:418;s:16:\"search/theme.css\";i:419;s:20:\"search/theme.min.css\";i:420;s:24:\"separator/editor-rtl.css\";i:421;s:28:\"separator/editor-rtl.min.css\";i:422;s:20:\"separator/editor.css\";i:423;s:24:\"separator/editor.min.css\";i:424;s:23:\"separator/style-rtl.css\";i:425;s:27:\"separator/style-rtl.min.css\";i:426;s:19:\"separator/style.css\";i:427;s:23:\"separator/style.min.css\";i:428;s:23:\"separator/theme-rtl.css\";i:429;s:27:\"separator/theme-rtl.min.css\";i:430;s:19:\"separator/theme.css\";i:431;s:23:\"separator/theme.min.css\";i:432;s:24:\"shortcode/editor-rtl.css\";i:433;s:28:\"shortcode/editor-rtl.min.css\";i:434;s:20:\"shortcode/editor.css\";i:435;s:24:\"shortcode/editor.min.css\";i:436;s:24:\"site-logo/editor-rtl.css\";i:437;s:28:\"site-logo/editor-rtl.min.css\";i:438;s:20:\"site-logo/editor.css\";i:439;s:24:\"site-logo/editor.min.css\";i:440;s:23:\"site-logo/style-rtl.css\";i:441;s:27:\"site-logo/style-rtl.min.css\";i:442;s:19:\"site-logo/style.css\";i:443;s:23:\"site-logo/style.min.css\";i:444;s:27:\"site-tagline/editor-rtl.css\";i:445;s:31:\"site-tagline/editor-rtl.min.css\";i:446;s:23:\"site-tagline/editor.css\";i:447;s:27:\"site-tagline/editor.min.css\";i:448;s:26:\"site-tagline/style-rtl.css\";i:449;s:30:\"site-tagline/style-rtl.min.css\";i:450;s:22:\"site-tagline/style.css\";i:451;s:26:\"site-tagline/style.min.css\";i:452;s:25:\"site-title/editor-rtl.css\";i:453;s:29:\"site-title/editor-rtl.min.css\";i:454;s:21:\"site-title/editor.css\";i:455;s:25:\"site-title/editor.min.css\";i:456;s:24:\"site-title/style-rtl.css\";i:457;s:28:\"site-title/style-rtl.min.css\";i:458;s:20:\"site-title/style.css\";i:459;s:24:\"site-title/style.min.css\";i:460;s:26:\"social-link/editor-rtl.css\";i:461;s:30:\"social-link/editor-rtl.min.css\";i:462;s:22:\"social-link/editor.css\";i:463;s:26:\"social-link/editor.min.css\";i:464;s:27:\"social-links/editor-rtl.css\";i:465;s:31:\"social-links/editor-rtl.min.css\";i:466;s:23:\"social-links/editor.css\";i:467;s:27:\"social-links/editor.min.css\";i:468;s:26:\"social-links/style-rtl.css\";i:469;s:30:\"social-links/style-rtl.min.css\";i:470;s:22:\"social-links/style.css\";i:471;s:26:\"social-links/style.min.css\";i:472;s:21:\"spacer/editor-rtl.css\";i:473;s:25:\"spacer/editor-rtl.min.css\";i:474;s:17:\"spacer/editor.css\";i:475;s:21:\"spacer/editor.min.css\";i:476;s:20:\"spacer/style-rtl.css\";i:477;s:24:\"spacer/style-rtl.min.css\";i:478;s:16:\"spacer/style.css\";i:479;s:20:\"spacer/style.min.css\";i:480;s:20:\"table/editor-rtl.css\";i:481;s:24:\"table/editor-rtl.min.css\";i:482;s:16:\"table/editor.css\";i:483;s:20:\"table/editor.min.css\";i:484;s:19:\"table/style-rtl.css\";i:485;s:23:\"table/style-rtl.min.css\";i:486;s:15:\"table/style.css\";i:487;s:19:\"table/style.min.css\";i:488;s:19:\"table/theme-rtl.css\";i:489;s:23:\"table/theme-rtl.min.css\";i:490;s:15:\"table/theme.css\";i:491;s:19:\"table/theme.min.css\";i:492;s:24:\"tag-cloud/editor-rtl.css\";i:493;s:28:\"tag-cloud/editor-rtl.min.css\";i:494;s:20:\"tag-cloud/editor.css\";i:495;s:24:\"tag-cloud/editor.min.css\";i:496;s:23:\"tag-cloud/style-rtl.css\";i:497;s:27:\"tag-cloud/style-rtl.min.css\";i:498;s:19:\"tag-cloud/style.css\";i:499;s:23:\"tag-cloud/style.min.css\";i:500;s:28:\"template-part/editor-rtl.css\";i:501;s:32:\"template-part/editor-rtl.min.css\";i:502;s:24:\"template-part/editor.css\";i:503;s:28:\"template-part/editor.min.css\";i:504;s:27:\"template-part/theme-rtl.css\";i:505;s:31:\"template-part/theme-rtl.min.css\";i:506;s:23:\"template-part/theme.css\";i:507;s:27:\"template-part/theme.min.css\";i:508;s:30:\"term-description/style-rtl.css\";i:509;s:34:\"term-description/style-rtl.min.css\";i:510;s:26:\"term-description/style.css\";i:511;s:30:\"term-description/style.min.css\";i:512;s:27:\"text-columns/editor-rtl.css\";i:513;s:31:\"text-columns/editor-rtl.min.css\";i:514;s:23:\"text-columns/editor.css\";i:515;s:27:\"text-columns/editor.min.css\";i:516;s:26:\"text-columns/style-rtl.css\";i:517;s:30:\"text-columns/style-rtl.min.css\";i:518;s:22:\"text-columns/style.css\";i:519;s:26:\"text-columns/style.min.css\";i:520;s:19:\"verse/style-rtl.css\";i:521;s:23:\"verse/style-rtl.min.css\";i:522;s:15:\"verse/style.css\";i:523;s:19:\"verse/style.min.css\";i:524;s:20:\"video/editor-rtl.css\";i:525;s:24:\"video/editor-rtl.min.css\";i:526;s:16:\"video/editor.css\";i:527;s:20:\"video/editor.min.css\";i:528;s:19:\"video/style-rtl.css\";i:529;s:23:\"video/style-rtl.min.css\";i:530;s:15:\"video/style.css\";i:531;s:19:\"video/style.min.css\";i:532;s:19:\"video/theme-rtl.css\";i:533;s:23:\"video/theme-rtl.min.css\";i:534;s:15:\"video/theme.css\";i:535;s:19:\"video/theme.min.css\";}}', 'on'),
(126, 'recovery_keys', 'a:1:{s:22:\"E56rXoXOxIgzChBTK1qCKq\";a:2:{s:10:\"hashed_key\";s:49:\"$generic$gDow8HMbEbEwgrnJ4n_GD_SHe_FV_fYrt_egMukv\";s:10:\"created_at\";i:1762201291;}}', 'off'),
(127, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1759740402;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(128, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"276c1cff076fc4c4a67b3988dae2399a\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:0:\"\";s:12:\"core/columns\";s:0:\"\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(148, 'can_compress_scripts', '1', 'on'),
(163, 'finished_updating_comment_type', '1', 'auto'),
(175, 'current_theme', 'Theme Noa', 'auto'),
(176, 'theme_mods_kubio', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1760533725;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'off'),
(177, 'theme_switched', '', 'auto');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(183, '__kubio_instance_flags', 'a:1:{s:47:\"kubio_get_ai_onboarding_notice_dismissed__kubio\";b:1;}', 'off'),
(208, '_transient_health-check-site-status-result', '{\"good\":\"17\",\"recommended\":\"7\",\"critical\":\"1\"}', 'on'),
(265, 'theme_mods_theme-noa', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"hoofdmenu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(269, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(270, 'recently_activated', 'a:1:{s:39:\"slideshow-gallery/slideshow-gallery.php\";i:1761933743;}', 'off'),
(275, 'acf_first_activated_version', '6.5.7', 'on'),
(276, 'acf_site_health', '{\"version\":\"6.5.7\",\"wp_version\":\"6.8.3\",\"mysql_version\":\"10.4.32-MariaDB\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Theme Noa\",\"version\":\"1.0\",\"theme_uri\":\"http:\\/\\/voorbeeld.com\\/\",\"stylesheet\":false},\"active_plugins\":{\"secure-custom-fields\\/secure-custom-fields.php\":{\"name\":\"Secure Custom Fields\",\"version\":\"6.5.7\",\"plugin_uri\":\"https:\\/\\/developer.wordpress.org\\/secure-custom-fields\\/\"}},\"ui_field_groups\":\"2\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"image\":2,\"text\":2,\"date_picker\":2,\"repeater\":4},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"5\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"ui_options_pages_enabled\":true,\"ui_options_pages\":\"0\",\"json_options_pages\":\"0\",\"php_options_pages\":\"0\",\"rest_api_format\":\"light\",\"blocks_per_api_version\":[],\"blocks_per_acf_block_version\":[],\"blocks_using_post_meta\":\"0\",\"preload_blocks\":true,\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1760534227,\"event_first_created_field_group\":1760534289,\"event_first_created_post_type\":1760534318,\"last_updated\":1761743838}', 'off'),
(278, 'acf_version', '6.5.7', 'auto'),
(318, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(344, 'new_admin_email', 'philenevanmil@gmail.com', 'auto'),
(420, '_site_transient_timeout_browser_df46e1d3e7507fa3d6888a71a1894105', '1762162587', 'off'),
(421, '_site_transient_browser_df46e1d3e7507fa3d6888a71a1894105', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"141.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(562, 'customize_site_plugin_bericht', '', 'auto'),
(569, 'customize_site_plugin_footer', 'Noa van Mil', 'auto'),
(723, 'Galleryversion', '1.8.5', 'auto'),
(724, 'Gallerypermissions', 'a:1:{s:13:\"administrator\";a:7:{i:0;s:7:\"welcome\";i:1;s:12:\"submitserial\";i:2;s:5:\"about\";i:3;s:6:\"slides\";i:4;s:9:\"galleries\";i:5;s:8:\"settings\";i:6;s:16:\"settings_updates\";}}', 'auto'),
(725, 'Galleryresizeimagescrop', 'Y', 'auto'),
(726, 'Galleryimagespath', 'http://localhost/wptest01/wp-content/uploads/slideshow-gallery/', 'auto'),
(727, 'Gallerystyles', 'a:10:{s:6:\"layout\";s:10:\"responsive\";s:5:\"width\";s:3:\"450\";s:6:\"height\";s:3:\"250\";s:9:\"resheight\";s:2:\"50\";s:13:\"resheighttype\";s:1:\"%\";s:6:\"border\";s:17:\"1px solid #CCCCCC\";s:10:\"background\";s:7:\"#000000\";s:14:\"infobackground\";s:7:\"#000000\";s:9:\"infocolor\";s:7:\"#FFFFFF\";s:12:\"resizeimages\";s:1:\"Y\";}', 'auto'),
(728, 'Galleryeffect', 'fade', 'auto'),
(729, 'Galleryeasing', 'swing', 'auto'),
(730, 'Galleryslide_direction', 'lr', 'auto'),
(731, 'Galleryfadespeed', '20', 'auto'),
(732, 'Galleryshownav', 'Y', 'auto'),
(733, 'Gallerynavopacity', '25', 'auto'),
(734, 'Gallerynavhover', '75', 'auto'),
(735, 'Galleryinformation', 'Y', 'auto'),
(736, 'Galleryinfoposition', 'bottom', 'auto'),
(737, 'Galleryinfoheadingcontent', 'title', 'auto'),
(738, 'Galleryinfospeed', '10', 'auto'),
(739, 'Galleryinfohideonmobile', '1', 'auto'),
(740, 'Gallerythumbnails', 'N', 'auto'),
(741, 'Gallerythumbwidth', '100', 'auto'),
(742, 'Gallerythumbheight', '75', 'auto'),
(743, 'Gallerythumbposition', 'bottom', 'auto'),
(744, 'Gallerythumbopacity', '70', 'auto'),
(745, 'Gallerythumbscrollspeed', '5', 'auto'),
(746, 'Gallerythumbspacing', '5', 'auto'),
(747, 'Gallerythumbactive', '#FFFFFF', 'auto'),
(748, 'Gallerythumbhideonmobile', '1', 'auto'),
(749, 'Galleryautoslide', 'Y', 'auto'),
(750, 'Galleryautospeed', '10', 'auto'),
(751, 'Galleryalwaysauto', 'true', 'auto'),
(752, 'Galleryimagesthickbox', 'N', 'auto'),
(753, 'Galleryjsoutput', 'perslideshow', 'auto'),
(754, 'Galleryratereview_scheduled', '1', 'auto'),
(761, 'recovery_mode_email_last_sent', '1762201291', 'auto'),
(917, 'customize_site_plugin_hero_title', 'Minecraft info', 'auto'),
(918, 'customize_site_plugin_hero_description', 'adawdwaawdd', 'auto'),
(927, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1762215522', 'off'),
(928, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:7627;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4934;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2801;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2767;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2149;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:2122;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:2084;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1964;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1685;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1652;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1621;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1559;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1516;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1515;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1498;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1361;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1346;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1316;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1276;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1179;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1162;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:1070;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:1068;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:1067;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:1066;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:1051;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:1050;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:1013;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:1009;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:971;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:949;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:941;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:935;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:926;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:914;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:892;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:868;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:817;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:786;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:784;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:771;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:770;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:763;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:756;}s:2:\"ai\";a:3:{s:4:\"name\";s:2:\"AI\";s:4:\"slug\";s:2:\"ai\";s:5:\"count\";i:723;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:721;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:713;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:705;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:705;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:687;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:686;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:684;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:676;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:665;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:660;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:646;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:645;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:641;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:636;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:633;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:624;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:617;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:615;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:611;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:611;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:610;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:606;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:592;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:581;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:580;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:580;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:579;}s:8:\"payments\";a:3:{s:4:\"name\";s:8:\"payments\";s:4:\"slug\";s:8:\"payments\";s:5:\"count\";i:573;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:572;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:570;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:557;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:539;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:532;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:530;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:527;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:520;}s:8:\"checkout\";a:3:{s:4:\"name\";s:8:\"checkout\";s:4:\"slug\";s:8:\"checkout\";s:5:\"count\";i:518;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:511;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:508;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:505;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:482;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:478;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:476;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:472;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:471;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:465;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:459;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:458;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:449;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:442;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:430;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:427;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:423;}s:8:\"products\";a:3:{s:4:\"name\";s:8:\"products\";s:4:\"slug\";s:8:\"products\";s:5:\"count\";i:422;}s:13:\"gravity-forms\";a:3:{s:4:\"name\";s:13:\"gravity forms\";s:4:\"slug\";s:13:\"gravity-forms\";s:5:\"count\";i:420;}}', 'off'),
(930, '_site_transient_timeout_theme_roots', '1762206536', 'off'),
(931, '_site_transient_theme_roots', 'a:6:{s:5:\"kubio\";s:7:\"/themes\";s:9:\"theme-noa\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'off'),
(934, 'autoptimize_version', '3.1.13', 'auto'),
(935, 'autoptimize_ccss_version', 'AO_3.1.13', 'auto'),
(937, 'autoptimize_service_availablity', 'a:3:{s:12:\"extra_imgopt\";a:3:{s:6:\"status\";s:2:\"up\";s:5:\"hosts\";a:1:{i:1;s:28:\"https://sp-ao.shortpixel.ai/\";}s:16:\"launch-threshold\";s:4:\"4096\";}s:7:\"critcss\";a:2:{s:6:\"status\";s:2:\"up\";s:5:\"hosts\";a:1:{i:1;s:24:\"https://criticalcss.com/\";}}s:9:\"rapidload\";a:1:{s:6:\"status\";s:4:\"down\";}}', 'auto'),
(938, 'wp_super_cache_index_detected', '3', 'off'),
(939, 'autoptimize_imgopt_launched', 'on', 'auto'),
(943, 'wpsupercache_start', '1762205008', 'auto'),
(944, 'wpsupercache_count', '0', 'auto'),
(945, 'wpsupercache_gc_time', '1762205631', 'auto'),
(946, 'supercache_stats', 'a:3:{s:9:\"generated\";i:1762205073;s:10:\"supercache\";a:5:{s:7:\"expired\";i:0;s:6:\"cached\";i:0;s:5:\"fsize\";i:0;s:11:\"cached_list\";a:0:{}s:12:\"expired_list\";a:0:{}}s:7:\"wpcache\";a:5:{s:7:\"expired\";i:0;s:6:\"cached\";i:5;s:5:\"fsize\";i:12595;s:11:\"cached_list\";a:5:{s:50:\"localhost/wptest01/minecraft-mob/minecraft-axolotl\";a:2:{s:9:\"lower_age\";i:9;s:5:\"files\";i:1;}s:46:\"localhost/wptest01/minecraft-mob/minecraft-cow\";a:2:{s:9:\"lower_age\";i:8;s:5:\"files\";i:1;}s:32:\"localhost/wptest01/minecraft-mob\";a:2:{s:9:\"lower_age\";i:11;s:5:\"files\";i:1;}s:46:\"localhost/wptest01/minecraft-update/copper-age\";a:2:{s:9:\"lower_age\";i:13;s:5:\"files\";i:1;}s:18:\"localhost/wptest01\";a:2:{s:9:\"lower_age\";i:5;s:5:\"files\";i:1;}}s:12:\"expired_list\";a:0:{}}}', 'auto'),
(955, 'ai1wm_secret_key', 'rf9duGN0dAy8', 'auto'),
(961, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/nl_NL/wordpress-6.8.3.zip\";s:6:\"locale\";s:5:\"nl_NL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/nl_NL/wordpress-6.8.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.3\";s:7:\"version\";s:5:\"6.8.3\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1762205863;s:15:\"version_checked\";s:5:\"6.8.3\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.8.3\";s:7:\"updated\";s:19:\"2025-10-15 13:45:15\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.3/nl_NL.zip\";s:10:\"autoupdate\";b:1;}}}', 'off'),
(962, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1762205863;s:7:\"checked\";a:6:{s:5:\"kubio\";s:6:\"1.0.56\";s:9:\"theme-noa\";s:3:\"1.0\";s:16:\"twentytwentyfive\";s:3:\"1.3\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:17:\"twentytwentythree\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:5:{s:5:\"kubio\";a:6:{s:5:\"theme\";s:5:\"kubio\";s:11:\"new_version\";s:6:\"1.0.56\";s:3:\"url\";s:35:\"https://wordpress.org/themes/kubio/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/kubio.1.0.56.zip\";s:8:\"requires\";s:5:\"5.8.3\";s:12:\"requires_php\";s:3:\"7.1\";}s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.3.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.2.0.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off'),
(963, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1762205864;s:8:\"response\";a:0:{}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"7.100\";s:7:\"updated\";s:19:\"2025-08-26 07:09:22\";s:7:\"package\";s:90:\"https://downloads.wordpress.org/translation/plugin/all-in-one-wp-migration/7.100/nl_NL.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"autoptimize\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:6:\"3.1.13\";s:7:\"updated\";s:19:\"2025-08-31 11:07:56\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/autoptimize/3.1.13/nl_NL.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:20:\"secure-custom-fields\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.5.7\";s:7:\"updated\";s:19:\"2025-07-12 17:26:18\";s:7:\"package\";s:87:\"https://downloads.wordpress.org/translation/plugin/secure-custom-fields/6.5.7/nl_NL.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"wp-super-cache\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"3.0.2\";s:7:\"updated\";s:19:\"2025-10-04 11:17:33\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/wp-super-cache/3.0.2/nl_NL.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:5:\"7.100\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.100.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=3264554\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=3264554\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:27:\"autoptimize/autoptimize.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/autoptimize\";s:4:\"slug\";s:11:\"autoptimize\";s:6:\"plugin\";s:27:\"autoptimize/autoptimize.php\";s:11:\"new_version\";s:6:\"3.1.13\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/autoptimize/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/autoptimize.3.1.13.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/autoptimize/assets/icon-256X256.png?rev=2211608\";s:2:\"1x\";s:64:\"https://ps.w.org/autoptimize/assets/icon-128x128.png?rev=1864142\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/autoptimize/assets/banner-772x250.jpg?rev=1315920\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:45:\"secure-custom-fields/secure-custom-fields.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:34:\"w.org/plugins/secure-custom-fields\";s:4:\"slug\";s:20:\"secure-custom-fields\";s:6:\"plugin\";s:45:\"secure-custom-fields/secure-custom-fields.php\";s:11:\"new_version\";s:5:\"6.5.7\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/secure-custom-fields/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/secure-custom-fields.6.5.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/secure-custom-fields/assets/icon.svg?rev=3194494\";s:3:\"svg\";s:65:\"https://ps.w.org/secure-custom-fields/assets/icon.svg?rev=3194494\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/secure-custom-fields/assets/banner-1544x500.jpg?rev=3194494\";s:2:\"1x\";s:75:\"https://ps.w.org/secure-custom-fields/assets/banner-772x250.jpg?rev=3194494\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:39:\"slideshow-gallery/slideshow-gallery.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/slideshow-gallery\";s:4:\"slug\";s:17:\"slideshow-gallery\";s:6:\"plugin\";s:39:\"slideshow-gallery/slideshow-gallery.php\";s:11:\"new_version\";s:5:\"1.8.5\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/slideshow-gallery/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/slideshow-gallery.1.8.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/slideshow-gallery/assets/icon-256x256.png?rev=1187457\";s:2:\"1x\";s:70:\"https://ps.w.org/slideshow-gallery/assets/icon-128x128.png?rev=1187457\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/slideshow-gallery/assets/banner-1544x500.png?rev=1609789\";s:2:\"1x\";s:72:\"https://ps.w.org/slideshow-gallery/assets/banner-772x250.png?rev=1609789\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wp-super-cache\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.3.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.7\";}}s:7:\"checked\";a:8:{s:19:\"akismet/akismet.php\";s:3:\"5.5\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:5:\"7.100\";s:27:\"autoptimize/autoptimize.php\";s:6:\"3.1.13\";s:33:\"customize-site/customize-site.php\";s:3:\"1.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:45:\"secure-custom-fields/secure-custom-fields.php\";s:5:\"6.5.7\";s:39:\"slideshow-gallery/slideshow-gallery.php\";s:5:\"1.8.5\";s:27:\"wp-super-cache/wp-cache.php\";s:5:\"3.0.2\";}}', 'off'),
(964, '_site_transient_ai1wm_last_check_for_updates', '1762205864', 'off'),
(965, 'ai1wm_updater', 'a:0:{}', 'auto'),
(966, '_site_transient_timeout_wp_theme_files_patterns-93b59660cf409f85c9a4f2525eb55389', '1762207782', 'off'),
(967, '_site_transient_wp_theme_files_patterns-93b59660cf409f85c9a4f2525eb55389', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(968, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:344:\"<a href=\"http://localhost/wptest01/wp-content/ai1wm-backups/localhost-wptest01-20251103-214314-jf1zhuwanmse.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"localhost\" download=\"localhost-wptest01-20251103-214314-jf1zhuwanmse.wpress\">\n							<span>Download localhost</span>\n							<em>Size: 81 MB</em>\n							</a>\";}', 'auto'),
(972, '_transient_timeout_autoptimize_cache_warmer_protector', '1762206821', 'off'),
(973, '_transient_autoptimize_cache_warmer_protector', 'I shall not warm cache for another 10 minutes.', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(16, 15, '_edit_last', '1'),
(17, 15, '_edit_lock', '1762203100:1'),
(18, 17, '_edit_last', '1'),
(19, 17, '_edit_lock', '1762201634:1'),
(22, 25, '_edit_lock', '1761862146:1'),
(24, 25, '_edit_last', '1'),
(25, 25, 'versie_nummer', '1.21.9'),
(26, 25, '_versie_nummer', 'field_68ef9eededd65'),
(27, 25, 'toegevoegde_functies_0_functie_naam', 'Copper Golem'),
(28, 25, '_toegevoegde_functies_0_functie_naam', 'field_68efa099051dc'),
(29, 25, 'toegevoegde_functies_0_functie_uitleg_0_beschrijving', 'The Copper Golem is a new mob which can be spawned by placing a Jack o\'Lantern or Carved Pumpkin on top of a Copper block'),
(30, 25, '_toegevoegde_functies_0_functie_uitleg_0_beschrijving', 'field_68efa1d3c603f'),
(31, 25, 'toegevoegde_functies_0_functie_uitleg_1_beschrijving', 'Copper Golems oxidize over time and can be waxed like Copper blocks'),
(32, 25, '_toegevoegde_functies_0_functie_uitleg_1_beschrijving', 'field_68efa1d3c603f'),
(33, 25, 'toegevoegde_functies_0_functie_uitleg', '2'),
(34, 25, '_toegevoegde_functies_0_functie_uitleg', 'field_68efa160c603e'),
(35, 25, 'toegevoegde_functies', '1'),
(36, 25, '_toegevoegde_functies', 'field_68efa02a051db'),
(41, 25, 'toegevoegde_functies_0_functie_afbeelding', '27'),
(42, 25, '_toegevoegde_functies_0_functie_afbeelding', 'field_68efa489892ee'),
(43, 25, 'toegevoegde_functies_0_functie_afbeelding_beschrijving_afbeelding', '35'),
(44, 25, '_toegevoegde_functies_0_functie_afbeelding_beschrijving_afbeelding', 'field_68efa55c29e6b'),
(45, 25, 'toegevoegde_functies_0_functie_afbeelding_beschrijving_beschrijving', 'A pair of Copper Golems and a Copper Golem Statue hanging out in a Taiga Village.'),
(46, 25, '_toegevoegde_functies_0_functie_afbeelding_beschrijving_beschrijving', 'field_68efa57529e6c'),
(47, 25, 'toegevoegde_functies_0_functie_afbeelding_beschrijving', ''),
(48, 25, '_toegevoegde_functies_0_functie_afbeelding_beschrijving', 'field_68efa489892ee'),
(52, 34, '_wp_attached_file', '2025/10/1.21.9_1170x500.png'),
(53, 34, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1170;s:6:\"height\";i:500;s:4:\"file\";s:27:\"2025/10/1.21.9_1170x500.png\";s:8:\"filesize\";i:343460;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 35, '_wp_attached_file', '2025/10/1.21.9_golem_pumpkin.jpg'),
(55, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:32:\"2025/10/1.21.9_golem_pumpkin.jpg\";s:8:\"filesize\";i:252833;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 25, 'banner', '34'),
(58, 25, '_banner', 'field_68efa619981b4'),
(59, 25, 'gepubliceerde_datum', '20250930'),
(60, 25, '_gepubliceerde_datum', 'field_68efa66d7a51e'),
(61, 36, '_menu_item_type', 'custom'),
(62, 36, '_menu_item_menu_item_parent', '0'),
(63, 36, '_menu_item_object_id', '36'),
(64, 36, '_menu_item_object', 'custom'),
(65, 36, '_menu_item_target', ''),
(66, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 36, '_menu_item_xfn', ''),
(68, 36, '_menu_item_url', 'http://localhost/wptest01/'),
(69, 36, '_menu_item_orphaned', '1760537824'),
(70, 37, '_menu_item_type', 'post_type'),
(71, 37, '_menu_item_menu_item_parent', '0'),
(72, 37, '_menu_item_object_id', '2'),
(73, 37, '_menu_item_object', 'page'),
(74, 37, '_menu_item_target', ''),
(75, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 37, '_menu_item_xfn', ''),
(77, 37, '_menu_item_url', ''),
(78, 37, '_menu_item_orphaned', '1760537824'),
(79, 38, '_menu_item_type', 'custom'),
(80, 38, '_menu_item_menu_item_parent', '0'),
(81, 38, '_menu_item_object_id', '38'),
(82, 38, '_menu_item_object', 'custom'),
(83, 38, '_menu_item_target', ''),
(84, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 38, '_menu_item_xfn', ''),
(86, 38, '_menu_item_url', 'http://localhost/wptest01/'),
(88, 39, '_menu_item_type', 'post_type'),
(89, 39, '_menu_item_menu_item_parent', '0'),
(90, 39, '_menu_item_object_id', '2'),
(91, 39, '_menu_item_object', 'page'),
(92, 39, '_menu_item_target', ''),
(93, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 39, '_menu_item_xfn', ''),
(95, 39, '_menu_item_url', ''),
(96, 39, '_menu_item_orphaned', '1760602983'),
(97, 40, '_menu_item_type', 'post_type_archive'),
(98, 40, '_menu_item_menu_item_parent', '0'),
(99, 40, '_menu_item_object_id', '-8'),
(100, 40, '_menu_item_object', 'minecraft-update'),
(101, 40, '_menu_item_target', ''),
(102, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 40, '_menu_item_xfn', ''),
(104, 40, '_menu_item_url', ''),
(113, 1, '_edit_lock', '1761646209:1'),
(114, 1, '_wp_trash_meta_status', 'publish'),
(115, 1, '_wp_trash_meta_time', '1761646353'),
(116, 1, '_wp_desired_post_slug', 'hallo-wereld'),
(117, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(118, 44, '_edit_lock', '1761646552:1'),
(119, 45, '_edit_lock', '1761647832:1'),
(120, 2, '_edit_lock', '1761647923:1'),
(121, 3, '_edit_lock', '1761647926:1'),
(122, 46, '_edit_lock', '1761647938:1'),
(123, 47, '_edit_last', '1'),
(124, 47, '_edit_lock', '1762203146:1'),
(125, 50, '_edit_lock', '1761731034:1'),
(126, 51, '_edit_last', '1'),
(127, 51, '_edit_lock', '1762204471:1'),
(128, 59, '_edit_lock', '1761735402:1'),
(129, 60, '_edit_lock', '1761735709:1'),
(130, 65, '_edit_lock', '1761736838:1'),
(131, 69, '_edit_lock', '1761737340:1'),
(132, 72, '_edit_lock', '1761742506:1'),
(133, 77, '_edit_lock', '1761745573:1'),
(134, 82, '_edit_lock', '1761747131:1'),
(135, 83, '_edit_lock', '1761816793:1'),
(136, 86, '_edit_lock', '1761816993:1'),
(137, 87, '_edit_lock', '1761817009:1'),
(138, 88, '_edit_lock', '1761817126:1'),
(139, 89, '_edit_lock', '1761817224:1'),
(140, 90, '_edit_lock', '1761817495:1'),
(141, 91, '_edit_lock', '1761817751:1'),
(142, 92, '_edit_lock', '1761818876:1'),
(143, 98, '_edit_lock', '1761851666:1'),
(144, 100, '_edit_lock', '1761851864:1'),
(145, 101, '_wp_attached_file', '2025/10/150px-Cow_JE7_BE4.png'),
(146, 101, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:182;s:4:\"file\";s:29:\"2025/10/150px-Cow_JE7_BE4.png\";s:8:\"filesize\";i:22015;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 103, '_edit_lock', '1761857882:1'),
(148, 104, '_wp_attached_file', '2025/10/150px-Cold_Cow_JE1_BE1.png'),
(149, 104, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:165;s:4:\"file\";s:34:\"2025/10/150px-Cold_Cow_JE1_BE1.png\";s:8:\"filesize\";i:21695;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 105, '_wp_attached_file', '2025/10/150px-Warm_Cow_JE1_BE1.png'),
(151, 105, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:170;s:4:\"file\";s:34:\"2025/10/150px-Warm_Cow_JE1_BE1.png\";s:8:\"filesize\";i:16895;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 106, '_edit_lock', '1761852831:1'),
(153, 110, '_edit_lock', '1761853117:1'),
(154, 111, '_edit_lock', '1762200482:1'),
(159, 114, '_wp_attached_file', '2025/10/Bucket_JE2_BE2.png'),
(160, 114, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:26:\"2025/10/Bucket_JE2_BE2.png\";s:8:\"filesize\";i:276;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 115, '_wp_attached_file', '2025/10/Milk_Bucket_JE2_BE2.png'),
(162, 115, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:31:\"2025/10/Milk_Bucket_JE2_BE2.png\";s:8:\"filesize\";i:294;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(163, 116, '_edit_lock', '1761854957:1'),
(165, 111, '_edit_last', '1'),
(166, 111, 'mob_foto', '101'),
(167, 111, '_mob_foto', 'field_6901e8012ca69'),
(168, 111, 'mob_name', 'Cow'),
(169, 111, '_mob_name', 'field_6901e3be2ca67'),
(170, 111, 'gepubliceerde_datum', '20090901'),
(171, 111, '_gepubliceerde_datum', 'field_6901e74b2ca68'),
(172, 111, 'mob_varianten_0_variant_foto', '101'),
(173, 111, '_mob_varianten_0_variant_foto', 'field_6901f16d2ca6b'),
(174, 111, 'mob_varianten_0_variant_naam', 'Default cow'),
(175, 111, '_mob_varianten_0_variant_naam', 'field_6901f1e12ca6c'),
(176, 111, 'mob_varianten_0_variant_info', 'found in temperate biomes'),
(177, 111, '_mob_varianten_0_variant_info', 'field_6903376c68e2f'),
(178, 111, 'mob_varianten_1_variant_foto', '104'),
(179, 111, '_mob_varianten_1_variant_foto', 'field_6901f16d2ca6b'),
(180, 111, 'mob_varianten_1_variant_naam', 'Cold biome cow'),
(181, 111, '_mob_varianten_1_variant_naam', 'field_6901f1e12ca6c'),
(182, 111, 'mob_varianten_1_variant_info', 'Found in cold biomes'),
(183, 111, '_mob_varianten_1_variant_info', 'field_6903376c68e2f'),
(184, 111, 'mob_varianten_2_variant_foto', '105'),
(185, 111, '_mob_varianten_2_variant_foto', 'field_6901f16d2ca6b'),
(186, 111, 'mob_varianten_2_variant_naam', 'Warm biome cow'),
(187, 111, '_mob_varianten_2_variant_naam', 'field_6901f1e12ca6c'),
(188, 111, 'mob_varianten_2_variant_info', 'Found in warm biomes'),
(189, 111, '_mob_varianten_2_variant_info', 'field_6903376c68e2f'),
(190, 111, 'mob_varianten', '3'),
(191, 111, '_mob_varianten', 'field_6901f1342ca6a'),
(192, 111, 'mob_drops_breeding', '1–7 experience orbs upon a successful breeding.'),
(193, 111, '_mob_drops_breeding', 'field_6901f67470db1'),
(194, 111, 'mob_drops_on_dead_0_dead_drops', 'Raw Beef'),
(195, 111, '_mob_drops_on_dead_0_dead_drops', 'field_6901f8c8453a3'),
(196, 111, 'mob_drops_on_dead_0_default_drop_chanche', '100.00%'),
(197, 111, '_mob_drops_on_dead_0_default_drop_chanche', 'field_6903354686b30'),
(198, 111, 'mob_drops_on_dead_0_image', '112'),
(199, 111, '_mob_drops_on_dead_0_image', 'field_6903bd2329e48'),
(200, 111, 'mob_drops_on_dead_1_dead_drops', 'Leather'),
(201, 111, '_mob_drops_on_dead_1_dead_drops', 'field_6901f8c8453a3'),
(202, 111, 'mob_drops_on_dead_1_default_drop_chanche', '66.67%'),
(203, 111, '_mob_drops_on_dead_1_default_drop_chanche', 'field_6903354686b30'),
(204, 111, 'mob_drops_on_dead_1_image', '113'),
(205, 111, '_mob_drops_on_dead_1_image', 'field_6903bd2329e48'),
(206, 111, 'mob_drops_on_dead', '2'),
(207, 111, '_mob_drops_on_dead', 'field_6901f7c270db2'),
(208, 111, 'mob_drops_extra_0_using_image', '114'),
(209, 111, '_mob_drops_extra_0_using_image', 'field_6903bd5ae98cb'),
(210, 111, 'mob_drops_extra_0_using', 'A bucket'),
(211, 111, '_mob_drops_extra_0_using', 'field_690338796f964'),
(212, 111, 'mob_drops_extra_0_receive_image', '115'),
(213, 111, '_mob_drops_extra_0_receive_image', 'field_6903bd82e98cc'),
(214, 111, 'mob_drops_extra_0_receive', 'Milk Bucket'),
(215, 111, '_mob_drops_extra_0_receive', 'field_6903388b6f965'),
(216, 111, 'mob_drops_extra', '1'),
(217, 111, '_mob_drops_extra', 'field_690338406f963'),
(218, 111, 'mob_drops', ''),
(219, 111, '_mob_drops', 'field_6901f42870db0'),
(220, 111, 'health_and_feeding_0_food', 'Wheat'),
(221, 111, '_health_and_feeding_0_food', 'field_6902099da516f'),
(222, 111, 'health_and_feeding_0_heals', ''),
(223, 111, '_health_and_feeding_0_heals', 'field_690209a7a5170'),
(224, 111, 'health_and_feeding', '1'),
(225, 111, '_health_and_feeding', 'field_69020848a516e'),
(226, 111, 'is_it_tameable', 'No'),
(227, 111, '_is_it_tameable', 'field_69032f99ee425'),
(228, 111, 'spawn_biome', 'a:23:{i:0;s:8:\"Badlands\";i:1;s:15:\"Eroded Badlands\";i:2;s:15:\"Wooded Badlands\";i:3;s:6:\"Plains\";i:4;s:16:\"Sunflower Plains\";i:5;s:6:\"Forest\";i:6;s:13:\"Flower Forest\";i:7;s:24:\"Windswept Gravelly Hills\";i:8;s:16:\"Windswept Forest\";i:9;s:12:\"Birch Forest\";i:10;s:23:\"Old Growth Birch Forest\";i:11;s:11:\"Dark Forest\";i:12;s:6:\"Jungle\";i:13;s:13:\"Bamboo Jungle\";i:14;s:13:\"Sparse Jungle\";i:15;s:5:\"Taiga\";i:16;s:11:\"Snowy Taiga\";i:17;s:23:\"Old Growth Spruce Taiga\";i:18;s:21:\"Old Growth Pine Taiga\";i:19;s:5:\"Swamp\";i:20;s:7:\"Savanna\";i:21;s:17:\"Windswept Savanna\";i:22;s:15:\"Savanna Plateau\";}'),
(229, 111, '_spawn_biome', 'field_690217e4b28ed'),
(230, 111, 'mob_health_points', '10'),
(231, 111, '_mob_health_points', 'field_69033d91425b0'),
(232, 111, 'behavior', 'Passive'),
(233, 111, '_behavior', 'field_6903b9bf5ce14'),
(243, 38, '_wp_old_date', '2025-10-16'),
(244, 40, '_wp_old_date', '2025-10-16'),
(254, 103, '_wp_trash_meta_status', 'draft'),
(255, 103, '_wp_trash_meta_time', '1761856241'),
(256, 103, '_wp_desired_post_slug', ''),
(257, 120, '_edit_lock', '1761856141:1'),
(258, 121, '_edit_lock', '1761856771:1'),
(259, 122, '_menu_item_type', 'post_type_archive'),
(260, 122, '_menu_item_menu_item_parent', '0'),
(261, 122, '_menu_item_object_id', '-8'),
(262, 122, '_menu_item_object', 'minecraft-update'),
(263, 122, '_menu_item_target', ''),
(264, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(265, 122, '_menu_item_xfn', ''),
(266, 122, '_menu_item_url', ''),
(267, 122, '_menu_item_orphaned', '1761857089'),
(268, 123, '_edit_lock', '1761858699:1'),
(269, 124, '_menu_item_type', 'post_type'),
(270, 124, '_menu_item_menu_item_parent', '0'),
(271, 124, '_menu_item_object_id', '111'),
(272, 124, '_menu_item_object', 'minecraft-mob'),
(273, 124, '_menu_item_target', ''),
(274, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(275, 124, '_menu_item_xfn', ''),
(276, 124, '_menu_item_url', ''),
(277, 124, '_menu_item_orphaned', '1761859096'),
(278, 125, '_menu_item_type', 'post_type_archive'),
(279, 125, '_menu_item_menu_item_parent', '0'),
(280, 125, '_menu_item_object_id', '-8'),
(281, 125, '_menu_item_object', 'minecraft-update'),
(282, 125, '_menu_item_target', ''),
(283, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(284, 125, '_menu_item_xfn', ''),
(285, 125, '_menu_item_url', ''),
(286, 125, '_menu_item_orphaned', '1761859369'),
(287, 126, '_menu_item_type', 'post_type'),
(288, 126, '_menu_item_menu_item_parent', '0'),
(289, 126, '_menu_item_object_id', '25'),
(290, 126, '_menu_item_object', 'minecraft-update'),
(291, 126, '_menu_item_target', ''),
(292, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(293, 126, '_menu_item_xfn', ''),
(294, 126, '_menu_item_url', ''),
(295, 126, '_menu_item_orphaned', '1761859369'),
(296, 127, '_edit_lock', '1761860938:1'),
(297, 128, '_wp_attached_file', '2025/10/Leather_JE2_BE2.png'),
(298, 128, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:27:\"2025/10/Leather_JE2_BE2.png\";s:8:\"filesize\";i:289;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(299, 129, '_wp_attached_file', '2025/10/Raw_Beef_JE4_BE3.png'),
(300, 129, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:28:\"2025/10/Raw_Beef_JE4_BE3.png\";s:8:\"filesize\";i:278;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(301, 111, 'mob_drops_on_dead_0_dead_drops_image', '129'),
(302, 111, '_mob_drops_on_dead_0_dead_drops_image', 'field_6903bd2329e48'),
(303, 111, 'mob_drops_on_dead_1_dead_drops_image', '128'),
(304, 111, '_mob_drops_on_dead_1_dead_drops_image', 'field_6903bd2329e48'),
(308, 111, '_acf_changed', '1'),
(309, 131, '_menu_item_type', 'post_type_archive'),
(310, 131, '_menu_item_menu_item_parent', '0'),
(311, 131, '_menu_item_object_id', '-6'),
(312, 131, '_menu_item_object', 'minecraft-mob'),
(313, 131, '_menu_item_target', ''),
(314, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(315, 131, '_menu_item_xfn', ''),
(316, 131, '_menu_item_url', ''),
(318, 38, '_wp_old_date', '2025-10-30'),
(319, 40, '_wp_old_date', '2025-10-30'),
(320, 133, '_wp_attached_file', '2025/10/Wheat_JE2_BE2.png'),
(321, 133, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:25:\"2025/10/Wheat_JE2_BE2.png\";s:8:\"filesize\";i:304;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(322, 111, 'health_and_feeding_0_food_image', '133'),
(323, 111, '_health_and_feeding_0_food_image', 'field_69050664b1aa7'),
(336, 134, '_edit_lock', '1762115877:1'),
(337, 135, '_wp_attached_file', '2025/11/150px-Axolotl_Idle_Floor_Underwater.gif'),
(338, 135, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:95;s:4:\"file\";s:47:\"2025/11/150px-Axolotl_Idle_Floor_Underwater.gif\";s:8:\"filesize\";i:377377;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(339, 136, '_wp_attached_file', '2025/11/150px-Wild_Axolotl_Idle_Floor_Underwater-1.gif'),
(340, 136, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:54:\"2025/11/150px-Wild_Axolotl_Idle_Floor_Underwater-1.gif\";s:8:\"filesize\";i:393673;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(341, 134, '_acf_changed', '1'),
(342, 134, '_edit_last', '1'),
(343, 134, 'mob_foto', '135'),
(344, 134, '_mob_foto', 'field_6901e8012ca69'),
(345, 134, 'mob_name', 'Axolotl'),
(346, 134, '_mob_name', 'field_6901e3be2ca67'),
(347, 134, 'gepubliceerde_datum', '20210608'),
(348, 134, '_gepubliceerde_datum', 'field_6901e74b2ca68'),
(349, 134, 'mob_health_points', '14'),
(350, 134, '_mob_health_points', 'field_69033d91425b0'),
(351, 134, 'behavior', 'Passive'),
(352, 134, '_behavior', 'field_6903b9bf5ce14'),
(353, 134, 'is_it_tameable', 'No'),
(354, 134, '_is_it_tameable', 'field_69032f99ee425'),
(355, 134, 'mob_varianten_0_variant_foto', '135'),
(356, 134, '_mob_varianten_0_variant_foto', 'field_6901f16d2ca6b'),
(357, 134, 'mob_varianten_0_variant_naam', 'Leucistic'),
(358, 134, '_mob_varianten_0_variant_naam', 'field_6901f1e12ca6c'),
(359, 134, 'mob_varianten_0_variant_info', 'Spawn Chance: 24.98%'),
(360, 134, '_mob_varianten_0_variant_info', 'field_6903376c68e2f'),
(361, 134, 'mob_varianten_1_variant_foto', '136'),
(362, 134, '_mob_varianten_1_variant_foto', 'field_6901f16d2ca6b'),
(363, 134, 'mob_varianten_1_variant_naam', 'Wild'),
(364, 134, '_mob_varianten_1_variant_naam', 'field_6901f1e12ca6c'),
(365, 134, 'mob_varianten_1_variant_info', 'Spawn Chance: 24.98%'),
(366, 134, '_mob_varianten_1_variant_info', 'field_6903376c68e2f'),
(367, 134, 'mob_varianten_2_variant_foto', '137'),
(368, 134, '_mob_varianten_2_variant_foto', 'field_6901f16d2ca6b'),
(369, 134, 'mob_varianten_2_variant_naam', 'Gold'),
(370, 134, '_mob_varianten_2_variant_naam', 'field_6901f1e12ca6c'),
(371, 134, 'mob_varianten_2_variant_info', 'Spawn Chance: 24.98%'),
(372, 134, '_mob_varianten_2_variant_info', 'field_6903376c68e2f'),
(373, 134, 'mob_varianten_3_variant_foto', '138'),
(374, 134, '_mob_varianten_3_variant_foto', 'field_6901f16d2ca6b'),
(375, 134, 'mob_varianten_3_variant_naam', 'Cyan'),
(376, 134, '_mob_varianten_3_variant_naam', 'field_6901f1e12ca6c'),
(377, 134, 'mob_varianten_3_variant_info', 'Spawn Chance: 24.98%'),
(378, 134, '_mob_varianten_3_variant_info', 'field_6903376c68e2f'),
(379, 134, 'mob_varianten_4_variant_foto', '139'),
(380, 134, '_mob_varianten_4_variant_foto', 'field_6901f16d2ca6b'),
(381, 134, 'mob_varianten_4_variant_naam', 'Blue'),
(382, 134, '_mob_varianten_4_variant_naam', 'field_6901f1e12ca6c'),
(383, 134, 'mob_varianten_4_variant_info', 'Spawn Chance: 0.083%'),
(384, 134, '_mob_varianten_4_variant_info', 'field_6903376c68e2f'),
(385, 134, 'mob_varianten', '5'),
(386, 134, '_mob_varianten', 'field_6901f1342ca6a'),
(387, 134, 'mob_drops_breeding', '1–7 experience orbs upon a successful breeding.'),
(388, 134, '_mob_drops_breeding', 'field_6901f67470db1'),
(389, 134, 'mob_drops_on_dead', ''),
(390, 134, '_mob_drops_on_dead', 'field_6901f7c270db2'),
(391, 134, 'mob_drops_extra', ''),
(392, 134, '_mob_drops_extra', 'field_690338406f963'),
(393, 134, 'mob_drops', ''),
(394, 134, '_mob_drops', 'field_6901f42870db0'),
(395, 134, 'health_and_feeding', '1'),
(396, 134, '_health_and_feeding', 'field_69020848a516e'),
(397, 134, 'spawn_biome', 'a:1:{i:0;s:24:\"Lush Caves (ondergronds)\";}'),
(398, 134, '_spawn_biome', 'field_690217e4b28ed'),
(399, 137, '_wp_attached_file', '2025/11/150px-Gold_Axolotl_Idle_Floor_Underwater.gif'),
(400, 137, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:52:\"2025/11/150px-Gold_Axolotl_Idle_Floor_Underwater.gif\";s:8:\"filesize\";i:301487;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(401, 138, '_wp_attached_file', '2025/11/150px-Cyan_Axolotl_Idle_Floor_Underwater.gif'),
(402, 138, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:52:\"2025/11/150px-Cyan_Axolotl_Idle_Floor_Underwater.gif\";s:8:\"filesize\";i:357718;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(403, 139, '_wp_attached_file', '2025/11/150px-Blue_Axolotl_Idle_Floor_Underwater.gif'),
(404, 139, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:52:\"2025/11/150px-Blue_Axolotl_Idle_Floor_Underwater.gif\";s:8:\"filesize\";i:361925;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(405, 140, '_wp_attached_file', '2025/11/Bucket_of_Tropical_Fish_JE3_BE2.png'),
(406, 140, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:43:\"2025/11/Bucket_of_Tropical_Fish_JE3_BE2.png\";s:8:\"filesize\";i:392;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(413, 134, 'health_and_feeding_0_food', 'bucket of tropical fish'),
(414, 134, '_health_and_feeding_0_food', 'field_6902099da516f'),
(415, 134, 'health_and_feeding_0_food_image', '140'),
(416, 134, '_health_and_feeding_0_food_image', 'field_69050664b1aa7'),
(417, 134, 'health_and_feeding_0_heals', ''),
(418, 134, '_health_and_feeding_0_heals', 'field_690209a7a5170');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-10-06 08:36:46', '2025-10-06 08:36:46', '<!-- wp:paragraph -->\n<p>Welkom bij WordPress. Dit is je eerste bericht. Bewerk of verwijder het, start dan met schrijven!</p>\n<!-- /wp:paragraph -->', 'Hallo wereld!', '', 'trash', 'open', 'open', '', 'hallo-wereld__trashed', '', '', '2025-10-28 10:12:33', '2025-10-28 10:12:33', '', 0, 'http://localhost/wptest01/?p=1', 0, 'post', '', 1),
(2, 1, '2025-10-06 08:36:46', '2025-10-06 08:36:46', '<!-- wp:paragraph -->\n<p>Dit is een voorbeeldpagina. Het is anders dan een blog bericht omdat het op één plek blijft en tevoorschijn komt in je site navigatie (in de meeste thema\'s). De meeste mensen starten met een Over pagina dat hen voorstelt aan potentiële site bezoekers. Het zou iets als dit kunnen zeggen:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hoi daar! Ik ben een fietskoerier in het dagelijks leven en een beginnende acteur in de avonduren, en dit is mijn site. Ik leef in Los Angeles, heb een leuke hond genaamd Jack en ik hou van pi&#241;a coladas. (En overvallen worden door de regen.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...of zoiets als dit:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>De XYZ Doohickey Company is opgericht in 1971 en heeft sindsdien kwalitatieve doohickeys aan het publiek geleverd. Gevestigd in Gotham City, heeft XYZ meer dan 2000 mensen in dienst en doet allerlei fantastische dingen voor de community in Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Als nieuwe WordPress gebruiker kan je naar <a href=\"http://localhost/wptest01/wp-admin/\">je dashboard</a> gaan om deze pagina te verwijderen en nieuwe pagina\'s toe te voegen voor je inhoud. Veel plezier!</p>\n<!-- /wp:paragraph -->', 'Voorbeeld pagina', '', 'publish', 'closed', 'open', '', 'voorbeeld-pagina', '', '', '2025-10-06 08:36:46', '2025-10-06 08:36:46', '', 0, 'http://localhost/wptest01/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-10-06 08:36:46', '2025-10-06 08:36:46', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Wie zijn we</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Ons site adres is: http://localhost/wptest01.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Reacties</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als bezoekers reacties achterlaten op de site, verzamelen we de gegevens getoond in het reacties formulier, het IP-adres van de bezoeker en de browser user agent string om te helpen spam te detecteren.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Een geanonimiseerde string, gemaakt op basis van je e-mailadres (dit wordt ook een hash genoemd) kan worden gestuurd naar de Gravatar dienst indien je dit gebruikt. De privacybeleid pagina van de Gravatar dienst kun je hier vinden: https://automattic.com/privacy/. Nadat je reactie is goedgekeurd, is je profielfoto publiekelijk zichtbaar in de context van je reactie.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als je afbeeldingen naar de site uploadt, moet je het uploaden van afbeeldingen met daarin ingesloten locatiegegevens (EXIF GPS) vermijden. Bezoekers van de site kunnen alle locatiegegevens van afbeeldingen op de site downloaden en extraheren.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Wanneer je een reactie achterlaat op onze site, kun je aangeven of je naam, je e-mailadres en site in een cookie opgeslagen mogen worden. Dit doen we voor je gemak zodat je deze gegevens niet opnieuw hoeft in te vullen voor een nieuwe reactie. Deze cookies zijn een jaar lang geldig.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Indien je onze inlogpagina bezoekt, slaan we een tijdelijke cookie op om te controleren of je browser cookies accepteert. Deze cookie bevat geen persoonlijke gegevens en wordt verwijderd zodra je je browser sluit.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Wanneer je inlogt, zullen we ook een aantal cookies instellen om je login informatie en je schermweergave keuzes op te slaan. Login cookies gaan twee dagen mee en scherminstellingen cookies gaan een jaar mee. Als je \"Herinner mij\", selecteert, blijft je login twee weken bewaard. Als je uitlogt uit je account, worden de login cookies verwijderd.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Wanneer je een bericht wijzigt of publiceert wordt een aanvullende cookie door je browser opgeslagen. Deze cookie bevat geen persoonsgegevens en heeft enkel het bericht ID van het artikel wat je hebt bewerkt in zich. Deze cookie is na een dag verlopen.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Ingesloten inhoud van andere sites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Berichten op deze site kunnen ingesloten inhoud bevatten (bijvoorbeeld video\'s, afbeeldingen, berichten, enz.). Ingesloten inhoud van andere sites gedraagt zich exact hetzelfde alsof de bezoeker deze andere site heeft bezocht.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Deze sites kunnen gegevens over je verzamelen, cookies gebruiken, extra tracking van derde partijen insluiten en je interactie met deze ingesloten inhoud monitoren, inclusief het vastleggen van de interactie met ingesloten inhoud als je een account hebt en ingelogd bent op die site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Met wie we je gegevens delen</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als je een wachtwoord reset aanvraagt, wordt je IP-adres opgenomen in de reset e-mail.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Hoelang we je gegevens bewaren</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Wanneer je een reactie achterlaat dan wordt die reactie en de metadata van die reactie voor altijd bewaard. Op deze manier kunnen we vervolg reacties automatisch herkennen en goedkeuren in plaats van dat we ze moeten modereren.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Voor gebruikers die zich op onze site registreren (indien aanwezig), slaan we ook de persoonlijke informatie op die ze verstrekken in hun gebruikersprofiel. Alle gebruikers kunnen op ieder moment hun persoonlijke informatie bekijken, bewerken of verwijderen (behalve dat ze hun gebruikersnaam niet kunnen wijzigen). Sitebeheerders kunnen deze informatie ook bekijken en bewerken.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Welke rechten je hebt over je gegevens</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als je een account hebt op deze site of je hebt reacties achtergelaten, kan je verzoeken om een exportbestand van je persoonlijke gegevens die we van je hebben, inclusief alle gegevens die je ons opgegeven hebt. Je kan ook verzoeken dat we alle persoonlijke gegevens die we van je hebben wissen. Dit is exclusief alle gegevens die we verplicht moeten bewaren in verband met administratieve, wettelijke of beveiligings doeleinden.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Waar je gegevens naar toe worden gezonden</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Mogelijk worden reacties van bezoekers gecontroleerd via een geautomatiseerde spamdetectie service.</p>\n<!-- /wp:paragraph -->\n', 'Privacybeleid', '', 'draft', 'closed', 'open', '', 'privacybeleid', '', '', '2025-10-06 08:36:46', '2025-10-06 08:36:46', '', 0, 'http://localhost/wptest01/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-10-06 08:36:47', '2025-10-06 08:36:47', '<!-- wp:page-list /-->', 'Navigatie', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-10-06 08:36:47', '2025-10-06 08:36:47', '', 0, 'http://localhost/wptest01/2025/10/06/navigation/', 0, 'wp_navigation', '', 0),
(15, 1, '2025-10-15 13:18:09', '2025-10-15 13:18:09', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"minecraft-update\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Minecraft Updates', 'minecraft-updates', 'publish', 'closed', 'closed', '', 'group_68ef9eeda09ad', '', '', '2025-10-15 13:57:34', '2025-10-15 13:57:34', '', 0, 'http://localhost/wptest01/?post_type=acf-field-group&#038;p=15', 0, 'acf-field-group', '', 0),
(16, 1, '2025-10-15 13:18:09', '2025-10-15 13:18:09', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Versie Nummer', 'versie_nummer', 'publish', 'closed', 'closed', '', 'field_68ef9eededd65', '', '', '2025-10-15 13:48:42', '2025-10-15 13:48:42', '', 15, 'http://localhost/wptest01/?post_type=acf-field&#038;p=16', 1, 'acf-field', '', 0),
(17, 1, '2025-10-15 13:18:38', '2025-10-15 13:18:38', 'a:35:{s:9:\"post_type\";s:16:\"minecraft-update\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:17:\"Minecraft Updates\";s:13:\"singular_name\";s:16:\"Minecraft Update\";s:9:\"menu_name\";s:17:\"Minecraft Updates\";s:9:\"all_items\";s:21:\"All Minecraft Updates\";s:9:\"edit_item\";s:21:\"Edit Minecraft Update\";s:9:\"view_item\";s:21:\"View Minecraft Update\";s:10:\"view_items\";s:22:\"View Minecraft Updates\";s:12:\"add_new_item\";s:20:\"Add Minecraft Update\";s:7:\"add_new\";s:20:\"Add Minecraft Update\";s:8:\"new_item\";s:20:\"New Minecraft Update\";s:17:\"parent_item_colon\";s:24:\"Parent Minecraft Update:\";s:12:\"search_items\";s:24:\"Search Minecraft Updates\";s:9:\"not_found\";s:26:\"No minecraft updates found\";s:18:\"not_found_in_trash\";s:35:\"No minecraft updates found in Trash\";s:8:\"archives\";s:25:\"Minecraft Update Archives\";s:10:\"attributes\";s:27:\"Minecraft Update Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:28:\"Insert into minecraft update\";s:21:\"uploaded_to_this_item\";s:33:\"Uploaded to this minecraft update\";s:17:\"filter_items_list\";s:29:\"Filter minecraft updates list\";s:14:\"filter_by_date\";s:32:\"Filter minecraft updates by date\";s:21:\"items_list_navigation\";s:33:\"Minecraft Updates list navigation\";s:10:\"items_list\";s:22:\"Minecraft Updates list\";s:14:\"item_published\";s:27:\"Minecraft Update published.\";s:24:\"item_published_privately\";s:37:\"Minecraft Update published privately.\";s:22:\"item_reverted_to_draft\";s:35:\"Minecraft Update reverted to draft.\";s:14:\"item_scheduled\";s:27:\"Minecraft Update scheduled.\";s:12:\"item_updated\";s:25:\"Minecraft Update updated.\";s:9:\"item_link\";s:21:\"Minecraft Update Link\";s:21:\"item_link_description\";s:29:\"A link to a minecraft update.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";a:2:{s:4:\"type\";s:9:\"dashicons\";s:5:\"value\";s:20:\"dashicons-admin-post\";}s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:1;s:16:\"has_archive_slug\";s:17:\"minecraft-updates\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'Minecraft Updates', 'minecraft-updates', 'publish', 'closed', 'closed', '', 'post_type_68ef9f15d1ef7', '', '', '2025-10-15 14:16:43', '2025-10-15 14:16:43', '', 0, 'http://localhost/wptest01/?post_type=acf-post-type&#038;p=17', 0, 'acf-post-type', '', 0),
(20, 1, '2025-10-15 13:25:54', '2025-10-15 13:25:54', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Toegevoegde functies', 'toegevoegde_functies', 'publish', 'closed', 'closed', '', 'field_68efa02a051db', '', '', '2025-10-15 13:51:29', '2025-10-15 13:51:29', '', 15, 'http://localhost/wptest01/?post_type=acf-field&#038;p=20', 3, 'acf-field', '', 0),
(21, 1, '2025-10-15 13:25:54', '2025-10-15 13:25:54', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Functie naam', 'functie_naam', 'publish', 'closed', 'closed', '', 'field_68efa099051dc', '', '', '2025-10-15 13:40:10', '2025-10-15 13:40:10', '', 20, 'http://localhost/wptest01/?post_type=acf-field&#038;p=21', 0, 'acf-field', '', 0),
(23, 1, '2025-10-15 13:33:16', '2025-10-15 13:33:16', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Functie uitleg', 'functie_uitleg', 'publish', 'closed', 'closed', '', 'field_68efa160c603e', '', '', '2025-10-15 13:40:10', '2025-10-15 13:40:10', '', 20, 'http://localhost/wptest01/?post_type=acf-field&#038;p=23', 1, 'acf-field', '', 0),
(24, 1, '2025-10-15 13:33:16', '2025-10-15 13:33:16', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Beschrijving', 'beschrijving', 'publish', 'closed', 'closed', '', 'field_68efa1d3c603f', '', '', '2025-10-15 13:40:10', '2025-10-15 13:40:10', '', 23, 'http://localhost/wptest01/?post_type=acf-field&#038;p=24', 0, 'acf-field', '', 0),
(25, 1, '2025-10-15 13:39:05', '2025-10-15 13:39:05', '<!-- wp:paragraph -->\n<p>Minecraft has entered The Copper Age! Express yourself in every shade of copper as you transform this versatile metal into handy tools, shiny armor, gleaming light sources, oxidizing decor, smart storage, and even lively mechanical companions known as copper golems.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In addition to these shiny new features, this drop comes with a bunch of technical news and fixes. The End now has a flashing skylight, you can populate the world with NPCs called mannequins, and item sprites can now be added into text. Whether scraped or oxidized, this is the start of a new clonking era of creativity!</p>\n<!-- /wp:paragraph -->', 'Copper Age', '', 'publish', 'closed', 'closed', '', 'copper-age', '', '', '2025-10-30 20:12:02', '2025-10-30 20:12:02', '', 0, 'http://localhost/wptest01/?post_type=minecraft-update&#038;p=25', 0, 'minecraft-update', '', 0),
(26, 1, '2025-10-15 13:42:47', '2025-10-15 13:42:47', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Functie afbeelding + beschrijving', 'functie_afbeelding_beschrijving', 'publish', 'closed', 'closed', '', 'field_68efa489892ee', '', '', '2025-10-15 13:46:34', '2025-10-15 13:46:34', '', 20, 'http://localhost/wptest01/?post_type=acf-field&#038;p=26', 2, 'acf-field', '', 0),
(29, 1, '2025-10-15 13:45:36', '2025-10-15 13:45:36', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Afbeelding', 'afbeelding', 'publish', 'closed', 'closed', '', 'field_68efa55c29e6b', '', '', '2025-10-15 13:45:36', '2025-10-15 13:45:36', '', 26, 'http://localhost/wptest01/?post_type=acf-field&p=29', 0, 'acf-field', '', 0),
(30, 1, '2025-10-15 13:45:36', '2025-10-15 13:45:36', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Beschrijving', 'beschrijving', 'publish', 'closed', 'closed', '', 'field_68efa57529e6c', '', '', '2025-10-15 13:45:36', '2025-10-15 13:45:36', '', 26, 'http://localhost/wptest01/?post_type=acf-field&p=30', 1, 'acf-field', '', 0),
(31, 1, '2025-10-15 13:48:42', '2025-10-15 13:48:42', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_68efa619981b4', '', '', '2025-10-15 13:48:42', '2025-10-15 13:48:42', '', 15, 'http://localhost/wptest01/?post_type=acf-field&p=31', 0, 'acf-field', '', 0),
(32, 1, '2025-10-15 13:51:19', '2025-10-15 13:51:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;s:23:\"default_to_current_date\";i:0;s:17:\"allow_in_bindings\";i:0;}', 'Gepubliceerde datum', 'gepubliceerde_datum', 'publish', 'closed', 'closed', '', 'field_68efa66d7a51e', '', '', '2025-10-15 13:51:29', '2025-10-15 13:51:29', '', 15, 'http://localhost/wptest01/?post_type=acf-field&#038;p=32', 2, 'acf-field', '', 0),
(34, 1, '2025-10-15 13:54:15', '2025-10-15 13:54:15', '', '1.21.9_1170x500', '', 'inherit', 'open', 'closed', '', '1-21-9_1170x500', '', '', '2025-10-15 13:54:15', '2025-10-15 13:54:15', '', 25, 'http://localhost/wptest01/wp-content/uploads/2025/10/1.21.9_1170x500.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2025-10-15 13:54:58', '2025-10-15 13:54:58', '', '1.21.9_golem_pumpkin', '', 'inherit', 'open', 'closed', '', '1-21-9_golem_pumpkin', '', '', '2025-10-15 13:54:58', '2025-10-15 13:54:58', '', 25, 'http://localhost/wptest01/wp-content/uploads/2025/10/1.21.9_golem_pumpkin.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2025-10-15 14:17:04', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-10-15 14:17:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2025-10-15 14:17:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-10-15 14:17:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2025-10-31 10:22:46', '2025-10-16 08:24:43', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2025-10-31 10:22:46', '2025-10-31 10:22:46', '', 0, 'http://localhost/wptest01/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2025-10-16 08:23:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-10-16 08:23:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2025-10-31 10:22:46', '2025-10-16 08:24:43', '', 'Minecraft updates', '', 'publish', 'closed', 'closed', '', 'minecraft-updates', '', '', '2025-10-31 10:22:46', '2025-10-31 10:22:46', '', 0, 'http://localhost/wptest01/?p=40', 2, 'nav_menu_item', '', 0),
(43, 1, '2025-10-28 10:12:33', '2025-10-28 10:12:33', '<!-- wp:paragraph -->\n<p>Welkom bij WordPress. Dit is je eerste bericht. Bewerk of verwijder het, start dan met schrijven!</p>\n<!-- /wp:paragraph -->', 'Hallo wereld!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2025-10-28 10:12:33', '2025-10-28 10:12:33', '', 1, 'http://localhost/wptest01/?p=43', 0, 'revision', '', 0),
(44, 1, '2025-10-28 10:18:14', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-28 10:18:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?page_id=44', 0, 'page', '', 0),
(45, 1, '2025-10-28 10:39:34', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-10-28 10:39:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?p=45', 0, 'post', '', 0),
(46, 1, '2025-10-28 10:41:20', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-28 10:41:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-update&p=46', 0, 'minecraft-update', '', 0),
(47, 1, '2025-10-28 10:45:31', '2025-10-28 10:45:31', 'a:35:{s:9:\"post_type\";s:13:\"minecraft-mob\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:14:\"Minecraft Mobs\";s:13:\"singular_name\";s:13:\"Minecraft Mob\";s:9:\"menu_name\";s:14:\"minecraft mobs\";s:9:\"all_items\";s:18:\"All minecraft mobs\";s:9:\"edit_item\";s:18:\"Edit Minecraft mob\";s:9:\"view_item\";s:18:\"View Minecraft mob\";s:10:\"view_items\";s:19:\"View minecraft mobs\";s:12:\"add_new_item\";s:17:\"Add Minecraft mob\";s:7:\"add_new\";s:17:\"Add Minecraft mob\";s:8:\"new_item\";s:17:\"New Minecraft mob\";s:17:\"parent_item_colon\";s:21:\"Parent Minecraft mob:\";s:12:\"search_items\";s:21:\"Search minecraft mobs\";s:9:\"not_found\";s:23:\"No minecraft mobs found\";s:18:\"not_found_in_trash\";s:32:\"No minecraft mobs found in Trash\";s:8:\"archives\";s:22:\"Minecraft mob Archives\";s:10:\"attributes\";s:24:\"Minecraft mob Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:25:\"Insert into minecraft mob\";s:21:\"uploaded_to_this_item\";s:30:\"Uploaded to this minecraft mob\";s:17:\"filter_items_list\";s:26:\"Filter minecraft mobs list\";s:14:\"filter_by_date\";s:29:\"Filter minecraft mobs by date\";s:21:\"items_list_navigation\";s:30:\"minecraft mobs list navigation\";s:10:\"items_list\";s:19:\"minecraft mobs list\";s:14:\"item_published\";s:24:\"Minecraft mob published.\";s:24:\"item_published_privately\";s:34:\"Minecraft mob published privately.\";s:22:\"item_reverted_to_draft\";s:32:\"Minecraft mob reverted to draft.\";s:14:\"item_scheduled\";s:24:\"Minecraft mob scheduled.\";s:12:\"item_updated\";s:22:\"Minecraft mob updated.\";s:9:\"item_link\";s:18:\"Minecraft mob Link\";s:21:\"item_link_description\";s:26:\"A link to a minecraft mob.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";a:2:{s:4:\"type\";s:9:\"dashicons\";s:5:\"value\";s:20:\"dashicons-admin-post\";}s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:1;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'Minecraft Mobs', 'minecraft-mobs', 'publish', 'closed', 'closed', '', 'post_type_69009dfc5b634', '', '', '2025-10-31 10:22:14', '2025-10-31 10:22:14', '', 0, 'http://localhost/wptest01/?post_type=acf-post-type&#038;p=47', 0, 'acf-post-type', '', 0),
(48, 1, '2025-10-28 10:42:11', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-28 10:42:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=acf-post-type&p=48', 0, 'acf-post-type', '', 0),
(49, 1, '2025-10-28 10:47:57', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-28 10:47:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=acf-field-group&p=49', 0, 'acf-field-group', '', 0),
(50, 1, '2025-10-29 09:46:12', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-29 09:46:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=50', 0, 'minecraft-mob', '', 0),
(51, 1, '2025-10-29 10:56:00', '2025-10-29 10:56:00', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"minecraft-mob\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Minecraft Mobs', 'minecraft-mobs', 'publish', 'closed', 'closed', '', 'group_6901e3bd45a12', '', '', '2025-10-31 22:23:48', '2025-10-31 22:23:48', '', 0, 'http://localhost/wptest01/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2025-10-29 09:52:56', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-29 09:52:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=acf-field-group&p=52', 0, 'acf-field-group', '', 0),
(53, 1, '2025-10-29 10:56:00', '2025-10-29 10:56:00', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Mob foto', 'mob_foto', 'publish', 'closed', 'closed', '', 'field_6901e8012ca69', '', '', '2025-10-29 10:56:00', '2025-10-29 10:56:00', '', 51, 'http://localhost/wptest01/?post_type=acf-field&p=53', 0, 'acf-field', '', 0),
(54, 1, '2025-10-29 10:56:00', '2025-10-29 10:56:00', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Mob Name', 'mob_name', 'publish', 'closed', 'closed', '', 'field_6901e3be2ca67', '', '', '2025-10-31 16:15:34', '2025-10-31 16:15:34', '', 51, 'http://localhost/wptest01/?post_type=acf-field&#038;p=54', 1, 'acf-field', '', 0),
(55, 1, '2025-10-29 10:56:00', '2025-10-29 10:56:00', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;s:23:\"default_to_current_date\";i:0;s:17:\"allow_in_bindings\";i:0;}', 'Gepubliceerde Datum', 'gepubliceerde_datum', 'publish', 'closed', 'closed', '', 'field_6901e74b2ca68', '', '', '2025-10-29 10:56:00', '2025-10-29 10:56:00', '', 51, 'http://localhost/wptest01/?post_type=acf-field&p=55', 2, 'acf-field', '', 0),
(56, 1, '2025-10-29 10:56:00', '2025-10-29 10:56:00', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Mob Varianten', 'mob_varianten', 'publish', 'closed', 'closed', '', 'field_6901f1342ca6a', '', '', '2025-10-31 19:28:23', '2025-10-31 19:28:23', '', 51, 'http://localhost/wptest01/?post_type=acf-field&#038;p=56', 6, 'acf-field', '', 0),
(57, 1, '2025-10-29 10:56:00', '2025-10-29 10:56:00', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'variant foto', 'variant_foto', 'publish', 'closed', 'closed', '', 'field_6901f16d2ca6b', '', '', '2025-10-30 10:04:08', '2025-10-30 10:04:08', '', 56, 'http://localhost/wptest01/?post_type=acf-field&#038;p=57', 0, 'acf-field', '', 0),
(58, 1, '2025-10-29 10:56:00', '2025-10-29 10:56:00', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Variant Naam', 'variant_naam', 'publish', 'closed', 'closed', '', 'field_6901f1e12ca6c', '', '', '2025-10-30 10:04:08', '2025-10-30 10:04:08', '', 56, 'http://localhost/wptest01/?post_type=acf-field&#038;p=58', 1, 'acf-field', '', 0),
(59, 1, '2025-10-29 10:56:21', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-29 10:56:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=59', 0, 'minecraft-mob', '', 0),
(60, 1, '2025-10-29 10:57:33', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-29 10:57:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=60', 0, 'minecraft-mob', '', 0),
(61, 1, '2025-10-29 11:20:05', '2025-10-29 11:20:05', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Mob Drops', 'mob_drops', 'publish', 'closed', 'closed', '', 'field_6901f42870db0', '', '', '2025-10-31 19:28:23', '2025-10-31 19:28:23', '', 51, 'http://localhost/wptest01/?post_type=acf-field&#038;p=61', 7, 'acf-field', '', 0),
(62, 1, '2025-10-29 11:20:05', '2025-10-29 11:20:05', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Breeding', 'breeding', 'publish', 'closed', 'closed', '', 'field_6901f67470db1', '', '', '2025-10-30 09:49:09', '2025-10-30 09:49:09', '', 61, 'http://localhost/wptest01/?post_type=acf-field&#038;p=62', 0, 'acf-field', '', 0),
(63, 1, '2025-10-29 11:20:05', '2025-10-29 11:20:05', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'On Dead', 'on_dead', 'publish', 'closed', 'closed', '', 'field_6901f7c270db2', '', '', '2025-10-31 08:59:52', '2025-10-31 08:59:52', '', 61, 'http://localhost/wptest01/?post_type=acf-field&#038;p=63', 1, 'acf-field', '', 0),
(65, 1, '2025-10-29 11:20:07', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-29 11:20:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=65', 0, 'minecraft-mob', '', 0),
(66, 1, '2025-10-29 11:22:23', '2025-10-29 11:22:23', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Dead drops', 'dead_drops', 'publish', 'closed', 'closed', '', 'field_6901f8c8453a3', '', '', '2025-10-31 08:59:52', '2025-10-31 08:59:52', '', 63, 'http://localhost/wptest01/?post_type=acf-field&#038;p=66', 0, 'acf-field', '', 0),
(69, 1, '2025-10-29 11:22:28', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-29 11:22:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=69', 0, 'minecraft-mob', '', 0),
(72, 1, '2025-10-29 11:29:03', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-29 11:29:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=72', 0, 'minecraft-mob', '', 0),
(73, 1, '2025-10-29 12:55:05', '2025-10-29 12:55:05', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Health, and feeding', 'health_and_feeding', 'publish', 'closed', 'closed', '', 'field_69020848a516e', '', '', '2025-10-31 19:28:23', '2025-10-31 19:28:23', '', 51, 'http://localhost/wptest01/?post_type=acf-field&#038;p=73', 8, 'acf-field', '', 0),
(74, 1, '2025-10-29 12:55:05', '2025-10-29 12:55:05', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Food', 'food', 'publish', 'closed', 'closed', '', 'field_6902099da516f', '', '', '2025-10-29 12:55:05', '2025-10-29 12:55:05', '', 73, 'http://localhost/wptest01/?post_type=acf-field&p=74', 0, 'acf-field', '', 0),
(75, 1, '2025-10-29 12:55:05', '2025-10-29 12:55:05', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Heals', 'heals', 'publish', 'closed', 'closed', '', 'field_690209a7a5170', '', '', '2025-10-31 18:57:39', '2025-10-31 18:57:39', '', 73, 'http://localhost/wptest01/?post_type=acf-field&#038;p=75', 2, 'acf-field', '', 0),
(77, 1, '2025-10-29 12:55:10', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-29 12:55:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=77', 0, 'minecraft-mob', '', 0),
(79, 1, '2025-10-29 13:46:10', '2025-10-29 13:46:10', 'a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:64:{s:8:\"Badlands\";s:8:\"Badlands\";s:15:\"Eroded Badlands\";s:15:\"Eroded Badlands\";s:15:\"Wooded Badlands\";s:15:\"Wooded Badlands\";s:6:\"Desert\";s:6:\"Desert\";s:6:\"Plains\";s:6:\"Plains\";s:16:\"Sunflower Plains\";s:16:\"Sunflower Plains\";s:6:\"Forest\";s:6:\"Forest\";s:13:\"Flower Forest\";s:13:\"Flower Forest\";s:24:\"Windswept Gravelly Hills\";s:24:\"Windswept Gravelly Hills\";s:16:\"Windswept Forest\";s:16:\"Windswept Forest\";s:15:\"Windswept Hills\";s:15:\"Windswept Hills\";s:12:\"Birch Forest\";s:12:\"Birch Forest\";s:23:\"Old Growth Birch Forest\";s:23:\"Old Growth Birch Forest\";s:11:\"Dark Forest\";s:11:\"Dark Forest\";s:6:\"Jungle\";s:6:\"Jungle\";s:13:\"Bamboo Jungle\";s:13:\"Bamboo Jungle\";s:13:\"Sparse Jungle\";s:13:\"Sparse Jungle\";s:5:\"Taiga\";s:5:\"Taiga\";s:11:\"Snowy Taiga\";s:11:\"Snowy Taiga\";s:23:\"Old Growth Spruce Taiga\";s:23:\"Old Growth Spruce Taiga\";s:21:\"Old Growth Pine Taiga\";s:21:\"Old Growth Pine Taiga\";s:5:\"Swamp\";s:5:\"Swamp\";s:14:\"Mangrove Swamp\";s:14:\"Mangrove Swamp\";s:7:\"Savanna\";s:7:\"Savanna\";s:17:\"Windswept Savanna\";s:17:\"Windswept Savanna\";s:15:\"Savanna Plateau\";s:15:\"Savanna Plateau\";s:12:\"Cherry Grove\";s:12:\"Cherry Grove\";s:5:\"Grove\";s:5:\"Grove\";s:6:\"Meadow\";s:6:\"Meadow\";s:11:\"Pale Garden\";s:11:\"Pale Garden\";s:12:\"Snowy Plains\";s:12:\"Snowy Plains\";s:12:\"Snowy Slopes\";s:12:\"Snowy Slopes\";s:10:\"Ice Spikes\";s:10:\"Ice Spikes\";s:12:\"Frozen Peaks\";s:12:\"Frozen Peaks\";s:12:\"Jagged Peaks\";s:12:\"Jagged Peaks\";s:11:\"Stony Peaks\";s:11:\"Stony Peaks\";s:11:\"Stony Shore\";s:11:\"Stony Shore\";s:5:\"Beach\";s:5:\"Beach\";s:11:\"Snowy Beach\";s:11:\"Snowy Beach\";s:5:\"River\";s:5:\"River\";s:12:\"Frozen River\";s:12:\"Frozen River\";s:5:\"Ocean\";s:5:\"Ocean\";s:10:\"Warm Ocean\";s:10:\"Warm Ocean\";s:14:\"Lukewarm Ocean\";s:14:\"Lukewarm Ocean\";s:10:\"Cold Ocean\";s:10:\"Cold Ocean\";s:12:\"Frozen Ocean\";s:12:\"Frozen Ocean\";s:10:\"Deep Ocean\";s:10:\"Deep Ocean\";s:19:\"Deep Lukewarm Ocean\";s:19:\"Deep Lukewarm Ocean\";s:15:\"Deep Cold Ocean\";s:15:\"Deep Cold Ocean\";s:17:\"Deep Frozen Ocean\";s:17:\"Deep Frozen Ocean\";s:15:\"Mushroom Fields\";s:15:\"Mushroom Fields\";s:24:\"Lush Caves (ondergronds)\";s:24:\"Lush Caves (ondergronds)\";s:29:\"Dripstone Caves (ondergronds)\";s:29:\"Dripstone Caves (ondergronds)\";s:23:\"Deep Dark (ondergronds)\";s:23:\"Deep Dark (ondergronds)\";s:13:\"Nether Wastes\";s:13:\"Nether Wastes\";s:14:\"Crimson Forest\";s:14:\"Crimson Forest\";s:13:\"Warped Forest\";s:13:\"Warped Forest\";s:16:\"Soul Sand Valley\";s:16:\"Soul Sand Valley\";s:13:\"Basalt Deltas\";s:13:\"Basalt Deltas\";s:14:\"The End (main)\";s:14:\"The End (main)\";s:13:\"End Highlands\";s:13:\"End Highlands\";s:12:\"End Midlands\";s:12:\"End Midlands\";s:11:\"End Barrens\";s:11:\"End Barrens\";s:17:\"Small End Islands\";s:17:\"Small End Islands\";}s:13:\"default_value\";a:0:{}s:13:\"return_format\";s:5:\"value\";s:12:\"allow_custom\";i:0;s:17:\"allow_in_bindings\";i:0;s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:11:\"save_custom\";i:0;s:25:\"custom_choice_button_text\";s:14:\"Add new choice\";}', 'Spawn Biome', 'spawn_biome', 'publish', 'closed', 'closed', '', 'field_690217e4b28ed', '', '', '2025-10-31 22:23:48', '2025-10-31 22:23:48', '', 51, 'http://localhost/wptest01/?post_type=acf-field&#038;p=79', 9, 'acf-field', '', 0),
(82, 1, '2025-10-29 13:46:21', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-29 13:46:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=82', 0, 'minecraft-mob', '', 0),
(83, 1, '2025-10-30 09:26:45', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 09:26:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=83', 0, 'minecraft-mob', '', 0),
(84, 1, '2025-10-30 09:33:11', '2025-10-30 09:33:11', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:3:\"Yes\";s:3:\"Yes\";s:2:\"No\";s:2:\"No\";}s:13:\"default_value\";s:2:\"No\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:17:\"allow_in_bindings\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'Is it tameable', 'is_it_tameable', 'publish', 'closed', 'closed', '', 'field_69032f99ee425', '', '', '2025-10-31 19:28:23', '2025-10-31 19:28:23', '', 51, 'http://localhost/wptest01/?post_type=acf-field&#038;p=84', 5, 'acf-field', '', 0),
(86, 1, '2025-10-30 09:33:15', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 09:33:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=86', 0, 'minecraft-mob', '', 0),
(87, 1, '2025-10-30 09:36:36', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 09:36:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=87', 0, 'minecraft-mob', '', 0),
(88, 1, '2025-10-30 09:36:57', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 09:36:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=88', 0, 'minecraft-mob', '', 0),
(89, 1, '2025-10-30 09:38:51', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 09:38:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=89', 0, 'minecraft-mob', '', 0),
(90, 1, '2025-10-30 09:40:27', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 09:40:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=90', 0, 'minecraft-mob', '', 0),
(91, 1, '2025-10-30 09:45:02', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 09:45:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=91', 0, 'minecraft-mob', '', 0),
(92, 1, '2025-10-30 09:49:13', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 09:49:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=92', 0, 'minecraft-mob', '', 0),
(93, 1, '2025-10-30 09:53:18', '2025-10-30 09:53:18', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Default Drop Chanche', 'default_drop_chanche', 'publish', 'closed', 'closed', '', 'field_6903354686b30', '', '', '2025-10-31 08:59:52', '2025-10-31 08:59:52', '', 63, 'http://localhost/wptest01/?post_type=acf-field&#038;p=93', 1, 'acf-field', '', 0),
(94, 1, '2025-10-30 10:01:33', '2025-10-30 10:01:33', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Variant info', 'variant_info', 'publish', 'closed', 'closed', '', 'field_6903376c68e2f', '', '', '2025-10-30 10:01:33', '2025-10-30 10:01:33', '', 56, 'http://localhost/wptest01/?post_type=acf-field&p=94', 2, 'acf-field', '', 0),
(95, 1, '2025-10-30 10:07:20', '2025-10-30 10:07:20', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Extra', 'extra', 'publish', 'closed', 'closed', '', 'field_690338406f963', '', '', '2025-10-30 19:38:23', '2025-10-30 19:38:23', '', 61, 'http://localhost/wptest01/?post_type=acf-field&#038;p=95', 2, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(96, 1, '2025-10-30 10:07:20', '2025-10-30 10:07:20', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Using', 'using', 'publish', 'closed', 'closed', '', 'field_690338796f964', '', '', '2025-10-30 19:38:23', '2025-10-30 19:38:23', '', 95, 'http://localhost/wptest01/?post_type=acf-field&#038;p=96', 1, 'acf-field', '', 0),
(97, 1, '2025-10-30 10:07:20', '2025-10-30 10:07:20', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Receive', 'receive', 'publish', 'closed', 'closed', '', 'field_6903388b6f965', '', '', '2025-10-30 19:38:23', '2025-10-30 19:38:23', '', 95, 'http://localhost/wptest01/?post_type=acf-field&#038;p=97', 3, 'acf-field', '', 0),
(98, 1, '2025-10-30 10:07:59', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 10:07:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=98', 0, 'minecraft-mob', '', 0),
(99, 1, '2025-10-30 10:28:08', '2025-10-30 10:28:08', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Mob health points', 'mob_health_points', 'publish', 'closed', 'closed', '', 'field_69033d91425b0', '', '', '2025-10-31 18:56:55', '2025-10-31 18:56:55', '', 51, 'http://localhost/wptest01/?post_type=acf-field&#038;p=99', 3, 'acf-field', '', 0),
(100, 1, '2025-10-30 19:11:24', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 19:11:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=100', 0, 'minecraft-mob', '', 0),
(101, 1, '2025-10-30 19:15:14', '2025-10-30 19:15:14', '', '150px-Cow_JE7_BE4', '', 'inherit', 'open', 'closed', '', '150px-cow_je7_be4', '', '', '2025-10-30 19:15:14', '2025-10-30 19:15:14', '', 100, 'http://localhost/wptest01/wp-content/uploads/2025/10/150px-Cow_JE7_BE4.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2025-10-30 19:17:42', '2025-10-30 19:17:42', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Behavior', 'behavior', 'publish', 'closed', 'closed', '', 'field_6903b9bf5ce14', '', '', '2025-10-31 18:56:55', '2025-10-31 18:56:55', '', 51, 'http://localhost/wptest01/?post_type=acf-field&#038;p=102', 4, 'acf-field', '', 0),
(103, 1, '2025-10-30 20:30:41', '2025-10-30 20:30:41', '<!-- wp:paragraph -->\n<p>A <strong>cow</strong> is a passive mob found in most grassy biomes and are a source of leather, beef, and milk. They have three variants based on the temperature of the biome they spawn in.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Minecraft Cow', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2025-10-30 20:30:41', '2025-10-30 20:30:41', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&#038;p=103', 0, 'minecraft-mob', '', 0),
(104, 1, '2025-10-30 19:22:15', '2025-10-30 19:22:15', '', '150px-Cold_Cow_JE1_BE1', '', 'inherit', 'open', 'closed', '', '150px-cold_cow_je1_be1', '', '', '2025-10-30 19:22:15', '2025-10-30 19:22:15', '', 103, 'http://localhost/wptest01/wp-content/uploads/2025/10/150px-Cold_Cow_JE1_BE1.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2025-10-30 19:28:22', '2025-10-30 19:28:22', '', '150px-Warm_Cow_JE1_BE1', '', 'inherit', 'open', 'closed', '', '150px-warm_cow_je1_be1', '', '', '2025-10-30 19:28:22', '2025-10-30 19:28:22', '', 103, 'http://localhost/wptest01/wp-content/uploads/2025/10/150px-Warm_Cow_JE1_BE1.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2025-10-30 19:31:26', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 19:31:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=106', 0, 'minecraft-mob', '', 0),
(107, 1, '2025-10-30 19:32:08', '2025-10-30 19:32:08', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Dead drops Image', 'dead_drops_image', 'publish', 'closed', 'closed', '', 'field_6903bd2329e48', '', '', '2025-10-31 08:59:52', '2025-10-31 08:59:52', '', 63, 'http://localhost/wptest01/?post_type=acf-field&#038;p=107', 2, 'acf-field', '', 0),
(108, 1, '2025-10-30 19:33:48', '2025-10-30 19:33:48', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Using image', 'using_image', 'publish', 'closed', 'closed', '', 'field_6903bd5ae98cb', '', '', '2025-10-30 19:38:23', '2025-10-30 19:38:23', '', 95, 'http://localhost/wptest01/?post_type=acf-field&#038;p=108', 0, 'acf-field', '', 0),
(109, 1, '2025-10-30 19:33:48', '2025-10-30 19:33:48', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Receive Image', 'receive_image', 'publish', 'closed', 'closed', '', 'field_6903bd82e98cc', '', '', '2025-10-30 19:38:23', '2025-10-30 19:38:23', '', 95, 'http://localhost/wptest01/?post_type=acf-field&#038;p=109', 2, 'acf-field', '', 0),
(110, 1, '2025-10-30 19:33:56', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 19:33:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=110', 0, 'minecraft-mob', '', 0),
(111, 1, '2025-10-30 20:12:57', '2025-10-30 20:12:57', '<!-- wp:paragraph -->\n<p>A cow is a passive mob found in most grassy biomes and are a source of leather, beef, and milk. They have three variants based on the temperature of the biome they spawn in.</p>\n<!-- /wp:paragraph -->', 'Minecraft Cow', '', 'publish', 'closed', 'closed', '', 'minecraft-cow', '', '', '2025-11-03 20:08:01', '2025-11-03 20:08:01', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&#038;p=111', 0, 'minecraft-mob', '', 0),
(114, 1, '2025-10-30 19:48:32', '2025-10-30 19:48:32', '', 'Bucket_JE2_BE2', '', 'inherit', 'open', 'closed', '', 'bucket_je2_be2', '', '', '2025-10-30 19:48:32', '2025-10-30 19:48:32', '', 111, 'http://localhost/wptest01/wp-content/uploads/2025/10/Bucket_JE2_BE2.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2025-10-30 19:49:19', '2025-10-30 19:49:19', '', 'Milk_Bucket_JE2_BE2', '', 'inherit', 'open', 'closed', '', 'milk_bucket_je2_be2', '', '', '2025-10-30 19:49:19', '2025-10-30 19:49:19', '', 111, 'http://localhost/wptest01/wp-content/uploads/2025/10/Milk_Bucket_JE2_BE2.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2025-10-30 20:07:20', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 20:07:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-update&p=116', 0, 'minecraft-update', '', 0),
(117, 1, '2025-10-30 20:13:26', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-10-30 20:13:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?p=117', 0, 'post', '', 0),
(120, 1, '2025-10-30 20:31:23', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 20:31:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=120', 0, 'minecraft-mob', '', 0),
(121, 1, '2025-10-30 20:41:54', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 20:41:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=121', 0, 'minecraft-mob', '', 0),
(122, 1, '2025-10-30 20:44:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-10-30 20:44:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?p=122', 1, 'nav_menu_item', '', 0),
(123, 1, '2025-10-30 21:14:02', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 21:14:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=123', 0, 'minecraft-mob', '', 0),
(124, 1, '2025-10-30 21:18:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-10-30 21:18:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?p=124', 1, 'nav_menu_item', '', 0),
(125, 1, '2025-10-30 21:22:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-10-30 21:22:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?p=125', 1, 'nav_menu_item', '', 0),
(126, 1, '2025-10-30 21:22:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-10-30 21:22:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?p=126', 1, 'nav_menu_item', '', 0),
(127, 1, '2025-10-30 21:51:19', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-10-30 21:51:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&p=127', 0, 'minecraft-mob', '', 0),
(128, 1, '2025-10-31 09:05:17', '2025-10-31 09:05:17', '', 'Leather_JE2_BE2', '', 'inherit', 'open', 'closed', '', 'leather_je2_be2', '', '', '2025-10-31 09:05:17', '2025-10-31 09:05:17', '', 111, 'http://localhost/wptest01/wp-content/uploads/2025/10/Leather_JE2_BE2.png', 0, 'attachment', 'image/png', 0),
(129, 1, '2025-10-31 09:05:43', '2025-10-31 09:05:43', '', 'Raw_Beef_JE4_BE3', '', 'inherit', 'open', 'closed', '', 'raw_beef_je4_be3', '', '', '2025-10-31 09:05:43', '2025-10-31 09:05:43', '', 111, 'http://localhost/wptest01/wp-content/uploads/2025/10/Raw_Beef_JE4_BE3.png', 0, 'attachment', 'image/png', 0),
(131, 1, '2025-10-31 10:22:46', '2025-10-31 10:22:46', '', 'Minecraft mobs', '', 'publish', 'closed', 'closed', '', 'minecraft-mobs', '', '', '2025-10-31 10:22:46', '2025-10-31 10:22:46', '', 0, 'http://localhost/wptest01/?p=131', 3, 'nav_menu_item', '', 0),
(132, 1, '2025-10-31 18:56:55', '2025-10-31 18:56:55', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Food image', 'food_image', 'publish', 'closed', 'closed', '', 'field_69050664b1aa7', '', '', '2025-10-31 19:28:23', '2025-10-31 19:28:23', '', 73, 'http://localhost/wptest01/?post_type=acf-field&#038;p=132', 1, 'acf-field', '', 0),
(133, 1, '2025-10-31 18:58:02', '2025-10-31 18:58:02', '', 'Wheat_JE2_BE2', '', 'inherit', 'open', 'closed', '', 'wheat_je2_be2', '', '', '2025-10-31 18:58:02', '2025-10-31 18:58:02', '', 111, 'http://localhost/wptest01/wp-content/uploads/2025/10/Wheat_JE2_BE2.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2025-11-02 20:11:48', '2025-11-02 20:11:48', '<!-- wp:paragraph -->\n<p>An<strong> axolotl </strong>is a passive aquatic mob found in lush caves that hunts most other aquatic mobs, and can assist players with aquatic combat and grant them Regeneration. They can also be carried around in a bucket.</p>\n<!-- /wp:paragraph -->', 'Minecraft Axolotl', '', 'publish', 'closed', 'closed', '', 'minecraft-axolotl', '', '', '2025-11-02 20:31:08', '2025-11-02 20:31:08', '', 0, 'http://localhost/wptest01/?post_type=minecraft-mob&#038;p=134', 0, 'minecraft-mob', '', 0),
(135, 1, '2025-11-02 19:30:14', '2025-11-02 19:30:14', '', '150px-Axolotl_Idle_Floor_Underwater', '', 'inherit', 'open', 'closed', '', '150px-axolotl_idle_floor_underwater', '', '', '2025-11-02 19:30:14', '2025-11-02 19:30:14', '', 134, 'http://localhost/wptest01/wp-content/uploads/2025/11/150px-Axolotl_Idle_Floor_Underwater.gif', 0, 'attachment', 'image/gif', 0),
(136, 1, '2025-11-02 19:53:06', '2025-11-02 19:53:06', '', '150px-Wild_Axolotl_Idle_Floor_Underwater (1)', '', 'inherit', 'open', 'closed', '', '150px-wild_axolotl_idle_floor_underwater-1', '', '', '2025-11-02 19:53:06', '2025-11-02 19:53:06', '', 134, 'http://localhost/wptest01/wp-content/uploads/2025/11/150px-Wild_Axolotl_Idle_Floor_Underwater-1.gif', 0, 'attachment', 'image/gif', 0),
(137, 1, '2025-11-02 19:54:43', '2025-11-02 19:54:43', '', '150px-Gold_Axolotl_Idle_Floor_Underwater', '', 'inherit', 'open', 'closed', '', '150px-gold_axolotl_idle_floor_underwater', '', '', '2025-11-02 19:54:43', '2025-11-02 19:54:43', '', 134, 'http://localhost/wptest01/wp-content/uploads/2025/11/150px-Gold_Axolotl_Idle_Floor_Underwater.gif', 0, 'attachment', 'image/gif', 0),
(138, 1, '2025-11-02 19:56:07', '2025-11-02 19:56:07', '', '150px-Cyan_Axolotl_Idle_Floor_Underwater', '', 'inherit', 'open', 'closed', '', '150px-cyan_axolotl_idle_floor_underwater', '', '', '2025-11-02 19:56:07', '2025-11-02 19:56:07', '', 134, 'http://localhost/wptest01/wp-content/uploads/2025/11/150px-Cyan_Axolotl_Idle_Floor_Underwater.gif', 0, 'attachment', 'image/gif', 0),
(139, 1, '2025-11-02 19:57:36', '2025-11-02 19:57:36', '', '150px-Blue_Axolotl_Idle_Floor_Underwater', '', 'inherit', 'open', 'closed', '', '150px-blue_axolotl_idle_floor_underwater', '', '', '2025-11-02 19:57:36', '2025-11-02 19:57:36', '', 134, 'http://localhost/wptest01/wp-content/uploads/2025/11/150px-Blue_Axolotl_Idle_Floor_Underwater.gif', 0, 'attachment', 'image/gif', 0),
(140, 1, '2025-11-02 20:10:44', '2025-11-02 20:10:44', '', 'Bucket_of_Tropical_Fish_JE3_BE2', '', 'inherit', 'open', 'closed', '', 'bucket_of_tropical_fish_je3_be2', '', '', '2025-11-02 20:10:44', '2025-11-02 20:10:44', '', 134, 'http://localhost/wptest01/wp-content/uploads/2025/11/Bucket_of_Tropical_Fish_JE3_BE2.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Niet gecategoriseerd', 'niet-gecategoriseerd', 0),
(2, 'hoofdmenu', 'hoofdmenu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(38, 2, 0),
(40, 2, 0),
(131, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'NoaPhilene'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"f90915c8eace9a73b7c2adcf22228360640d2ed338b9bb7629dc0484a6a17b0f\";a:4:{s:10:\"expiration\";i:1762283212;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0\";s:5:\"login\";i:1762110412;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '117'),
(18, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(19, 1, 'acf_user_settings', 'a:3:{s:19:\"post-type-first-run\";b:1;s:20:\"taxonomies-first-run\";b:1;s:23:\"options-pages-first-run\";b:1;}'),
(20, 1, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(21, 1, 'metaboxhidden_acf-post-type', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(22, 1, 'wp_persisted_preferences', 'a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:0;}s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:23:\"metaBoxesMainOpenHeight\";i:653;}s:9:\"_modified\";s:24:\"2025-11-02T19:29:52.103Z\";}'),
(23, 1, 'wp_user-settings', 'libraryContent=browse'),
(24, 1, 'wp_user-settings-time', '1761644678'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(27, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(28, 1, 'nav_menu_recently_edited', '2'),
(29, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(30, 1, 'manageedit-acf-ui-options-pagecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(31, 1, 'closedpostboxes_minecraft-mob', 'a:0:{}'),
(32, 1, 'metaboxhidden_minecraft-mob', 'a:0:{}'),
(33, 1, 'meta-box-order_minecraft-mob', 'a:4:{s:6:\"normal\";s:23:\"acf-group_6901e3bd45a12\";s:8:\"advanced\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";}'),
(34, 1, 'meta-box-order_minecraft-update', 'a:4:{s:6:\"normal\";s:23:\"acf-group_68ef9eeda09ad\";s:8:\"advanced\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";}'),
(35, 1, 'wp_wpsc_dismissed_boost_banner', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'NoaPhilene', '$wp$2y$10$UDz7pkuEd.hCRQ.HiqPkJeP9fPJI1qttGyeW3bWXDp.zTniyu2DLO', 'noaphilene', 'philenevanmil@gmail.com', 'http://localhost/wptest01', '2025-10-06 08:36:46', '', 0, 'NoaPhilene');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_gallery_galleries`
--
ALTER TABLE `wp_gallery_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_gallery_galleriesslides`
--
ALTER TABLE `wp_gallery_galleriesslides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_id` (`gallery_id`),
  ADD KEY `slide_id` (`slide_id`);

--
-- Indexes for table `wp_gallery_slides`
--
ALTER TABLE `wp_gallery_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_gallery_galleries`
--
ALTER TABLE `wp_gallery_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_gallery_galleriesslides`
--
ALTER TABLE `wp_gallery_galleriesslides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_gallery_slides`
--
ALTER TABLE `wp_gallery_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=974;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
