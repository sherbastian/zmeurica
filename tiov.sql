-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2018 at 06:22 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiov`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-23 14:13:11', '2017-12-23 14:13:11', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 60, 'WooCommerce', 'woocommerce@tiov.dev', '', '', '2017-12-23 16:10:27', '2017-12-23 16:10:27', 'Awaiting check payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 60, 'admin', 'cstn.serban@gmail.com', '', '', '2017-12-23 16:14:52', '2017-12-23 16:14:52', 'Order details manually sent to customer.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 68, 'WooCommerce', 'woocommerce@tiov.localhost', '', '', '2018-01-09 19:21:23', '2018-01-09 17:21:23', 'Awaiting check payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://tiov.localhost', 'yes'),
(2, 'home', 'http://tiov.localhost', 'yes'),
(3, 'blogname', 'Zmeurică', 'yes'),
(4, 'blogdescription', 'Totul despre zmeură', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'cstn.serban@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:158:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=26&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:23:\"elementor/elementor.php\";i:1;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:2;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '2', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'shop-isle', 'yes'),
(41, 'stylesheet', 'shop-isle', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'customer', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '26', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:109:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"sidebar-footer-area-1\";a:0:{}s:21:\"sidebar-footer-area-2\";a:0:{}s:21:\"sidebar-footer-area-3\";a:0:{}s:21:\"sidebar-footer-area-4\";a:0:{}s:30:\"shop-isle-sidebar-shop-archive\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:9:{i:1515522016;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1515542400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515550392;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1515552670;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1515593606;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515594152;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515595870;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1517486400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:5:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}s:12:\"header_image\";s:71:\"http://tiov.dev/wp-content/uploads/2017/12/cropped-raspberry-header.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:33;s:3:\"url\";s:71:\"http://tiov.dev/wp-content/uploads/2017/12/cropped-raspberry-header.jpg\";s:13:\"thumbnail_url\";s:71:\"http://tiov.dev/wp-content/uploads/2017/12/cropped-raspberry-header.jpg\";s:6:\"height\";i:1198;s:5:\"width\";i:2000;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1514040839;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(124, 'can_compress_scripts', '1', 'no'),
(139, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(166, '_elementor_installed_time', '1514040025', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(167, 'elementor_remote_info_templates_data', 'a:129:{i:0;a:12:{s:2:\"id\";s:4:\"2402\";s:5:\"title\";s:32:\"Homepage &#8211; Interior Design\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2017/09/Interior.png\";s:12:\"tmpl_created\";s:10:\"1506441447\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/homepage-interior-design/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"3\";s:16:\"popularity_index\";s:2:\"46\";s:11:\"trend_index\";s:2:\"34\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:1;a:12:{s:2:\"id\";s:3:\"147\";s:5:\"title\";s:16:\"Homepage – App\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0004.png\";s:12:\"tmpl_created\";s:10:\"1470829868\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/homepage-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:18:\"[\"App\",\"Homepage\"]\";s:10:\"menu_order\";s:1:\"4\";s:16:\"popularity_index\";s:1:\"1\";s:11:\"trend_index\";s:1:\"1\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:2;a:12:{s:2:\"id\";s:3:\"777\";s:5:\"title\";s:28:\"Homepage &#8211; Coffee Shop\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/01/rest-home.jpg\";s:12:\"tmpl_created\";s:10:\"1485273092\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/homepage-coffee-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:41:\"[\"Coffee\",\"Homepage\",\"Restaurant\",\"Shop\"]\";s:10:\"menu_order\";s:1:\"5\";s:16:\"popularity_index\";s:2:\"38\";s:11:\"trend_index\";s:2:\"37\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:3;a:12:{s:2:\"id\";s:4:\"2404\";s:5:\"title\";s:24:\"Homepage &#8211; Product\";s:9:\"thumbnail\";s:68:\"https://library.elementor.com/wp-content/uploads/2017/09/product.png\";s:12:\"tmpl_created\";s:10:\"1506441452\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/homepage-product/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:1:\"6\";s:16:\"popularity_index\";s:2:\"47\";s:11:\"trend_index\";s:2:\"33\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:4;a:12:{s:2:\"id\";s:3:\"519\";s:5:\"title\";s:20:\"Homepage – Fitness\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0023.png\";s:12:\"tmpl_created\";s:10:\"1477388808\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/homepage-fitness/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:45:\"[\"Fitness\",\"Gym\",\"Health\",\"Homepage\",\"Sport\"]\";s:10:\"menu_order\";s:1:\"7\";s:16:\"popularity_index\";s:1:\"5\";s:11:\"trend_index\";s:1:\"5\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:5;a:12:{s:2:\"id\";s:3:\"492\";s:5:\"title\";s:21:\"Homepage – Law firm\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0024.png\";s:12:\"tmpl_created\";s:10:\"1477388365\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/homepage-law-firm/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:25:\"[\"Firm\",\"Homepage\",\"Law\"]\";s:10:\"menu_order\";s:1:\"8\";s:16:\"popularity_index\";s:1:\"4\";s:11:\"trend_index\";s:1:\"4\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:6;a:12:{s:2:\"id\";s:3:\"225\";s:5:\"title\";s:23:\"Homepage – Restaurant\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0016.png\";s:12:\"tmpl_created\";s:10:\"1470829872\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/homepage-restaurant/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:25:\"[\"Homepage\",\"Restaurant\"]\";s:10:\"menu_order\";s:1:\"9\";s:16:\"popularity_index\";s:1:\"2\";s:11:\"trend_index\";s:1:\"3\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:7;a:12:{s:2:\"id\";s:4:\"3451\";s:5:\"title\";s:39:\"Homepage &#8211; Goodness meal services\";s:9:\"thumbnail\";s:84:\"https://library.elementor.com/wp-content/uploads/2017/11/goodness-featured-image.png\";s:12:\"tmpl_created\";s:10:\"1512054116\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:121:\"https://library.elementor.com/homepage-goodness-meal-services/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"10\";s:16:\"popularity_index\";s:3:\"107\";s:11:\"trend_index\";s:2:\"47\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:8;a:12:{s:2:\"id\";s:4:\"2152\";s:5:\"title\";s:26:\"Homepage &#8211; Cake Shop\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/07/cake-home.png\";s:12:\"tmpl_created\";s:10:\"1499774132\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/homepage-cake-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:39:\"[\"Cake\",\"Homepage\",\"Restaurant\",\"Shop\"]\";s:10:\"menu_order\";s:2:\"11\";s:16:\"popularity_index\";s:2:\"67\";s:11:\"trend_index\";s:2:\"55\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:9;a:12:{s:2:\"id\";s:4:\"1068\";s:5:\"title\";s:27:\"Homepage &#8211; Copywriter\";s:9:\"thumbnail\";s:71:\"https://library.elementor.com/wp-content/uploads/2017/03/copywriter.png\";s:12:\"tmpl_created\";s:10:\"1488805928\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/homepage-copywriter/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:25:\"[\"Copywriter\",\"Homepage\"]\";s:10:\"menu_order\";s:2:\"12\";s:16:\"popularity_index\";s:2:\"42\";s:11:\"trend_index\";s:2:\"41\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:10;a:12:{s:2:\"id\";s:3:\"181\";s:5:\"title\";s:23:\"Homepage &#8211; Agency\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0019.png\";s:12:\"tmpl_created\";s:10:\"1470826567\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/homepage-agency/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:32:\"[\"Agency\",\"Creative\",\"Homepage\"]\";s:10:\"menu_order\";s:2:\"13\";s:16:\"popularity_index\";s:1:\"3\";s:11:\"trend_index\";s:1:\"2\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:11;a:12:{s:2:\"id\";s:3:\"463\";s:5:\"title\";s:18:\"Homepage – Study\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0022.png\";s:12:\"tmpl_created\";s:10:\"1477388340\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/homepage-study/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:32:\"[\"Education\",\"Homepage\",\"Study\"]\";s:10:\"menu_order\";s:2:\"14\";s:16:\"popularity_index\";s:1:\"7\";s:11:\"trend_index\";s:1:\"8\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:12;a:12:{s:2:\"id\";s:4:\"2813\";s:5:\"title\";s:32:\"Homepage &#8211; Creative Agency\";s:9:\"thumbnail\";s:90:\"https://library.elementor.com/wp-content/uploads/2017/11/Creative-Agency-–-Home-Page.png\";s:12:\"tmpl_created\";s:10:\"1509615049\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/homepage-creative-agency/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:32:\"[\"Agency\",\"Creative\",\"Homepage\"]\";s:10:\"menu_order\";s:2:\"15\";s:16:\"popularity_index\";s:2:\"48\";s:11:\"trend_index\";s:2:\"35\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:13;a:12:{s:2:\"id\";s:3:\"728\";s:5:\"title\";s:33:\"Homepage &#8211; Delivery Company\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/01/delivery-company-home-page.jpg\";s:12:\"tmpl_created\";s:10:\"1485269993\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/homepage-delivery-company/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:23:\"[\"Delivery\",\"Homepage\"]\";s:10:\"menu_order\";s:2:\"16\";s:16:\"popularity_index\";s:2:\"41\";s:11:\"trend_index\";s:2:\"54\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:14;a:12:{s:2:\"id\";s:4:\"2403\";s:5:\"title\";s:29:\"Homepage &#8211; Luxury Hotel\";s:9:\"thumbnail\";s:66:\"https://library.elementor.com/wp-content/uploads/2017/09/Hotel.png\";s:12:\"tmpl_created\";s:10:\"1506441428\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/homepage-luxury-hotel/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"17\";s:16:\"popularity_index\";s:2:\"73\";s:11:\"trend_index\";s:2:\"70\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:15;a:12:{s:2:\"id\";s:4:\"1903\";s:5:\"title\";s:20:\"One Page &#8211; Spa\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2017/06/spa.png\";s:12:\"tmpl_created\";s:10:\"1496822325\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/one-page-spa/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"18\";s:16:\"popularity_index\";s:2:\"49\";s:11:\"trend_index\";s:2:\"48\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:16;a:12:{s:2:\"id\";s:4:\"2123\";s:5:\"title\";s:33:\"One Page &#8211; Architect Office\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/06/architect.png\";s:12:\"tmpl_created\";s:10:\"1499772989\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/one-page-architect-office/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"19\";s:16:\"popularity_index\";s:2:\"16\";s:11:\"trend_index\";s:1:\"7\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:17;a:12:{s:2:\"id\";s:4:\"1888\";s:5:\"title\";s:32:\"One Page &#8211; Creative Meetup\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2017/06/creative-meetup.png\";s:12:\"tmpl_created\";s:10:\"1496822319\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/one-page-creative-meetup/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"20\";s:16:\"popularity_index\";s:2:\"50\";s:11:\"trend_index\";s:2:\"50\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:18;a:12:{s:2:\"id\";s:4:\"1880\";s:5:\"title\";s:24:\"One Page &#8211; Wedding\";s:9:\"thumbnail\";s:68:\"https://library.elementor.com/wp-content/uploads/2017/06/wedding.png\";s:12:\"tmpl_created\";s:10:\"1496822317\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/one-page-wedding/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"21\";s:16:\"popularity_index\";s:2:\"98\";s:11:\"trend_index\";s:3:\"112\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:19;a:12:{s:2:\"id\";s:4:\"1891\";s:5:\"title\";s:35:\"One Page &#8211; Textile Convention\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/06/textile-meetup.png\";s:12:\"tmpl_created\";s:10:\"1496822323\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:117:\"https://library.elementor.com/one-page-textile-convention/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"22\";s:16:\"popularity_index\";s:2:\"89\";s:11:\"trend_index\";s:2:\"78\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:20;a:12:{s:2:\"id\";s:4:\"1885\";s:5:\"title\";s:29:\"One Page &#8211; Yacht Rental\";s:9:\"thumbnail\";s:71:\"https://library.elementor.com/wp-content/uploads/2017/06/yacht-home.png\";s:12:\"tmpl_created\";s:10:\"1496822321\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/one-page-yacht-rental/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"23\";s:16:\"popularity_index\";s:2:\"45\";s:11:\"trend_index\";s:2:\"53\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:21;a:12:{s:2:\"id\";s:4:\"2723\";s:5:\"title\";s:34:\"Portfolio &#8211; Graphic Designer\";s:9:\"thumbnail\";s:91:\"https://library.elementor.com/wp-content/uploads/2017/11/Graphic-Designer-–-Portfolio.png\";s:12:\"tmpl_created\";s:10:\"1509633883\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/portfolio-graphic-designer/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"24\";s:16:\"popularity_index\";s:2:\"71\";s:11:\"trend_index\";s:2:\"36\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:22;a:12:{s:2:\"id\";s:4:\"2145\";s:5:\"title\";s:30:\"About &#8211; Delivery Compony\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/07/delivery-about.png\";s:12:\"tmpl_created\";s:10:\"1499774125\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/about-delivery-compony/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"25\";s:16:\"popularity_index\";s:2:\"83\";s:11:\"trend_index\";s:2:\"83\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:23;a:12:{s:2:\"id\";s:4:\"2155\";s:5:\"title\";s:23:\"About &#8211; Cake Shop\";s:9:\"thumbnail\";s:71:\"https://library.elementor.com/wp-content/uploads/2017/07/cake-about.png\";s:12:\"tmpl_created\";s:10:\"1499774130\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/about-cake-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"26\";s:16:\"popularity_index\";s:3:\"101\";s:11:\"trend_index\";s:2:\"93\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:24;a:12:{s:2:\"id\";s:4:\"1085\";s:5:\"title\";s:21:\"About &#8211; Startup\";s:9:\"thumbnail\";s:68:\"https://library.elementor.com/wp-content/uploads/2017/03/Startup.png\";s:12:\"tmpl_created\";s:10:\"1488810874\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/about-startup/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:19:\"[\"About\",\"Startup\"]\";s:10:\"menu_order\";s:2:\"27\";s:16:\"popularity_index\";s:1:\"6\";s:11:\"trend_index\";s:1:\"6\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:25;a:12:{s:2:\"id\";s:3:\"143\";s:5:\"title\";s:18:\"About – Personal\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0010.png\";s:12:\"tmpl_created\";s:10:\"1470820447\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/about-personal/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:20:\"[\"About\",\"Personal\"]\";s:10:\"menu_order\";s:2:\"28\";s:16:\"popularity_index\";s:2:\"14\";s:11:\"trend_index\";s:2:\"17\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:26;a:12:{s:2:\"id\";s:3:\"101\";s:5:\"title\";s:16:\"About &#8211; CV\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0018.png\";s:12:\"tmpl_created\";s:10:\"1470829785\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:98:\"https://library.elementor.com/about-cv/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"29\";s:16:\"popularity_index\";s:2:\"21\";s:11:\"trend_index\";s:2:\"15\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:27;a:12:{s:2:\"id\";s:3:\"140\";s:5:\"title\";s:21:\"About – Art Gallery\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0009.png\";s:12:\"tmpl_created\";s:10:\"1470820463\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/about-art-gallery/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:25:\"[\"About\",\"Art\",\"Gallery\"]\";s:10:\"menu_order\";s:2:\"30\";s:16:\"popularity_index\";s:2:\"12\";s:11:\"trend_index\";s:2:\"11\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:28;a:12:{s:2:\"id\";s:3:\"213\";s:5:\"title\";s:22:\"About – Architecture\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0008.png\";s:12:\"tmpl_created\";s:10:\"1470829766\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/about-architecture/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:24:\"[\"About\",\"Architecture\"]\";s:10:\"menu_order\";s:2:\"31\";s:16:\"popularity_index\";s:2:\"10\";s:11:\"trend_index\";s:1:\"9\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:29;a:12:{s:2:\"id\";s:4:\"2802\";s:5:\"title\";s:38:\"Portfolio &#8211; Fashion Photographer\";s:9:\"thumbnail\";s:95:\"https://library.elementor.com/wp-content/uploads/2017/11/Fashion-photographer-–-Portfolio.png\";s:12:\"tmpl_created\";s:10:\"1509615440\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:120:\"https://library.elementor.com/portfolio-fashion-photographer/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"32\";s:16:\"popularity_index\";s:2:\"93\";s:11:\"trend_index\";s:2:\"42\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:30;a:12:{s:2:\"id\";s:4:\"2828\";s:5:\"title\";s:35:\"Landing Page &#8211; Law Convention\";s:9:\"thumbnail\";s:92:\"https://library.elementor.com/wp-content/uploads/2017/11/Law-Convention-–-Landing-Page.png\";s:12:\"tmpl_created\";s:10:\"1509631636\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:117:\"https://library.elementor.com/landing-page-law-convention/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:35:\"[\"Convention\",\"Landing Page\",\"Law\"]\";s:10:\"menu_order\";s:2:\"33\";s:16:\"popularity_index\";s:3:\"117\";s:11:\"trend_index\";s:2:\"66\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:31;a:12:{s:2:\"id\";s:4:\"1461\";s:5:\"title\";s:28:\"Landing Page &#8211; Ebook 1\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Ebook-1.png\";s:12:\"tmpl_created\";s:10:\"1494352121\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-ebook-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"34\";s:16:\"popularity_index\";s:2:\"66\";s:11:\"trend_index\";s:2:\"62\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:32;a:12:{s:2:\"id\";s:4:\"1460\";s:5:\"title\";s:28:\"Landing Page &#8211; Ebook 2\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Ebook-2.png\";s:12:\"tmpl_created\";s:10:\"1494352124\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-ebook-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"35\";s:16:\"popularity_index\";s:2:\"64\";s:11:\"trend_index\";s:2:\"72\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:33;a:12:{s:2:\"id\";s:4:\"1459\";s:5:\"title\";s:28:\"Landing Page &#8211; Ebook 3\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Ebook-3.png\";s:12:\"tmpl_created\";s:10:\"1494352125\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-ebook-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"36\";s:16:\"popularity_index\";s:2:\"57\";s:11:\"trend_index\";s:2:\"71\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:34;a:12:{s:2:\"id\";s:4:\"1052\";s:5:\"title\";s:33:\"Landing Page &#8211; Mobile App 1\";s:9:\"thumbnail\";s:64:\"https://library.elementor.com/wp-content/uploads/2017/03/app.png\";s:12:\"tmpl_created\";s:10:\"1488810873\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/landing-page-mobile-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"37\";s:16:\"popularity_index\";s:2:\"19\";s:11:\"trend_index\";s:2:\"19\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:35;a:12:{s:2:\"id\";s:4:\"1503\";s:5:\"title\";s:33:\"Landing Page &#8211; Mobile App 2\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-app1.png\";s:12:\"tmpl_created\";s:10:\"1494352113\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-mobile-app-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"38\";s:16:\"popularity_index\";s:2:\"56\";s:11:\"trend_index\";s:2:\"52\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:36;a:12:{s:2:\"id\";s:4:\"1504\";s:5:\"title\";s:33:\"Landing Page &#8211; Mobile App 3\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-app2.png\";s:12:\"tmpl_created\";s:10:\"1494352112\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-mobile-app-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"39\";s:16:\"popularity_index\";s:2:\"58\";s:11:\"trend_index\";s:2:\"64\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:37;a:12:{s:2:\"id\";s:4:\"1505\";s:5:\"title\";s:33:\"Landing Page &#8211; Mobile App 4\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-app3.png\";s:12:\"tmpl_created\";s:10:\"1494352110\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-mobile-app-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"40\";s:16:\"popularity_index\";s:2:\"78\";s:11:\"trend_index\";s:2:\"90\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:38;a:12:{s:2:\"id\";s:3:\"726\";s:5:\"title\";s:33:\"Landing Page &#8211; Conference 1\";s:9:\"thumbnail\";s:84:\"https://library.elementor.com/wp-content/uploads/2017/01/convention-landing-page.jpg\";s:12:\"tmpl_created\";s:10:\"1485270062\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/landing-page-conference/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"41\";s:16:\"popularity_index\";s:2:\"79\";s:11:\"trend_index\";s:3:\"121\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:39;a:12:{s:2:\"id\";s:4:\"1613\";s:5:\"title\";s:29:\"Landing Page – Conference 2\";s:9:\"thumbnail\";s:109:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-International-Womens-Day-Conference.png\";s:12:\"tmpl_created\";s:10:\"1494352129\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-conference-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"42\";s:16:\"popularity_index\";s:2:\"95\";s:11:\"trend_index\";s:2:\"74\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:40;a:12:{s:2:\"id\";s:4:\"1612\";s:5:\"title\";s:29:\"Landing Page – Conference 3\";s:9:\"thumbnail\";s:89:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Tech-Conference.png\";s:12:\"tmpl_created\";s:10:\"1494352127\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-conference-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"43\";s:16:\"popularity_index\";s:3:\"102\";s:11:\"trend_index\";s:2:\"80\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:41;a:12:{s:2:\"id\";s:4:\"1614\";s:5:\"title\";s:29:\"Landing Page – Conference 4\";s:9:\"thumbnail\";s:99:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Sustainability-Conference.png\";s:12:\"tmpl_created\";s:10:\"1494352131\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-conference-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"44\";s:16:\"popularity_index\";s:2:\"76\";s:11:\"trend_index\";s:2:\"99\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:42;a:12:{s:2:\"id\";s:3:\"906\";s:5:\"title\";s:29:\"Landing Page &#8211;  Coacher\";s:9:\"thumbnail\";s:80:\"https://library.elementor.com/wp-content/uploads/2017/02/Landin-Page-Coacher.png\";s:12:\"tmpl_created\";s:10:\"1494352066\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-coacher/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"45\";s:16:\"popularity_index\";s:2:\"51\";s:11:\"trend_index\";s:2:\"60\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:43;a:12:{s:2:\"id\";s:3:\"955\";s:5:\"title\";s:31:\"Landing Page &#8211; Law Office\";s:9:\"thumbnail\";s:84:\"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Law-Office.png\";s:12:\"tmpl_created\";s:10:\"1494352069\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/landing-page-law-office/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:31:\"[\"Landing Page\",\"Law\",\"Office\"]\";s:10:\"menu_order\";s:2:\"46\";s:16:\"popularity_index\";s:2:\"52\";s:11:\"trend_index\";s:2:\"43\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:44;a:12:{s:2:\"id\";s:3:\"879\";s:5:\"title\";s:41:\"Landing Page &#8211; Financial Consultant\";s:9:\"thumbnail\";s:94:\"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Financial-consultant.png\";s:12:\"tmpl_created\";s:10:\"1494352064\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:123:\"https://library.elementor.com/landing-page-financial-consultant/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"47\";s:16:\"popularity_index\";s:2:\"54\";s:11:\"trend_index\";s:2:\"65\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:45;a:12:{s:2:\"id\";s:3:\"926\";s:5:\"title\";s:33:\"Landing Page &#8211; Private Chef\";s:9:\"thumbnail\";s:86:\"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Private-Chef.png\";s:12:\"tmpl_created\";s:10:\"1494352068\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-private-chef/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"48\";s:16:\"popularity_index\";s:2:\"82\";s:11:\"trend_index\";s:2:\"68\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:46;a:12:{s:2:\"id\";s:3:\"855\";s:5:\"title\";s:37:\"Landing Page &#8211; Personal Trainer\";s:9:\"thumbnail\";s:90:\"https://library.elementor.com/wp-content/uploads/2017/02/Landing-Page-Personal-Trainer.png\";s:12:\"tmpl_created\";s:10:\"1494352061\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:119:\"https://library.elementor.com/landing-page-personal-trainer/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"49\";s:16:\"popularity_index\";s:2:\"75\";s:11:\"trend_index\";s:2:\"59\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:47;a:12:{s:2:\"id\";s:3:\"974\";s:5:\"title\";s:28:\"Landing Page &#8211; Stylist\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/03/Landing-Page-Stylist.png\";s:12:\"tmpl_created\";s:10:\"1494352071\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-stylist/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"50\";s:16:\"popularity_index\";s:2:\"90\";s:11:\"trend_index\";s:2:\"87\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:48;a:12:{s:2:\"id\";s:4:\"1032\";s:5:\"title\";s:27:\"Landing Page &#8211; Agency\";s:9:\"thumbnail\";s:67:\"https://library.elementor.com/wp-content/uploads/2017/03/Agency.png\";s:12:\"tmpl_created\";s:10:\"1488810866\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/landing-page-agency/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"51\";s:16:\"popularity_index\";s:2:\"62\";s:11:\"trend_index\";s:3:\"101\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:49;a:12:{s:2:\"id\";s:4:\"1634\";s:5:\"title\";s:33:\"Landing Page &#8211; Chiropractor\";s:9:\"thumbnail\";s:86:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Chiropractor.png\";s:12:\"tmpl_created\";s:10:\"1494352119\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/landing-page-chiropractor/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"52\";s:16:\"popularity_index\";s:2:\"86\";s:11:\"trend_index\";s:2:\"91\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:50;a:12:{s:2:\"id\";s:3:\"730\";s:5:\"title\";s:24:\"Landing Page &#8211; App\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/01/app.-landing-page.jpg\";s:12:\"tmpl_created\";s:10:\"1485273430\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/landing-page-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"53\";s:16:\"popularity_index\";s:2:\"61\";s:11:\"trend_index\";s:2:\"92\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:51;a:12:{s:2:\"id\";s:3:\"643\";s:5:\"title\";s:29:\"Landing Page &#8211; Festival\";s:9:\"thumbnail\";s:69:\"https://library.elementor.com/wp-content/uploads/2016/12/festival.jpg\";s:12:\"tmpl_created\";s:10:\"1481549290\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-festival/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"54\";s:16:\"popularity_index\";s:2:\"53\";s:11:\"trend_index\";s:2:\"97\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:52;a:12:{s:2:\"id\";s:3:\"487\";s:5:\"title\";s:29:\"Landing Page &#8211; Vacation\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0021.png\";s:12:\"tmpl_created\";s:10:\"1477388357\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-vacation/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"55\";s:16:\"popularity_index\";s:2:\"20\";s:11:\"trend_index\";s:2:\"18\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:53;a:12:{s:2:\"id\";s:3:\"192\";s:5:\"title\";s:28:\"Landing Page &#8211; Webinar\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0015.png\";s:12:\"tmpl_created\";s:10:\"1470820734\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-webinar/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"56\";s:16:\"popularity_index\";s:2:\"27\";s:11:\"trend_index\";s:2:\"29\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:54;a:12:{s:2:\"id\";s:3:\"542\";s:5:\"title\";s:28:\"Landing Page &#8211; Wedding\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/10/0025.png\";s:12:\"tmpl_created\";s:10:\"1477388484\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-wedding/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"57\";s:16:\"popularity_index\";s:2:\"33\";s:11:\"trend_index\";s:2:\"46\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:55;a:12:{s:2:\"id\";s:4:\"1187\";s:5:\"title\";s:32:\"Landing Page &#8211; Photography\";s:9:\"thumbnail\";s:66:\"https://library.elementor.com/wp-content/uploads/2017/03/lp1-l.png\";s:12:\"tmpl_created\";s:10:\"1490707385\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/landing-page-photography/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"58\";s:16:\"popularity_index\";s:2:\"25\";s:11:\"trend_index\";s:2:\"25\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:56;a:12:{s:2:\"id\";s:3:\"641\";s:5:\"title\";s:28:\"Landing Page &#8211; Fashion\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2016/12/fashion-landing-page.jpg\";s:12:\"tmpl_created\";s:10:\"1481549264\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-fashion/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"59\";s:16:\"popularity_index\";s:2:\"43\";s:11:\"trend_index\";s:3:\"105\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:57;a:12:{s:2:\"id\";s:3:\"189\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 1\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0005.png\";s:12:\"tmpl_created\";s:10:\"1470820715\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-tourism/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"60\";s:16:\"popularity_index\";s:1:\"9\";s:11:\"trend_index\";s:2:\"13\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:58;a:12:{s:2:\"id\";s:4:\"1547\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 2\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Truism-1.png\";s:12:\"tmpl_created\";s:10:\"1494352115\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/landing-page-tourism-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"61\";s:16:\"popularity_index\";s:2:\"77\";s:11:\"trend_index\";s:2:\"56\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:59;a:12:{s:2:\"id\";s:4:\"1546\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 3\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Truism-2.png\";s:12:\"tmpl_created\";s:10:\"1494352116\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/landing-page-tourism-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"62\";s:16:\"popularity_index\";s:2:\"97\";s:11:\"trend_index\";s:3:\"110\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:60;a:12:{s:2:\"id\";s:4:\"1545\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 4\";s:9:\"thumbnail\";s:82:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Truism-3.png\";s:12:\"tmpl_created\";s:10:\"1494352118\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/landing-page-tourism-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"63\";s:16:\"popularity_index\";s:2:\"92\";s:11:\"trend_index\";s:2:\"75\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:61;a:12:{s:2:\"id\";s:4:\"2714\";s:5:\"title\";s:30:\"Landing Page &#8211; Tourism 5\";s:9:\"thumbnail\";s:86:\"https://library.elementor.com/wp-content/uploads/2017/11/Vacation-–-Landing-Page.png\";s:12:\"tmpl_created\";s:10:\"1509631782\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/landing-page-tourism-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"64\";s:16:\"popularity_index\";s:3:\"122\";s:11:\"trend_index\";s:3:\"106\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:62;a:12:{s:2:\"id\";s:4:\"1190\";s:5:\"title\";s:26:\"Landing Page &#8211; Hotel\";s:9:\"thumbnail\";s:66:\"https://library.elementor.com/wp-content/uploads/2017/03/lp2-l.png\";s:12:\"tmpl_created\";s:10:\"1490707391\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/landing-page-hotel/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"65\";s:16:\"popularity_index\";s:2:\"22\";s:11:\"trend_index\";s:2:\"16\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:63;a:12:{s:2:\"id\";s:3:\"195\";s:5:\"title\";s:28:\"Landing Page &#8211; Product\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0006.png\";s:12:\"tmpl_created\";s:10:\"1470820765\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/landing-page-product/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"66\";s:16:\"popularity_index\";s:2:\"18\";s:11:\"trend_index\";s:2:\"23\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:64;a:12:{s:2:\"id\";s:3:\"197\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 1\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0007.png\";s:12:\"tmpl_created\";s:10:\"1470825711\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/landing-page-real-estate/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"67\";s:16:\"popularity_index\";s:2:\"35\";s:11:\"trend_index\";s:2:\"38\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:65;a:12:{s:2:\"id\";s:4:\"1193\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 2\";s:9:\"thumbnail\";s:66:\"https://library.elementor.com/wp-content/uploads/2017/03/lp3-l.png\";s:12:\"tmpl_created\";s:10:\"1490707422\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/landing-page-real-estate-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"68\";s:16:\"popularity_index\";s:2:\"30\";s:11:\"trend_index\";s:2:\"21\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:66;a:12:{s:2:\"id\";s:4:\"1415\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 3\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Real-Estate-1.png\";s:12:\"tmpl_created\";s:10:\"1494352106\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/landing-page-real-estate-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"69\";s:16:\"popularity_index\";s:2:\"85\";s:11:\"trend_index\";s:2:\"85\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:67;a:12:{s:2:\"id\";s:4:\"1414\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 4\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Real-Estate-2.png\";s:12:\"tmpl_created\";s:10:\"1494352107\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/landing-page-real-estate-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"70\";s:16:\"popularity_index\";s:3:\"116\";s:11:\"trend_index\";s:3:\"111\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:68;a:12:{s:2:\"id\";s:4:\"1413\";s:5:\"title\";s:34:\"Landing Page &#8211; Real Estate 5\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/05/Landing-Page-Real-Estate-3.png\";s:12:\"tmpl_created\";s:10:\"1494352109\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/landing-page-real-estate-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"71\";s:16:\"popularity_index\";s:3:\"106\";s:11:\"trend_index\";s:3:\"122\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:69;a:12:{s:2:\"id\";s:4:\"1573\";s:5:\"title\";s:29:\"Landing Page &#8211; Coupon 1\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-02.png\";s:12:\"tmpl_created\";s:10:\"1494352133\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-coupon-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"72\";s:16:\"popularity_index\";s:3:\"109\";s:11:\"trend_index\";s:3:\"120\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:70;a:12:{s:2:\"id\";s:4:\"1572\";s:5:\"title\";s:29:\"Landing Page &#8211; Coupon 2\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-03.png\";s:12:\"tmpl_created\";s:10:\"1494352134\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-coupon-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"73\";s:16:\"popularity_index\";s:3:\"119\";s:11:\"trend_index\";s:3:\"102\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:71;a:12:{s:2:\"id\";s:4:\"1570\";s:5:\"title\";s:29:\"Landing Page &#8211; Coupon 3\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-01.png\";s:12:\"tmpl_created\";s:10:\"1494352136\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-coupon-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"74\";s:16:\"popularity_index\";s:3:\"124\";s:11:\"trend_index\";s:2:\"95\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:72;a:12:{s:2:\"id\";s:4:\"1571\";s:5:\"title\";s:29:\"Landing Page &#8211; Coupon 4\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/Coupon-04.png\";s:12:\"tmpl_created\";s:10:\"1494352138\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:111:\"https://library.elementor.com/landing-page-coupon-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"75\";s:16:\"popularity_index\";s:3:\"118\";s:11:\"trend_index\";s:3:\"123\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:73;a:12:{s:2:\"id\";s:4:\"2141\";s:5:\"title\";s:32:\"Contact &#8211; Delivery Company\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/07/delivery-contact.png\";s:12:\"tmpl_created\";s:10:\"1499774122\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:114:\"https://library.elementor.com/contact-delivery-company/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"76\";s:16:\"popularity_index\";s:2:\"84\";s:11:\"trend_index\";s:2:\"63\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:74;a:12:{s:2:\"id\";s:3:\"137\";s:5:\"title\";s:22:\"Contact &#8211; Modern\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0013.png\";s:12:\"tmpl_created\";s:10:\"1470829828\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/contact-modern/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"77\";s:16:\"popularity_index\";s:2:\"26\";s:11:\"trend_index\";s:2:\"26\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:75;a:12:{s:2:\"id\";s:3:\"256\";s:5:\"title\";s:26:\"Contact &#8211; Restaurant\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0011.png\";s:12:\"tmpl_created\";s:10:\"1470829796\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/contact-restaurant/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"78\";s:16:\"popularity_index\";s:2:\"36\";s:11:\"trend_index\";s:2:\"45\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:76;a:12:{s:2:\"id\";s:4:\"2150\";s:5:\"title\";s:25:\"Contact &#8211; Cake Shop\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2017/07/cake-contact.png\";s:12:\"tmpl_created\";s:10:\"1499774127\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/contact-cake-shop/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"79\";s:16:\"popularity_index\";s:2:\"40\";s:11:\"trend_index\";s:2:\"40\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:77;a:12:{s:2:\"id\";s:3:\"223\";s:5:\"title\";s:17:\"Contact – Hotel\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0002.png\";s:12:\"tmpl_created\";s:10:\"1470820471\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/contact-hotel/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"80\";s:16:\"popularity_index\";s:2:\"37\";s:11:\"trend_index\";s:2:\"44\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:78;a:12:{s:2:\"id\";s:2:\"24\";s:5:\"title\";s:25:\"Contact &#8211; Corporate\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0012.png\";s:12:\"tmpl_created\";s:10:\"1470248619\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/contact-corporate/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"81\";s:16:\"popularity_index\";s:2:\"11\";s:11:\"trend_index\";s:2:\"10\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:79;a:12:{s:2:\"id\";s:3:\"184\";s:5:\"title\";s:23:\"Services &#8211; Moving\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0017.png\";s:12:\"tmpl_created\";s:10:\"1470829889\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/services-moving/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"82\";s:16:\"popularity_index\";s:2:\"17\";s:11:\"trend_index\";s:2:\"22\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:80;a:12:{s:2:\"id\";s:3:\"625\";s:5:\"title\";s:31:\"Services &#8211; Cake Shop Menu\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2016/12/cake-shop-menu.jpg\";s:12:\"tmpl_created\";s:10:\"1481549196\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/services-cake-shop-menu/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"83\";s:16:\"popularity_index\";s:2:\"87\";s:11:\"trend_index\";s:1:\"0\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:81;a:12:{s:2:\"id\";s:3:\"187\";s:5:\"title\";s:20:\"Services &#8211; Fun\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0001.png\";s:12:\"tmpl_created\";s:10:\"1470829892\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/services-fun/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"84\";s:16:\"popularity_index\";s:2:\"24\";s:11:\"trend_index\";s:2:\"32\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:82;a:12:{s:2:\"id\";s:3:\"238\";s:5:\"title\";s:27:\"Services &#8211; Consulting\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0014.png\";s:12:\"tmpl_created\";s:10:\"1470829865\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/services-consulting/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"85\";s:16:\"popularity_index\";s:2:\"13\";s:11:\"trend_index\";s:2:\"14\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:83;a:12:{s:2:\"id\";s:3:\"647\";s:5:\"title\";s:33:\"Services &#8211; Coffee Shop Menu\";s:9:\"thumbnail\";s:76:\"https://library.elementor.com/wp-content/uploads/2016/12/restaurant-menu.jpg\";s:12:\"tmpl_created\";s:10:\"1481549320\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/services-coffee-shop-menu/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"86\";s:16:\"popularity_index\";s:2:\"80\";s:11:\"trend_index\";s:3:\"125\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:84;a:12:{s:2:\"id\";s:4:\"2138\";s:5:\"title\";s:33:\"Services &#8211; Delivery Company\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/07/delivery-services.png\";s:12:\"tmpl_created\";s:10:\"1499774119\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.elementor.com/services-delivery-company/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"87\";s:16:\"popularity_index\";s:2:\"99\";s:11:\"trend_index\";s:2:\"79\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:85;a:12:{s:2:\"id\";s:3:\"823\";s:5:\"title\";s:19:\"Pricing &#8211; App\";s:9:\"thumbnail\";s:72:\"https://library.elementor.com/wp-content/uploads/2017/01/pricing-app.jpg\";s:12:\"tmpl_created\";s:10:\"1485272966\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/pricing-app-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"88\";s:16:\"popularity_index\";s:2:\"63\";s:11:\"trend_index\";s:2:\"73\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:86;a:12:{s:2:\"id\";s:3:\"824\";s:5:\"title\";s:24:\"Pricing &#8211; Software\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/01/pricing-software.png\";s:12:\"tmpl_created\";s:10:\"1485272900\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/pricing-software-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"89\";s:16:\"popularity_index\";s:2:\"74\";s:11:\"trend_index\";s:2:\"98\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:87;a:12:{s:2:\"id\";s:3:\"825\";s:5:\"title\";s:24:\"Product &#8211; Speakers\";s:9:\"thumbnail\";s:73:\"https://library.elementor.com/wp-content/uploads/2017/01/product-page.jpg\";s:12:\"tmpl_created\";s:10:\"1485272513\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/product-speakers/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"90\";s:16:\"popularity_index\";s:2:\"69\";s:11:\"trend_index\";s:3:\"107\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:88;a:12:{s:2:\"id\";s:3:\"245\";s:5:\"title\";s:21:\"Product &#8211; Clean\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0020.png\";s:12:\"tmpl_created\";s:10:\"1470829876\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/product-clean/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"91\";s:16:\"popularity_index\";s:2:\"29\";s:11:\"trend_index\";s:2:\"39\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:89;a:12:{s:2:\"id\";s:3:\"150\";s:5:\"title\";s:19:\"Product &#8211; App\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2016/08/0003.png\";s:12:\"tmpl_created\";s:10:\"1470829879\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:101:\"https://library.elementor.com/product-app/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"92\";s:16:\"popularity_index\";s:2:\"15\";s:11:\"trend_index\";s:2:\"24\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:90;a:12:{s:2:\"id\";s:3:\"751\";s:5:\"title\";s:25:\"Homepage &#8211; Interior\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/01/interior-home.png\";s:12:\"tmpl_created\";s:10:\"1485269743\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/homepage-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"93\";s:16:\"popularity_index\";s:2:\"55\";s:11:\"trend_index\";s:2:\"76\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:91;a:12:{s:2:\"id\";s:3:\"753\";s:5:\"title\";s:22:\"About &#8211; Interior\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/01/Interior-About.png\";s:12:\"tmpl_created\";s:10:\"1485269710\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/about-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"94\";s:16:\"popularity_index\";s:2:\"70\";s:11:\"trend_index\";s:2:\"58\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:92;a:12:{s:2:\"id\";s:3:\"754\";s:5:\"title\";s:25:\"Services &#8211; Interior\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/01/Interior-Services.png\";s:12:\"tmpl_created\";s:10:\"1485269691\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/services-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"95\";s:16:\"popularity_index\";s:2:\"81\";s:11:\"trend_index\";s:3:\"119\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:93;a:12:{s:2:\"id\";s:3:\"752\";s:5:\"title\";s:24:\"Contact &#8211; Interior\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/01/interior-contact.png\";s:12:\"tmpl_created\";s:10:\"1485269737\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/contact-interior/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"96\";s:16:\"popularity_index\";s:2:\"72\";s:11:\"trend_index\";s:3:\"118\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:94;a:12:{s:2:\"id\";s:4:\"1075\";s:5:\"title\";s:19:\"Shop &#8211; Sweets\";s:9:\"thumbnail\";s:67:\"https://library.elementor.com/wp-content/uploads/2017/03/Sweets.png\";s:12:\"tmpl_created\";s:10:\"1488810871\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:101:\"https://library.elementor.com/shop-sweets/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"97\";s:16:\"popularity_index\";s:2:\"31\";s:11:\"trend_index\";s:2:\"30\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:95;a:12:{s:2:\"id\";s:4:\"1051\";s:5:\"title\";s:24:\"Blog Post &#8211; Launch\";s:9:\"thumbnail\";s:71:\"https://library.elementor.com/wp-content/uploads/2017/03/post-cloud.png\";s:12:\"tmpl_created\";s:10:\"1488810869\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/blog-post-launch/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"98\";s:16:\"popularity_index\";s:2:\"23\";s:11:\"trend_index\";s:2:\"20\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:96;a:12:{s:2:\"id\";s:4:\"1245\";s:5:\"title\";s:13:\"Coming Soon 1\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-1.png\";s:12:\"tmpl_created\";s:10:\"1491207184\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-1/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:2:\"99\";s:16:\"popularity_index\";s:2:\"68\";s:11:\"trend_index\";s:2:\"69\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:97;a:12:{s:2:\"id\";s:4:\"1247\";s:5:\"title\";s:13:\"Coming Soon 2\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-2.png\";s:12:\"tmpl_created\";s:10:\"1491207138\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"100\";s:16:\"popularity_index\";s:2:\"28\";s:11:\"trend_index\";s:2:\"28\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:98;a:12:{s:2:\"id\";s:4:\"1248\";s:5:\"title\";s:13:\"Coming Soon 3\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-3.png\";s:12:\"tmpl_created\";s:10:\"1491207050\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-3/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"101\";s:16:\"popularity_index\";s:2:\"88\";s:11:\"trend_index\";s:3:\"115\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:99;a:12:{s:2:\"id\";s:4:\"1249\";s:5:\"title\";s:13:\"Coming Soon 4\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-4.png\";s:12:\"tmpl_created\";s:10:\"1491207380\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-4/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"102\";s:16:\"popularity_index\";s:3:\"108\";s:11:\"trend_index\";s:3:\"124\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:100;a:12:{s:2:\"id\";s:4:\"1250\";s:5:\"title\";s:13:\"Coming Soon 5\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-5.png\";s:12:\"tmpl_created\";s:10:\"1491207450\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-5/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"103\";s:16:\"popularity_index\";s:2:\"32\";s:11:\"trend_index\";s:2:\"27\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:101;a:12:{s:2:\"id\";s:4:\"1260\";s:5:\"title\";s:13:\"Coming Soon 6\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-6.png\";s:12:\"tmpl_created\";s:10:\"1491207507\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-6/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"104\";s:16:\"popularity_index\";s:3:\"103\";s:11:\"trend_index\";s:3:\"116\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:102;a:12:{s:2:\"id\";s:4:\"1261\";s:5:\"title\";s:13:\"Coming Soon 7\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/04/Coming-Soon-7.png\";s:12:\"tmpl_created\";s:10:\"1491207584\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-7/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"105\";s:16:\"popularity_index\";s:2:\"34\";s:11:\"trend_index\";s:2:\"49\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:103;a:12:{s:2:\"id\";s:4:\"1272\";s:5:\"title\";s:13:\"Coming Soon 8\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-8.png\";s:12:\"tmpl_created\";s:10:\"1491207674\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-8/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"106\";s:16:\"popularity_index\";s:2:\"59\";s:11:\"trend_index\";s:3:\"117\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:104;a:12:{s:2:\"id\";s:4:\"1279\";s:5:\"title\";s:13:\"Coming Soon 9\";s:9:\"thumbnail\";s:74:\"https://library.elementor.com/wp-content/uploads/2017/03/Coming-Soon-9.png\";s:12:\"tmpl_created\";s:10:\"1491207756\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:103:\"https://library.elementor.com/coming-soon-9/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"107\";s:16:\"popularity_index\";s:2:\"39\";s:11:\"trend_index\";s:2:\"51\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}i:105;a:12:{s:2:\"id\";s:4:\"1745\";s:5:\"title\";s:14:\"Coming Soon 10\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/login-002.png\";s:12:\"tmpl_created\";s:10:\"1494849745\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/coming-soon-10/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"108\";s:16:\"popularity_index\";s:2:\"65\";s:11:\"trend_index\";s:2:\"94\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:106;a:12:{s:2:\"id\";s:4:\"1742\";s:5:\"title\";s:12:\"Login Page 1\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/login-003.png\";s:12:\"tmpl_created\";s:10:\"1494849744\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:100:\"https://library.elementor.com/login-page/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"109\";s:16:\"popularity_index\";s:2:\"94\";s:11:\"trend_index\";s:3:\"109\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:107;a:12:{s:2:\"id\";s:4:\"1748\";s:5:\"title\";s:12:\"Login Page 2\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/05/login-001.png\";s:12:\"tmpl_created\";s:10:\"1494849742\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:102:\"https://library.elementor.com/login-page-2/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"110\";s:16:\"popularity_index\";s:2:\"60\";s:11:\"trend_index\";s:2:\"57\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:108;a:12:{s:2:\"id\";s:4:\"2080\";s:5:\"title\";s:27:\"Ski Resort &#8211; Homepage\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2017/10/Ski-Resort-Home-Page.png\";s:12:\"tmpl_created\";s:10:\"1508161124\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/ski-resort-homepage/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"111\";s:16:\"popularity_index\";s:3:\"100\";s:11:\"trend_index\";s:2:\"88\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:109;a:12:{s:2:\"id\";s:4:\"2088\";s:5:\"title\";s:24:\"Ski Resort &#8211; About\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/10/Ski-Resort-About.png\";s:12:\"tmpl_created\";s:10:\"1508161129\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:106:\"https://library.elementor.com/ski-resort-about/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"112\";s:16:\"popularity_index\";s:3:\"123\";s:11:\"trend_index\";s:3:\"108\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:110;a:12:{s:2:\"id\";s:4:\"2085\";s:5:\"title\";s:27:\"Ski Resort &#8211; Services\";s:9:\"thumbnail\";s:80:\"https://library.elementor.com/wp-content/uploads/2017/10/Ski-Resort-Services.png\";s:12:\"tmpl_created\";s:10:\"1508161134\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:109:\"https://library.elementor.com/ski-resort-services/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"113\";s:16:\"popularity_index\";s:3:\"125\";s:11:\"trend_index\";s:3:\"126\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:111;a:12:{s:2:\"id\";s:4:\"2462\";s:5:\"title\";s:19:\"Architect – About\";s:9:\"thumbnail\";s:80:\"https://library.elementor.com/wp-content/uploads/2017/10/architect-–-about.png\";s:12:\"tmpl_created\";s:10:\"1508243317\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:105:\"https://library.elementor.com/architect-about/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"114\";s:16:\"popularity_index\";s:3:\"120\";s:11:\"trend_index\";s:3:\"104\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:112;a:12:{s:2:\"id\";s:4:\"2362\";s:5:\"title\";s:26:\"Architect &#8211; Projects\";s:9:\"thumbnail\";s:79:\"https://library.elementor.com/wp-content/uploads/2017/10/Architect-Projects.png\";s:12:\"tmpl_created\";s:10:\"1508243335\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:108:\"https://library.elementor.com/architect-projects/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"115\";s:16:\"popularity_index\";s:3:\"121\";s:11:\"trend_index\";s:3:\"100\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:113;a:12:{s:2:\"id\";s:3:\"614\";s:5:\"title\";s:25:\"Architect &#8211; Contact\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2016/12/architect-contact.jpg\";s:12:\"tmpl_created\";s:10:\"1481549169\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/architect-contact/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"116\";s:16:\"popularity_index\";s:2:\"44\";s:11:\"trend_index\";s:2:\"61\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:114;a:12:{s:2:\"id\";s:4:\"2126\";s:5:\"title\";s:37:\"Construction Company &#8211; Homepage\";s:9:\"thumbnail\";s:91:\"https://library.elementor.com/wp-content/uploads/2017/10/Construction-Company-Home-Page.png\";s:12:\"tmpl_created\";s:10:\"1508325849\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:119:\"https://library.elementor.com/construction-company-homepage/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"117\";s:16:\"popularity_index\";s:2:\"96\";s:11:\"trend_index\";s:2:\"86\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:115;a:12:{s:2:\"id\";s:4:\"2129\";s:5:\"title\";s:34:\"Construction Company &#8211; About\";s:9:\"thumbnail\";s:87:\"https://library.elementor.com/wp-content/uploads/2017/10/Construction-Company-About.png\";s:12:\"tmpl_created\";s:10:\"1508325881\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:116:\"https://library.elementor.com/construction-company-about/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"118\";s:16:\"popularity_index\";s:3:\"112\";s:11:\"trend_index\";s:3:\"114\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:116;a:12:{s:2:\"id\";s:4:\"2135\";s:5:\"title\";s:36:\"Construction Company &#8211; Contact\";s:9:\"thumbnail\";s:89:\"https://library.elementor.com/wp-content/uploads/2017/10/Construction-Company-Contact.png\";s:12:\"tmpl_created\";s:10:\"1508325922\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:118:\"https://library.elementor.com/construction-company-contact/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"119\";s:16:\"popularity_index\";s:3:\"114\";s:11:\"trend_index\";s:3:\"103\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:117;a:12:{s:2:\"id\";s:4:\"2094\";s:5:\"title\";s:28:\"Plants Shop &#8211; Homepage\";s:9:\"thumbnail\";s:77:\"https://library.elementor.com/wp-content/uploads/2017/11/Plants-Shop-Home.png\";s:12:\"tmpl_created\";s:10:\"1509621053\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:110:\"https://library.elementor.com/plants-shop-homepage/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"120\";s:16:\"popularity_index\";s:3:\"115\";s:11:\"trend_index\";s:2:\"67\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:118;a:12:{s:2:\"id\";s:4:\"2120\";s:5:\"title\";s:25:\"Plants Shop &#8211; About\";s:9:\"thumbnail\";s:78:\"https://library.elementor.com/wp-content/uploads/2017/11/Plants-Shop-About.png\";s:12:\"tmpl_created\";s:10:\"1509631820\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:107:\"https://library.elementor.com/plants-shop-about/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"121\";s:16:\"popularity_index\";s:3:\"113\";s:11:\"trend_index\";s:2:\"84\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:119;a:12:{s:2:\"id\";s:4:\"3619\";s:5:\"title\";s:31:\"Snowboard Site &#8211; Homepage\";s:9:\"thumbnail\";s:65:\"https://library.elementor.com/wp-content/uploads/2017/12/home.png\";s:12:\"tmpl_created\";s:10:\"1513513137\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/snowboard-site-homepage/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"122\";s:16:\"popularity_index\";s:3:\"128\";s:11:\"trend_index\";s:2:\"81\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:120;a:12:{s:2:\"id\";s:4:\"3632\";s:5:\"title\";s:31:\"Snowboard Site &#8211; Services\";s:9:\"thumbnail\";s:62:\"https://library.elementor.com/wp-content/uploads/2017/12/2.png\";s:12:\"tmpl_created\";s:10:\"1513513171\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/snowboard-site-services/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"123\";s:16:\"popularity_index\";s:3:\"126\";s:11:\"trend_index\";s:2:\"89\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:121;a:12:{s:2:\"id\";s:4:\"3626\";s:5:\"title\";s:30:\"Snowboard Site &#8211; Contact\";s:9:\"thumbnail\";s:62:\"https://library.elementor.com/wp-content/uploads/2017/12/3.png\";s:12:\"tmpl_created\";s:10:\"1513513193\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:112:\"https://library.elementor.com/snowboard-site-contact/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"124\";s:16:\"popularity_index\";s:3:\"127\";s:11:\"trend_index\";s:2:\"82\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:122;a:12:{s:2:\"id\";s:4:\"3153\";s:5:\"title\";s:14:\"Halloween Pack\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/10/halloween.png\";s:12:\"tmpl_created\";s:10:\"1508950132\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/halloween-pack/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"125\";s:16:\"popularity_index\";s:3:\"110\";s:11:\"trend_index\";s:3:\"127\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:123;a:12:{s:2:\"id\";s:4:\"3338\";s:5:\"title\";s:34:\"Black Friday &#8211; Nature Set​\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/11/black-friday-1.png\";s:12:\"tmpl_created\";s:10:\"1511203351\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/black-friday-nature-set/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"126\";s:16:\"popularity_index\";s:3:\"111\";s:11:\"trend_index\";s:1:\"0\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:124;a:12:{s:2:\"id\";s:4:\"3339\";s:5:\"title\";s:35:\"Black Friday &#8211; Pop-Styled Set\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/11/black-friday-2.png\";s:12:\"tmpl_created\";s:10:\"1511203636\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:117:\"https://library.elementor.com/black-friday-pop-styled-set/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"127\";s:16:\"popularity_index\";s:2:\"91\";s:11:\"trend_index\";s:3:\"113\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"1\";}i:125;a:12:{s:2:\"id\";s:4:\"3335\";s:5:\"title\";s:31:\"Black Friday &#8211; Retail Set\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/11/black-friday-4.png\";s:12:\"tmpl_created\";s:10:\"1511203246\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:113:\"https://library.elementor.com/black-friday-retail-set/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"128\";s:16:\"popularity_index\";s:3:\"105\";s:11:\"trend_index\";s:2:\"77\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:126;a:12:{s:2:\"id\";s:4:\"3340\";s:5:\"title\";s:41:\"Black Friday &#8211; Software Product Set\";s:9:\"thumbnail\";s:75:\"https://library.elementor.com/wp-content/uploads/2017/11/black-friday-3.png\";s:12:\"tmpl_created\";s:10:\"1511203713\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:123:\"https://library.elementor.com/black-friday-software-product-set/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"129\";s:16:\"popularity_index\";s:3:\"104\";s:11:\"trend_index\";s:2:\"96\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:127;a:12:{s:2:\"id\";s:4:\"3517\";s:5:\"title\";s:14:\"Christmas Page\";s:9:\"thumbnail\";s:70:\"https://library.elementor.com/wp-content/uploads/2017/12/XmasThumb.png\";s:12:\"tmpl_created\";s:10:\"1513877937\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:104:\"https://library.elementor.com/christmas-page/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"130\";s:16:\"popularity_index\";s:3:\"129\";s:11:\"trend_index\";s:2:\"31\";s:6:\"is_pro\";s:1:\"1\";s:17:\"has_page_settings\";s:1:\"0\";}i:128;a:12:{s:2:\"id\";s:3:\"420\";s:5:\"title\";s:11:\"Hero UI Kit\";s:9:\"thumbnail\";s:81:\"https://library.elementor.com/wp-content/uploads/2016/09/library-ui-kit-cover.png\";s:12:\"tmpl_created\";s:10:\"1475067229\";s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:101:\"https://library.elementor.com/hero-ui-kit/?utm_source=library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";s:3:\"131\";s:16:\"popularity_index\";s:1:\"8\";s:11:\"trend_index\";s:2:\"12\";s:6:\"is_pro\";s:1:\"0\";s:17:\"has_page_settings\";s:1:\"0\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(170, 'elementor_scheme_color', 'a:4:{i:1;s:7:\"#6ec1e4\";i:2;s:7:\"#54595f\";i:3;s:7:\"#7a7a7a\";i:4;s:7:\"#61ce70\";}', 'yes'),
(171, 'elementor_scheme_typography', 'a:4:{i:1;a:2:{s:11:\"font_family\";s:6:\"Roboto\";s:11:\"font_weight\";s:3:\"600\";}i:2;a:2:{s:11:\"font_family\";s:11:\"Roboto Slab\";s:11:\"font_weight\";s:3:\"400\";}i:3;a:2:{s:11:\"font_family\";s:6:\"Roboto\";s:11:\"font_weight\";s:3:\"400\";}i:4;a:2:{s:11:\"font_family\";s:6:\"Roboto\";s:11:\"font_weight\";s:3:\"500\";}}', 'yes'),
(172, 'elementor_scheme_color-picker', 'a:8:{i:1;s:7:\"#6ec1e4\";i:2;s:7:\"#54595f\";i:3;s:7:\"#7a7a7a\";i:4;s:7:\"#61ce70\";i:5;s:7:\"#4054b2\";i:6;s:7:\"#23a455\";i:7;s:4:\"#000\";i:8;s:4:\"#fff\";}', 'yes'),
(175, '_elementor_global_css', 'a:3:{s:4:\"time\";i:1514040329;s:5:\"fonts\";a:2:{i:0;s:6:\"Roboto\";i:12;s:11:\"Roboto Slab\";}s:6:\"status\";s:4:\"file\";}', 'yes'),
(183, 'woocommerce_store_address', 'adresă fictivă 1', 'yes'),
(184, 'woocommerce_store_address_2', 'adresă fictivă 2', 'yes'),
(185, 'woocommerce_store_city', 'București', 'yes'),
(186, 'woocommerce_default_country', 'RO:B', 'yes'),
(187, 'woocommerce_store_postcode', '12345678', 'yes'),
(188, 'woocommerce_allowed_countries', 'all', 'yes'),
(189, 'woocommerce_all_except_countries', '', 'yes'),
(190, 'woocommerce_specific_allowed_countries', '', 'yes'),
(191, 'woocommerce_ship_to_countries', '', 'yes'),
(192, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(193, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(194, 'woocommerce_calc_taxes', 'no', 'yes'),
(195, 'woocommerce_demo_store', 'no', 'yes'),
(196, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(197, 'woocommerce_currency', 'RON', 'yes'),
(198, 'woocommerce_currency_pos', 'right_space', 'yes'),
(199, 'woocommerce_price_thousand_sep', '.', 'yes'),
(200, 'woocommerce_price_decimal_sep', ',', 'yes'),
(201, 'woocommerce_price_num_decimals', '2', 'yes'),
(202, 'woocommerce_weight_unit', 'kg', 'yes'),
(203, 'woocommerce_dimension_unit', 'cm', 'yes'),
(204, 'woocommerce_enable_reviews', 'yes', 'yes'),
(205, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(206, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(207, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(208, 'woocommerce_review_rating_required', 'yes', 'no'),
(209, 'woocommerce_shop_page_id', '40', 'yes'),
(210, 'woocommerce_shop_page_display', '', 'yes'),
(211, 'woocommerce_category_archive_display', '', 'yes'),
(212, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(213, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(214, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(215, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"262\";s:6:\"height\";s:3:\"325\";s:4:\"crop\";i:1;}', 'yes'),
(216, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"555\";s:6:\"height\";s:3:\"688\";s:4:\"crop\";i:1;}', 'yes'),
(217, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:2:\"83\";s:6:\"height\";s:3:\"103\";s:4:\"crop\";i:1;}', 'yes'),
(218, 'woocommerce_manage_stock', 'yes', 'yes'),
(219, 'woocommerce_hold_stock_minutes', '60', 'no'),
(220, 'woocommerce_notify_low_stock', 'yes', 'no'),
(221, 'woocommerce_notify_no_stock', 'yes', 'no'),
(222, 'woocommerce_stock_email_recipient', 'cstn.serban@gmail.com', 'no'),
(223, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(224, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(225, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(226, 'woocommerce_stock_format', '', 'yes'),
(227, 'woocommerce_file_download_method', 'force', 'no'),
(228, 'woocommerce_downloads_require_login', 'no', 'no'),
(229, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(230, 'woocommerce_prices_include_tax', 'no', 'yes'),
(231, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(232, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(233, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(234, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(235, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(236, 'woocommerce_tax_display_cart', 'excl', 'no'),
(237, 'woocommerce_price_display_suffix', '', 'yes'),
(238, 'woocommerce_tax_total_display', 'itemized', 'no'),
(239, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(240, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(241, 'woocommerce_ship_to_destination', 'billing', 'no'),
(242, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(243, 'woocommerce_enable_coupons', 'yes', 'yes'),
(244, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(245, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(246, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(247, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(248, 'woocommerce_cart_page_id', '41', 'yes'),
(249, 'woocommerce_checkout_page_id', '42', 'yes'),
(250, 'woocommerce_terms_page_id', '', 'no'),
(251, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(252, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(253, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(254, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(255, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(256, 'woocommerce_myaccount_page_id', '43', 'yes'),
(257, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(258, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(259, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(260, 'woocommerce_registration_generate_username', 'yes', 'no'),
(261, 'woocommerce_registration_generate_password', 'no', 'no'),
(262, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(263, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(264, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(265, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(266, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(267, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(268, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(269, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(270, 'woocommerce_email_from_name', 'Zmeurica', 'no'),
(271, 'woocommerce_email_from_address', 'cstn.serban@gmail.com', 'no'),
(272, 'woocommerce_email_header_image', '', 'no'),
(273, 'woocommerce_email_footer_text', 'Zmeurica', 'no'),
(274, 'woocommerce_email_base_color', '#96588a', 'no'),
(275, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(276, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(277, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(278, 'woocommerce_api_enabled', 'yes', 'yes'),
(279, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(282, 'woocommerce_version', '3.2.6', 'yes'),
(283, 'woocommerce_db_version', '3.2.6', 'yes'),
(284, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(285, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(286, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(291, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(300, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(301, 'woocommerce_product_type', 'physical', 'yes'),
(302, 'woocommerce_allow_tracking', 'yes', 'yes'),
(303, 'woocommerce_tracker_last_send', '1515367352', 'yes'),
(305, 'woocommerce_ppec_paypal_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(306, 'woocommerce_paypal_settings', 'a:2:{s:7:\"enabled\";s:2:\"no\";s:5:\"email\";b:0;}', 'yes'),
(307, 'wc_ppec_version', '1.5.0', 'yes'),
(315, 'current_theme', 'Shop Isle', 'yes'),
(316, 'theme_mods_storefront', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:17:\"storefront_styles\";s:5060:\"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #838383;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #6d6d6d;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #9f9f9f;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type=\"button\"]:focus,\n			input[type=\"reset\"]:focus,\n			input[type=\"submit\"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type=\"button\"], input[type=\"reset\"], input[type=\"submit\"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type=\"button\"]:hover, input[type=\"reset\"]:hover, input[type=\"submit\"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type=\"button\"].alt, input[type=\"reset\"].alt, input[type=\"submit\"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type=\"button\"].alt:hover, input[type=\"reset\"].alt:hover, input[type=\"submit\"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #6d6d6d;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #868686;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #6d6d6d;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}\";s:29:\"storefront_woocommerce_styles\";s:2283:\"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #9f9f9f;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #6d6d6d;\n				}\n			}\";s:39:\"storefront_woocommerce_extension_styles\";s:0:\"\";s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1514041478;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(317, 'theme_switched', '', 'yes'),
(318, 'storefront_nux_fresh_site', '0', 'yes'),
(320, '_transient_shipping-transient-version', '1514045748', 'yes'),
(323, '_transient_product_query-transient-version', '1514046334', 'yes'),
(326, '_transient_product-transient-version', '1514046334', 'yes'),
(330, 'product_cat_children', 'a:0:{}', 'yes'),
(336, 'theme_mods_shop-isle', 'a:15:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"shop_isle_slider\";s:613:\"[{\"image_url\":\"http:\\/\\/tiov.dev\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/slide1.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_5a3e70869e4e0\"},{\"image_url\":\"http:\\/\\/tiov.dev\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/slide2.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_5a3e70869e4e4\"},{\"image_url\":\"http:\\/\\/tiov.dev\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/slide3.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_5a3e70869e4e5\"}]\";s:17:\"shop_isle_banners\";s:916:\"[{\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"image_url\":\"http:\\/\\/tiov.dev\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/banner1.jpg\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"\\n\\t\\t\\t\\t\\t\\tshop_isle_banners\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"image_url\":\"http:\\/\\/tiov.dev\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/banner2.jpg\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"\\n\\t\\t\\t\\t\\t\\tshop_isle_banners\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"image_url\":\"http:\\/\\/tiov.dev\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/banner3.jpg\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"\\n\\t\\t\\t\\t\\t\\tshop_isle_banners\",\"shortcode\":\"undefined\",\"description\":\"undefined\"}]\";s:17:\"shop_isle_socials\";s:973:\"[{\"icon_value\":\"social_facebook\",\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"\\n\\t\\t\\t\\t\\t\\tshop_isle_socials\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"icon_value\":\"social_twitter\",\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"\\n\\t\\t\\t\\t\\t\\tshop_isle_socials\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"icon_value\":\"social_dribbble\",\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"\\n\\t\\t\\t\\t\\t\\tshop_isle_socials\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"icon_value\":\"social_skype\",\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"\\n\\t\\t\\t\\t\\t\\tshop_isle_socials\",\"shortcode\":\"undefined\",\"description\":\"undefined\"}]\";s:22:\"shop_isle_team_members\";s:1042:\"[{\"image_url\":\"http:\\/\\/tiov.dev\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team1.jpg\",\"text\":\"Eva Bean\",\"subtext\":\"Developer\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5a3e7086a11ca\"},{\"image_url\":\"http:\\/\\/tiov.dev\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team2.jpg\",\"text\":\"Maria Woods\",\"subtext\":\"Designer\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5a3e7086a11cf\"},{\"image_url\":\"http:\\/\\/tiov.dev\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team3.jpg\",\"text\":\"Booby Stone\",\"subtext\":\"Director\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5a3e7086a11d1\"},{\"image_url\":\"http:\\/\\/tiov.dev\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team4.jpg\",\"text\":\"Anna Neaga\",\"subtext\":\"Art Director\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5a3e7086a11d3\"}]\";s:20:\"shop_isle_advantages\";s:623:\"[{\"icon_value\":\"icon_lightbulb\",\"text\":\"Ideas and concepts\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5a3e7086a1b30\"},{\"icon_value\":\"icon_tools\",\"text\":\"Designs & interfaces\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5a3e7086a1b34\"},{\"icon_value\":\"icon_cogs\",\"text\":\"Highly customizable\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5a3e7086a1b36\"},{\"icon_value\":\"icon_like\",\"text\":\"Easy to use\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5a3e7086a1b37\"}]\";s:18:\"custom_css_post_id\";i:-1;s:25:\"shop_isle_big_title_image\";s:71:\"http://tiov.dev/wp-content/uploads/2017/12/cropped-raspberry-header.jpg\";s:25:\"shop_isle_big_title_title\";s:9:\"Zmeurică\";s:28:\"shop_isle_big_title_subtitle\";s:20:\"Totul despre zmeură\";s:32:\"shop_isle_big_title_button_label\";s:10:\"Despre Noi\";s:18:\"shop_isle_404_text\";s:42:\"Pagina căutată nu există pe acest site.\";s:27:\"shop_isle_disable_preloader\";s:0:\"\";s:19:\"shop_isle_404_label\";s:14:\"Înapoi acasă\";}', 'yes'),
(337, 'shop_isle_wporg_flag', 'true', 'yes'),
(338, 'shop_isle_migrate_translation', '1', 'yes'),
(339, 'shop_isle_section_order_migrate', 'yes', 'yes'),
(361, '_transient_orders-transient-version', '1515518481', 'yes'),
(366, '_transient_timeout_wc_shipping_method_count_1_1514045748', '1516637902', 'no'),
(367, '_transient_wc_shipping_method_count_1_1514045748', '2', 'no'),
(368, '_transient_timeout_wc_shipping_method_count_0_1514045748', '1516638304', 'no'),
(369, '_transient_wc_shipping_method_count_0_1514045748', '2', 'no'),
(374, 'WPLANG', '', 'yes'),
(375, 'new_admin_email', 'cstn.serban@gmail.com', 'yes'),
(440, '_transient_timeout_external_ip_address_::1', '1515970936', 'no'),
(441, '_transient_external_ip_address_::1', '85.204.3.200', 'no'),
(443, '_transient_timeout_external_ip_address_127.0.0.1', '1515971919', 'no'),
(444, '_transient_external_ip_address_127.0.0.1', '85.204.3.200', 'no'),
(454, '_site_transient_timeout_theme_roots', '1515520218', 'no'),
(455, '_site_transient_theme_roots', 'a:2:{s:9:\"shop-isle\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";}', 'no'),
(457, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1515518424;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}', 'no'),
(458, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1515518428;s:7:\"checked\";a:2:{s:9:\"shop-isle\";s:6:\"1.1.38\";s:10:\"storefront\";s:5:\"2.2.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(459, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1515518426;s:8:\"response\";a:1:{s:23:\"elementor/elementor.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:5:\"1.9.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/elementor.1.9.0.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:62:\"https://ps.w.org/elementor/assets/icon-128x128.png?rev=1427768\";s:2:\"2x\";s:62:\"https://ps.w.org/elementor/assets/icon-256x256.png?rev=1427768\";s:3:\"svg\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";s:7:\"default\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=1475479\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=1475479\";s:7:\"default\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=1475479\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.2.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.2.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"1.5.0\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.5.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1410389\";s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389\";s:7:\"default\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1410389\";s:7:\"default\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(460, '_transient_is_multi_author', '0', 'yes'),
(461, '_transient_timeout_wc_term_counts', '1518110484', 'no'),
(462, '_transient_wc_term_counts', 'a:4:{i:18;s:1:\"1\";i:19;s:1:\"1\";i:17;s:1:\"1\";i:16;s:1:\"1\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 2, '_edit_lock', '1514038997:1'),
(62, 26, '_customize_changeset_uuid', 'cc18a2d9-2b4e-4982-a594-f576c3b96aeb'),
(63, 27, '_wp_trash_meta_status', 'publish'),
(64, 27, '_wp_trash_meta_time', '1514039254'),
(68, 26, '_edit_lock', '1514040245:1'),
(69, 26, '_edit_last', '1'),
(70, 2, '_wp_trash_meta_status', 'publish'),
(71, 2, '_wp_trash_meta_time', '1514039415'),
(72, 2, '_wp_desired_post_slug', 'sample-page'),
(75, 33, '_wp_attached_file', '2017/12/cropped-raspberry-header.jpg'),
(76, 33, '_wp_attachment_context', 'custom-header'),
(77, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1198;s:4:\"file\";s:36:\"2017/12/cropped-raspberry-header.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-raspberry-header-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"cropped-raspberry-header-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"cropped-raspberry-header-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"cropped-raspberry-header-1024x613.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:613;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:38:\"cropped-raspberry-header-2000x1198.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:36:\"cropped-raspberry-header-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:32;}'),
(78, 33, '_wp_attachment_custom_header_last_used_twentyseventeen', '1514039870'),
(79, 33, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(80, 34, '_edit_lock', '1514039869:1'),
(81, 34, '_wp_trash_meta_status', 'publish'),
(82, 34, '_wp_trash_meta_time', '1514039870'),
(83, 26, '_elementor_edit_mode', 'builder'),
(84, 35, '_edit_last', '1'),
(85, 35, '_edit_lock', '1514058113:1'),
(86, 35, '_wp_page_template', 'default'),
(96, 26, '_elementor_css', 'a:4:{s:4:\"time\";i:1514040329;s:5:\"fonts\";a:0:{}s:6:\"status\";s:5:\"empty\";s:3:\"css\";s:0:\"\";}'),
(97, 38, '_menu_item_type', 'post_type'),
(98, 38, '_menu_item_menu_item_parent', '0'),
(99, 38, '_menu_item_object_id', '26'),
(100, 38, '_menu_item_object', 'page'),
(101, 38, '_menu_item_target', ''),
(102, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 38, '_menu_item_xfn', ''),
(104, 38, '_menu_item_url', ''),
(106, 39, '_edit_last', '1'),
(107, 39, '_edit_lock', '1514040536:1'),
(108, 44, '_wc_review_count', '0'),
(109, 44, '_wc_rating_count', 'a:0:{}'),
(110, 44, '_wc_average_rating', '0'),
(111, 45, '_wp_attached_file', '2017/12/raspberry-basket.jpg'),
(112, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:28:\"2017/12/raspberry-basket.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"raspberry-basket-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"raspberry-basket-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"raspberry-basket-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"raspberry-basket-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"raspberry-basket-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"raspberry-basket-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 44, '_edit_last', '1'),
(114, 44, '_thumbnail_id', '45'),
(115, 44, '_sku', ''),
(116, 44, '_regular_price', '60'),
(117, 44, '_sale_price', ''),
(118, 44, '_sale_price_dates_from', ''),
(119, 44, '_sale_price_dates_to', ''),
(120, 44, 'total_sales', '8'),
(121, 44, '_tax_status', 'taxable'),
(122, 44, '_tax_class', ''),
(123, 44, '_manage_stock', 'no'),
(124, 44, '_backorders', 'no'),
(125, 44, '_sold_individually', 'no'),
(126, 44, '_weight', '1'),
(127, 44, '_length', '30'),
(128, 44, '_width', '30'),
(129, 44, '_height', '30'),
(130, 44, '_upsell_ids', 'a:0:{}'),
(131, 44, '_crosssell_ids', 'a:0:{}'),
(132, 44, '_purchase_note', ''),
(133, 44, '_default_attributes', 'a:0:{}'),
(134, 44, '_virtual', 'no'),
(135, 44, '_downloadable', 'no'),
(136, 44, '_product_image_gallery', ''),
(137, 44, '_download_limit', '-1'),
(138, 44, '_download_expiry', '-1'),
(139, 44, '_stock', NULL),
(140, 44, '_stock_status', 'instock'),
(141, 44, '_product_version', '3.2.6'),
(142, 44, '_price', '60'),
(143, 44, '_edit_lock', '1514046196:1'),
(144, 46, '_edit_lock', '1514041773:1'),
(145, 46, '_wp_trash_meta_status', 'publish'),
(146, 46, '_wp_trash_meta_time', '1514041773'),
(147, 47, '_wp_trash_meta_status', 'publish'),
(148, 47, '_wp_trash_meta_time', '1514041898'),
(152, 50, '_wp_attached_file', '2017/12/raspberry-logo.png'),
(153, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1600;s:4:\"file\";s:26:\"2017/12/raspberry-logo.png\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"raspberry-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"raspberry-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"raspberry-logo-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"raspberry-logo-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"raspberry-logo-83x103.png\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"raspberry-logo-262x325.png\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"raspberry-logo-555x688.png\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:26:\"raspberry-logo-750x500.png\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:26:\"raspberry-logo-360x235.png\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:26:\"raspberry-logo-500x500.png\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:24:\"raspberry-logo-58x72.png\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(183, 55, '_menu_item_type', 'post_type'),
(184, 55, '_menu_item_menu_item_parent', '0'),
(185, 55, '_menu_item_object_id', '40'),
(186, 55, '_menu_item_object', 'page'),
(187, 55, '_menu_item_target', ''),
(188, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(189, 55, '_menu_item_xfn', ''),
(190, 55, '_menu_item_url', ''),
(210, 39, '_wp_trash_meta_status', 'draft'),
(211, 39, '_wp_trash_meta_time', '1514045253'),
(212, 39, '_wp_desired_post_slug', ''),
(213, 59, '_wc_review_count', '0'),
(214, 59, '_wc_rating_count', 'a:0:{}'),
(215, 59, '_wc_average_rating', '0'),
(216, 59, '_edit_last', '1'),
(217, 59, '_sku', ''),
(218, 59, '_regular_price', ''),
(219, 59, '_sale_price', ''),
(220, 59, '_sale_price_dates_from', ''),
(221, 59, '_sale_price_dates_to', ''),
(222, 59, 'total_sales', '0'),
(223, 59, '_tax_status', 'taxable'),
(224, 59, '_tax_class', ''),
(225, 59, '_manage_stock', 'no'),
(226, 59, '_backorders', 'no'),
(227, 59, '_sold_individually', 'no'),
(228, 59, '_weight', ''),
(229, 59, '_length', ''),
(230, 59, '_width', ''),
(231, 59, '_height', ''),
(232, 59, '_upsell_ids', 'a:0:{}'),
(233, 59, '_crosssell_ids', 'a:0:{}'),
(234, 59, '_purchase_note', ''),
(235, 59, '_default_attributes', 'a:0:{}'),
(236, 59, '_virtual', 'no'),
(237, 59, '_downloadable', 'no'),
(238, 59, '_product_image_gallery', ''),
(239, 59, '_download_limit', '-1'),
(240, 59, '_download_expiry', '-1'),
(241, 59, '_stock', NULL),
(242, 59, '_stock_status', 'instock'),
(243, 59, '_product_version', '3.2.6'),
(244, 59, '_price', ''),
(245, 59, '_edit_lock', '1514045161:1'),
(246, 60, '_order_key', 'wc_order_5a3e7ff130fab'),
(247, 60, '_customer_user', '1'),
(248, 60, '_payment_method', 'cheque'),
(249, 60, '_payment_method_title', 'Check payments'),
(250, 60, '_transaction_id', ''),
(251, 60, '_customer_ip_address', '127.0.0.1'),
(252, 60, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64; rv:57.0) gecko/20100101 firefox/57.0'),
(253, 60, '_created_via', 'checkout'),
(254, 60, '_date_completed', ''),
(255, 60, '_completed_date', ''),
(256, 60, '_date_paid', ''),
(257, 60, '_paid_date', ''),
(258, 60, '_cart_hash', '7352c1401774879267209ac814c2560a'),
(259, 60, '_billing_first_name', 'first name'),
(260, 60, '_billing_last_name', 'last name'),
(261, 60, '_billing_company', 'company'),
(262, 60, '_billing_address_1', 'adresa 1'),
(263, 60, '_billing_address_2', 'adresa 2'),
(264, 60, '_billing_city', 'mures'),
(265, 60, '_billing_state', 'B'),
(266, 60, '_billing_postcode', '123456'),
(267, 60, '_billing_country', 'RO'),
(268, 60, '_billing_email', 'cstn.serban@gmail.com'),
(269, 60, '_billing_phone', '1234567890'),
(270, 60, '_shipping_first_name', ''),
(271, 60, '_shipping_last_name', ''),
(272, 60, '_shipping_company', ''),
(273, 60, '_shipping_address_1', ''),
(274, 60, '_shipping_address_2', ''),
(275, 60, '_shipping_city', ''),
(276, 60, '_shipping_state', ''),
(277, 60, '_shipping_postcode', ''),
(278, 60, '_shipping_country', ''),
(279, 60, '_order_currency', 'RON'),
(280, 60, '_cart_discount', '0'),
(281, 60, '_cart_discount_tax', '0'),
(282, 60, '_order_shipping', '0'),
(283, 60, '_order_shipping_tax', '0'),
(284, 60, '_order_tax', '0'),
(285, 60, '_order_total', '60.00'),
(286, 60, '_order_version', '3.2.6'),
(287, 60, '_prices_include_tax', 'no'),
(288, 60, '_billing_address_index', 'first name last name company adresa 1 adresa 2 mures B 123456 RO cstn.serban@gmail.com 1234567890'),
(289, 60, '_shipping_address_index', '        '),
(290, 60, '_recorded_sales', 'yes'),
(291, 60, '_recorded_coupon_usage_counts', 'yes'),
(292, 60, '_order_stock_reduced', 'yes'),
(293, 60, '_edit_lock', '1514045561:1'),
(294, 60, '_edit_last', '1'),
(296, 61, '_edit_lock', '1514057511:1'),
(297, 61, '_wp_trash_meta_status', 'publish'),
(298, 61, '_wp_trash_meta_time', '1514057511'),
(299, 62, '_edit_last', '1'),
(300, 62, '_edit_lock', '1514057768:1'),
(301, 62, '_wp_page_template', 'default'),
(302, 62, '_wp_trash_meta_status', 'publish'),
(303, 62, '_wp_trash_meta_time', '1514057917'),
(304, 62, '_wp_desired_post_slug', 'asdsadss'),
(306, 35, '_elementor_edit_mode', 'builder'),
(307, 35, '_elementor_css', 'a:4:{s:4:\"time\";i:1514058225;s:5:\"fonts\";a:0:{}s:6:\"status\";s:5:\"empty\";s:3:\"css\";s:0:\"\";}'),
(308, 35, '_wp_trash_meta_status', 'publish'),
(309, 35, '_wp_trash_meta_time', '1514058261'),
(310, 35, '_wp_desired_post_slug', 'contact'),
(311, 64, '_edit_last', '1'),
(312, 64, '_edit_lock', '1514058339:1'),
(313, 64, '_wp_page_template', 'template-fullwidth-no-title.php'),
(314, 66, '_menu_item_type', 'post_type'),
(315, 66, '_menu_item_menu_item_parent', '0'),
(316, 66, '_menu_item_object_id', '64'),
(317, 66, '_menu_item_object', 'page'),
(318, 66, '_menu_item_target', ''),
(319, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(320, 66, '_menu_item_xfn', ''),
(321, 66, '_menu_item_url', ''),
(323, 41, '_edit_lock', '1514058657:1'),
(324, 41, '_edit_last', '1'),
(325, 41, '_wp_page_template', 'template-pagebuilder-full-width.php'),
(326, 68, '_order_key', 'wc_order_5a54fa1111517'),
(327, 68, '_customer_user', '0'),
(328, 68, '_payment_method', 'cheque'),
(329, 68, '_payment_method_title', 'Check payments'),
(330, 68, '_transaction_id', ''),
(331, 68, '_customer_ip_address', '127.0.0.1'),
(332, 68, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64; rv:57.0) gecko/20100101 firefox/57.0'),
(333, 68, '_created_via', 'checkout'),
(334, 68, '_date_completed', ''),
(335, 68, '_completed_date', ''),
(336, 68, '_date_paid', ''),
(337, 68, '_paid_date', ''),
(338, 68, '_cart_hash', '005de3319bde3a21aa516d9a0b288cc1'),
(339, 68, '_billing_first_name', 'coco'),
(340, 68, '_billing_last_name', 'jamsdsd'),
(341, 68, '_billing_company', 'dasdasds'),
(342, 68, '_billing_address_1', 'qqqq'),
(343, 68, '_billing_address_2', ''),
(344, 68, '_billing_city', 'qwqwqwqw'),
(345, 68, '_billing_state', 'B'),
(346, 68, '_billing_postcode', '12313'),
(347, 68, '_billing_country', 'RO'),
(348, 68, '_billing_email', 'csnt.serba@gmail.com'),
(349, 68, '_billing_phone', ''),
(350, 68, '_shipping_first_name', 'coco'),
(351, 68, '_shipping_last_name', 'jamsdsd'),
(352, 68, '_shipping_company', 'dasdasds'),
(353, 68, '_shipping_address_1', 'qqqq'),
(354, 68, '_shipping_address_2', ''),
(355, 68, '_shipping_city', 'qwqwqwqw'),
(356, 68, '_shipping_state', 'B'),
(357, 68, '_shipping_postcode', '12313'),
(358, 68, '_shipping_country', 'RO'),
(359, 68, '_order_currency', 'RON'),
(360, 68, '_cart_discount', '0'),
(361, 68, '_cart_discount_tax', '0'),
(362, 68, '_order_shipping', '0.00'),
(363, 68, '_order_shipping_tax', '0'),
(364, 68, '_order_tax', '0'),
(365, 68, '_order_total', '420.00'),
(366, 68, '_order_version', '3.2.6'),
(367, 68, '_prices_include_tax', 'no'),
(368, 68, '_billing_address_index', 'coco jamsdsd dasdasds qqqq  qwqwqwqw B 12313 RO csnt.serba@gmail.com '),
(369, 68, '_shipping_address_index', 'coco jamsdsd dasdasds qqqq  qwqwqwqw B 12313 RO'),
(370, 68, '_recorded_sales', 'yes'),
(371, 68, '_recorded_coupon_usage_counts', 'yes'),
(372, 68, '_order_stock_reduced', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-23 14:13:11', '2017-12-23 14:13:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-12-23 14:13:11', '2017-12-23 14:13:11', '', 0, 'http://tiov.dev/?p=1', 0, 'post', '', 1),
(2, 1, '2017-12-23 14:13:11', '2017-12-23 14:13:11', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://tiov.dev/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-12-23 14:30:15', '2017-12-23 14:30:15', '', 0, 'http://tiov.dev/?page_id=2', 0, 'page', '', 0),
(26, 1, '2017-12-23 14:27:34', '2017-12-23 14:27:34', 'alabalaportocala', 'Custom Hompage', '', 'publish', 'closed', 'closed', '', 'custom-hompage', '', '', '2017-12-23 14:28:29', '2017-12-23 14:28:29', '', 0, 'http://tiov.dev/?page_id=26', 0, 'page', '', 0),
(27, 1, '2017-12-23 14:27:34', '2017-12-23 14:27:34', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:27:34\"\n    },\n    \"page_on_front\": {\n        \"value\": \"26\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:27:34\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            26\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:27:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cc18a2d9-2b4e-4982-a594-f576c3b96aeb', '', '', '2017-12-23 14:27:34', '2017-12-23 14:27:34', '', 0, 'http://tiov.dev/2017/12/23/cc18a2d9-2b4e-4982-a594-f576c3b96aeb/', 0, 'customize_changeset', '', 0),
(28, 1, '2017-12-23 14:27:34', '2017-12-23 14:27:34', '', 'Custom Hompage', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-12-23 14:27:34', '2017-12-23 14:27:34', '', 26, 'http://tiov.dev/2017/12/23/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-12-23 14:28:29', '2017-12-23 14:28:29', 'alabalaportocala', 'Custom Hompage', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-12-23 14:28:29', '2017-12-23 14:28:29', '', 26, 'http://tiov.dev/2017/12/23/26-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-12-23 14:30:15', '2017-12-23 14:30:15', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://tiov.dev/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-12-23 14:30:15', '2017-12-23 14:30:15', '', 2, 'http://tiov.dev/2017/12/23/2-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-12-23 14:37:23', '2017-12-23 14:37:23', '', 'cropped-raspberry-header.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-raspberry-header-jpg', '', '', '2017-12-23 14:37:23', '2017-12-23 14:37:23', '', 0, 'http://tiov.dev/wp-content/uploads/2017/12/cropped-raspberry-header.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2017-12-23 14:37:50', '2017-12-23 14:37:50', '{\n    \"twentyseventeen::header_image\": {\n        \"value\": \"http://tiov.dev/wp-content/uploads/2017/12/cropped-raspberry-header.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:37:41\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://tiov.dev/wp-content/uploads/2017/12/cropped-raspberry-header.jpg\",\n            \"thumbnail_url\": \"http://tiov.dev/wp-content/uploads/2017/12/cropped-raspberry-header.jpg\",\n            \"timestamp\": 1514039843871,\n            \"attachment_id\": 33,\n            \"width\": 2000,\n            \"height\": 1198\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:37:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f080b61d-ba3b-41a7-ba64-f976720a0347', '', '', '2017-12-23 14:37:50', '2017-12-23 14:37:50', '', 0, 'http://tiov.dev/?p=34', 0, 'customize_changeset', '', 0),
(35, 1, '2017-12-23 14:45:01', '2017-12-23 14:45:01', 'contact page', 'Contact', '', 'trash', 'closed', 'closed', '', 'contact__trashed', '', '', '2017-12-23 21:44:21', '2017-12-23 19:44:21', '', 0, 'http://tiov.dev/?page_id=35', 0, 'page', '', 0),
(36, 1, '2017-12-23 14:45:01', '2017-12-23 14:45:01', 'contact page', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-12-23 14:45:01', '2017-12-23 14:45:01', '', 35, 'http://tiov.dev/2017/12/23/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-12-23 14:46:15', '2017-12-23 14:46:15', '', 'Acasă', '', 'publish', 'closed', 'closed', '', 'acasa', '', '', '2017-12-23 21:48:22', '2017-12-23 19:48:22', '', 0, 'http://tiov.dev/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2017-12-23 16:07:33', '2017-12-23 16:07:33', '', 'Comanda', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2017-12-23 16:07:33', '2017-12-23 16:07:33', '', 0, 'http://tiov.dev/?page_id=39', 0, 'page', '', 0),
(40, 1, '2017-12-23 14:52:27', '2017-12-23 14:52:27', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-12-23 14:52:27', '2017-12-23 14:52:27', '', 0, 'http://tiov.dev/shop/', 0, 'page', '', 0),
(41, 1, '2017-12-23 14:52:27', '2017-12-23 14:52:27', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2017-12-23 21:53:02', '2017-12-23 19:53:02', '', 0, 'http://tiov.dev/cart/', 0, 'page', '', 0),
(42, 1, '2017-12-23 14:52:27', '2017-12-23 14:52:27', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2017-12-23 14:52:27', '2017-12-23 14:52:27', '', 0, 'http://tiov.dev/checkout/', 0, 'page', '', 0),
(43, 1, '2017-12-23 14:52:27', '2017-12-23 14:52:27', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2017-12-23 14:52:27', '2017-12-23 14:52:27', '', 0, 'http://tiov.dev/my-account/', 0, 'page', '', 0),
(44, 1, '2017-12-23 16:08:44', '2017-12-23 16:08:44', 'zmeurică fără frică', 'Zmeură', '', 'publish', 'open', 'closed', '', 'zmeura', '', '', '2017-12-23 16:25:34', '2017-12-23 16:25:34', '', 0, 'http://tiov.dev/?post_type=product&#038;p=44', 0, 'product', '', 0),
(45, 1, '2017-12-23 14:58:40', '2017-12-23 14:58:40', '', 'raspberry-basket', '', 'inherit', 'open', 'closed', '', 'raspberry-basket', '', '', '2017-12-23 14:58:40', '2017-12-23 14:58:40', '', 44, 'http://tiov.dev/wp-content/uploads/2017/12/raspberry-basket.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2017-12-23 15:09:33', '2017-12-23 15:09:33', '{\n    \"shop-isle::shop_isle_socials\": {\n        \"value\": \"[{\\\"icon_value\\\":\\\"social_facebook\\\",\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_socials\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"icon_value\\\":\\\"social_twitter\\\",\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_socials\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"icon_value\\\":\\\"social_dribbble\\\",\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_socials\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"icon_value\\\":\\\"social_skype\\\",\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_socials\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 15:08:32\"\n    },\n    \"shop-isle::shop_isle_big_title_image\": {\n        \"value\": \"http://tiov.dev/wp-content/uploads/2017/12/cropped-raspberry-header.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 15:08:32\"\n    },\n    \"shop-isle::shop_isle_banners\": {\n        \"value\": \"[{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://tiov.dev/wp-content/themes/shop-isle/assets/images/banner1.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://tiov.dev/wp-content/themes/shop-isle/assets/images/banner2.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://tiov.dev/wp-content/themes/shop-isle/assets/images/banner3.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 15:08:32\"\n    },\n    \"shop-isle::shop_isle_big_title_title\": {\n        \"value\": \"Zmeuric\\u0103\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 15:09:32\"\n    },\n    \"shop-isle::shop_isle_big_title_subtitle\": {\n        \"value\": \"Totul despre zmeur\\u0103\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 15:09:32\"\n    },\n    \"shop-isle::shop_isle_big_title_button_label\": {\n        \"value\": \"Despre Noi\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 15:09:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '46c9fff9-589b-4335-8b11-6140b20b36d9', '', '', '2017-12-23 15:09:33', '2017-12-23 15:09:33', '', 0, 'http://tiov.dev/?p=46', 0, 'customize_changeset', '', 0),
(47, 1, '2017-12-23 15:11:38', '2017-12-23 15:11:38', '{\n    \"blogname\": {\n        \"value\": \"Zmeuric\\u0103\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 15:11:38\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Totul despre zmeur\\u0103\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 15:11:38\"\n    },\n    \"shop-isle::shop_isle_banners\": {\n        \"value\": \"[{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://tiov.dev/wp-content/themes/shop-isle/assets/images/banner1.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://tiov.dev/wp-content/themes/shop-isle/assets/images/banner2.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://tiov.dev/wp-content/themes/shop-isle/assets/images/banner3.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 15:11:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1e4c0196-83ac-494d-ade3-9769549bfd2e', '', '', '2017-12-23 15:11:38', '2017-12-23 15:11:38', '', 0, 'http://tiov.dev/2017/12/23/1e4c0196-83ac-494d-ade3-9769549bfd2e/', 0, 'customize_changeset', '', 0),
(50, 1, '2017-12-23 15:59:01', '2017-12-23 15:59:01', '', 'raspberry-logo', '', 'inherit', 'open', 'closed', '', 'raspberry-logo-2', '', '', '2017-12-23 15:59:01', '2017-12-23 15:59:01', '', 0, 'http://tiov.dev/wp-content/uploads/2017/12/raspberry-logo.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2017-12-23 16:02:40', '2017-12-23 16:02:40', '', 'Magazin', '', 'publish', 'closed', 'closed', '', '55', '', '', '2017-12-23 21:48:22', '2017-12-23 19:48:22', '', 0, 'http://tiov.dev/?p=55', 3, 'nav_menu_item', '', 0),
(58, 1, '2017-12-23 16:07:33', '2017-12-23 16:07:33', '', 'Comanda', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2017-12-23 16:07:33', '2017-12-23 16:07:33', '', 39, 'http://tiov.dev/2017/12/23/39-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-12-23 16:08:13', '2017-12-23 16:08:13', 'caca', 'caca', '', 'publish', 'open', 'closed', '', 'caca', '', '', '2017-12-23 16:08:13', '2017-12-23 16:08:13', '', 0, 'http://tiov.dev/?post_type=product&#038;p=59', 0, 'product', '', 0),
(60, 1, '2017-12-23 16:10:00', '2017-12-23 16:10:00', '', 'Order &ndash; December 23, 2017 @ 04:10 PM', 'sdsflkjsdfg', 'wc-on-hold', 'closed', 'closed', 'order_5a3e7ff13102b', 'order-dec-23-2017-0410-pm', '', '', '2017-12-23 16:14:51', '2017-12-23 16:14:51', '', 0, 'http://tiov.dev/?post_type=shop_order&#038;p=60', 0, 'shop_order', '', 2),
(61, 1, '2017-12-23 21:31:51', '2017-12-23 19:31:51', '{\n    \"shop-isle::shop_isle_banners\": {\n        \"value\": \"[{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://tiov.dev/wp-content/themes/shop-isle/assets/images/banner1.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://tiov.dev/wp-content/themes/shop-isle/assets/images/banner2.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://tiov.dev/wp-content/themes/shop-isle/assets/images/banner3.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 19:29:35\"\n    },\n    \"shop-isle::shop_isle_404_text\": {\n        \"value\": \"Pagina c\\u0103utat\\u0103 nu exist\\u0103 pe acest site.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 19:31:51\"\n    },\n    \"shop-isle::shop_isle_disable_preloader\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 19:31:35\"\n    },\n    \"shop-isle::shop_isle_404_label\": {\n        \"value\": \"\\u00cenapoi acas\\u0103\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 19:31:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '92fdbaff-18ed-4882-a3cb-67f511fc0af6', '', '', '2017-12-23 21:31:51', '2017-12-23 19:31:51', '', 0, 'http://tiov.dev/?p=61', 0, 'customize_changeset', '', 0),
(62, 1, '2017-12-23 21:36:44', '2017-12-23 19:36:44', 'qwe', 'asdsadss', '', 'trash', 'closed', 'closed', '', 'asdsadss__trashed', '', '', '2017-12-23 21:38:37', '2017-12-23 19:38:37', '', 0, 'http://tiov.dev/?page_id=62', 0, 'page', '', 0),
(63, 1, '2017-12-23 21:36:44', '2017-12-23 19:36:44', 'qwe', 'asdsadss', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2017-12-23 21:36:44', '2017-12-23 19:36:44', '', 62, 'http://tiov.dev/2017/12/23/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-12-23 21:44:54', '2017-12-23 19:44:54', 'new contact', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-12-23 21:44:54', '2017-12-23 19:44:54', '', 0, 'http://tiov.dev/?page_id=64', 0, 'page', '', 0),
(65, 1, '2017-12-23 21:44:54', '2017-12-23 19:44:54', 'new contact', 'Contact', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2017-12-23 21:44:54', '2017-12-23 19:44:54', '', 64, 'http://tiov.dev/2017/12/23/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-12-23 21:48:22', '2017-12-23 19:48:22', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2017-12-23 21:48:22', '2017-12-23 19:48:22', '', 0, 'http://tiov.dev/?p=66', 2, 'nav_menu_item', '', 0),
(67, 1, '2017-12-23 21:53:02', '2017-12-23 19:53:02', '[woocommerce_cart]', 'Cart', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-12-23 21:53:02', '2017-12-23 19:53:02', '', 41, 'http://tiov.dev/2017/12/23/41-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-01-09 19:21:21', '2018-01-09 17:21:21', '', 'Order &ndash; January 9, 2018 @ 07:21 PM', '', 'wc-on-hold', 'open', 'closed', 'order_5a54fa111158b', 'order-jan-09-2018-0521-pm', '', '', '2018-01-09 19:21:21', '2018-01-09 17:21:21', '', 0, 'http://tiov.localhost/?post_type=shop_order&#038;p=68', 0, 'shop_order', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'product_count_product_tag', '1'),
(2, 17, 'product_count_product_tag', '1'),
(3, 18, 'product_count_product_tag', '1'),
(4, 19, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(7, 'exclude-from-search', 'exclude-from-search', 0),
(8, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(9, 'featured', 'featured', 0),
(10, 'outofstock', 'outofstock', 0),
(11, 'rated-1', 'rated-1', 0),
(12, 'rated-2', 'rated-2', 0),
(13, 'rated-3', 'rated-3', 0),
(14, 'rated-4', 'rated-4', 0),
(15, 'rated-5', 'rated-5', 0),
(16, 'zmeură', 'zmeura', 0),
(17, 'zeura', 'zeura', 0),
(18, 'raspberry', 'raspberry', 0),
(19, 'sanatate', 'sanatate', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(38, 2, 0),
(44, 3, 0),
(44, 16, 0),
(44, 17, 0),
(44, 18, 0),
(44, 19, 0),
(55, 2, 0),
(59, 3, 0),
(66, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'product_type', '', 0, 2),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_tag', '', 0, 1),
(17, 17, 'product_tag', '', 0, 1),
(18, 18, 'product_tag', '', 0, 1),
(19, 19, 'product_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'first name'),
(3, 1, 'last_name', 'last name'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"7e41d1b6ff395d22390edec986c67e83095a64e5a1e84c9203d3856e650b7f08\";a:4:{s:10:\"expiration\";i:1514211206;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1514038406;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1514039952'),
(25, 1, 'last_update', '1514045425'),
(26, 1, 'billing_first_name', 'first name'),
(27, 1, 'billing_last_name', 'last name'),
(28, 1, 'billing_company', 'company'),
(29, 1, 'billing_address_1', 'adresa 1'),
(30, 1, 'billing_address_2', 'adresa 2'),
(31, 1, 'billing_city', 'mures'),
(32, 1, 'billing_state', 'B'),
(33, 1, 'billing_postcode', '123456'),
(34, 1, 'billing_country', 'RO'),
(35, 1, 'billing_email', 'cstn.serban@gmail.com'),
(36, 1, 'billing_phone', '1234567890'),
(37, 1, 'shipping_method', ''),
(39, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"f7177163c833dff4b38fc8d2872f1ec6\";a:10:{s:3:\"key\";s:32:\"f7177163c833dff4b38fc8d2872f1ec6\";s:10:\"product_id\";i:44;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:60;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:60;s:8:\"line_tax\";i:0;}}}'),
(40, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:57:\"postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(41, 1, 'screen_layout_page', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BuXHPk/T2wPhCSkmnrwqJmTmenNgT7/', 'admin', 'cstn.serban@gmail.com', '', '2017-12-23 14:13:11', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '44'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '60'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '60'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, 'method_id', ''),
(11, 2, 'cost', '0'),
(12, 2, 'total_tax', '0'),
(13, 2, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(14, 3, '_product_id', '44'),
(15, 3, '_variation_id', '0'),
(16, 3, '_qty', '7'),
(17, 3, '_tax_class', ''),
(18, 3, '_line_subtotal', '420'),
(19, 3, '_line_subtotal_tax', '0'),
(20, 3, '_line_total', '420'),
(21, 3, '_line_tax', '0'),
(22, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(23, 4, 'method_id', 'local_pickup:1'),
(24, 4, 'cost', '0.00'),
(25, 4, 'total_tax', '0'),
(26, 4, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(27, 4, 'Items', 'Zmeură &times; 7');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Zmeură', 'line_item', 60),
(2, 'Shipping', 'shipping', 60),
(3, 'Zmeură', 'line_item', 68),
(4, 'Local pickup', 'shipping', 68);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(16, 'c3de7fd7d088d70e5c983f370ed1d2af', 'a:14:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:668:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_4bf0530e3c45c5a3ca112e88ebc0d134\";s:5:\"rates\";a:2:{s:14:\"local_pickup:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:14:\"local_pickup:1\";s:9:\"method_id\";s:12:\"local_pickup\";s:11:\"instance_id\";i:1;s:5:\"label\";s:12:\"Local pickup\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:17:\"Zmeură &times; 7\";}}s:11:\"flat_rate:2\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:2\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:2;s:5:\"label\";s:9:\"Flat rate\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:17:\"Zmeură &times; 7\";}}}}\";s:25:\"previous_shipping_methods\";s:65:\"a:1:{i:0;a:2:{i:0;s:14:\"local_pickup:1\";i:1;s:11:\"flat_rate:2\";}}\";s:23:\"chosen_shipping_methods\";s:32:\"a:1:{i:0;s:14:\"local_pickup:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:2;}\";s:8:\"customer\";s:693:\"a:25:{s:2:\"id\";i:0;s:8:\"postcode\";s:5:\"12313\";s:4:\"city\";s:8:\"qwqwqwqw\";s:9:\"address_1\";s:4:\"qqqq\";s:7:\"address\";s:4:\"qqqq\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:1:\"B\";s:7:\"country\";s:2:\"RO\";s:17:\"shipping_postcode\";s:5:\"12313\";s:13:\"shipping_city\";s:8:\"qwqwqwqw\";s:18:\"shipping_address_1\";s:4:\"qqqq\";s:16:\"shipping_address\";s:4:\"qqqq\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:1:\"B\";s:16:\"shipping_country\";s:2:\"RO\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:1;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:6:\"cheque\";s:10:\"wc_notices\";N;s:22:\"order_awaiting_payment\";N;}', 1515691234);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Romania', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'RO', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'local_pickup', 1, 1),
(1, 2, 'flat_rate', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
