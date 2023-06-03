-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 11 nov. 2022 à 14:51
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce_app`
--

-- --------------------------------------------------------

--
-- Structure de la table `attributs`
--

CREATE TABLE `attributs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `attribut_products`
--

CREATE TABLE `attribut_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribut_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `total`, `created_at`, `updated_at`) VALUES
(13, 22, 0.00, '2022-10-14 14:22:47', '2022-10-14 14:22:47');

-- --------------------------------------------------------

--
-- Structure de la table `cart_lines`
--

CREATE TABLE `cart_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'book in arabic', '2022-06-30 09:38:41', '2022-06-30 09:38:41'),
(3, 'thrillers', '2022-06-30 09:39:11', '2022-06-30 09:39:11'),
(4, 'politics and history', '2022-06-30 09:42:10', '2022-06-30 09:42:10'),
(6, 'Novels', '2022-06-30 09:45:31', '2022-06-30 09:45:31'),
(8, 'science and personal development', '2022-06-30 09:47:30', '2022-06-30 09:47:30'),
(10, 'Mode femme', '2022-10-13 19:55:23', '2022-10-13 19:55:23'),
(11, 'Mode homme', '2022-10-13 19:55:32', '2022-10-13 19:55:32'),
(12, 'Telephones', '2022-10-13 19:56:10', '2022-10-13 19:56:10'),
(13, 'Électronique', '2022-10-13 19:56:21', '2022-10-13 19:56:21'),
(14, 'Jouets et enfants', '2022-10-13 19:56:39', '2022-10-13 19:56:39'),
(15, 'Autos et motos', '2022-10-13 19:56:42', '2022-10-13 19:56:42'),
(17, 'ordinateur', '2022-10-14 13:49:18', '2022-10-14 13:49:18');

-- --------------------------------------------------------

--
-- Structure de la table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(62, 40, 10, NULL, NULL),
(63, 40, 11, NULL, NULL),
(64, 41, 10, NULL, NULL),
(65, 42, 10, NULL, NULL),
(66, 43, 10, NULL, NULL),
(67, 44, 10, NULL, NULL),
(70, 46, 11, NULL, NULL),
(71, 45, 11, NULL, NULL),
(72, 47, 11, NULL, NULL),
(73, 48, 11, NULL, NULL),
(74, 49, 11, NULL, NULL),
(76, 50, 12, NULL, NULL),
(77, 51, 12, NULL, NULL),
(78, 52, 12, NULL, NULL),
(79, 53, 12, NULL, NULL),
(80, 54, 12, NULL, NULL),
(84, 58, 13, NULL, NULL),
(85, 55, 17, NULL, NULL),
(86, 56, 17, NULL, NULL),
(87, 57, 17, NULL, NULL),
(88, 59, 13, NULL, NULL),
(89, 60, 13, NULL, NULL),
(90, 61, 14, NULL, NULL),
(91, 62, 14, NULL, NULL),
(92, 63, 14, NULL, NULL),
(93, 64, 14, NULL, NULL),
(94, 65, 14, NULL, NULL),
(95, 66, 14, NULL, NULL),
(96, 67, 14, NULL, NULL),
(97, 68, 14, NULL, NULL),
(98, 69, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(13, 22, '2022-10-14 14:22:47', '2022-10-14 14:22:47');

-- --------------------------------------------------------

--
-- Structure de la table `favorite_lines`
--

CREATE TABLE `favorite_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_04_19_145909_create_categories_table', 1),
(11, '2022_04_19_150236_create_products_table', 1),
(12, '2022_04_19_150757_create_attributs_table', 1),
(13, '2022_04_26_235947_create_notifications_table', 2),
(14, '2022_05_20_111726_create_sub_categories_table', 3),
(15, '2022_07_10_132642_add_users', 4);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0cad29a08796a10e839178641b598f368e5092adabb046119ceec95332b61478af18180545f8f7db', 19, 1, 'walid', '[]', 0, '2022-07-10 17:41:35', '2022-07-10 17:41:35', '2023-07-10 18:41:35'),
('2c5b628495a98f25e9f1bacfc337253ca58f99dececdce70e906fd9ae5e890fdd54c9ae4aa722fa8', 3, 1, 'walid', '[]', 0, '2022-07-10 17:22:25', '2022-07-10 17:22:25', '2023-07-10 18:22:25'),
('3ef56ce5703d89b3fd26d97b3bc3509e3d4e6d9593a0cca55937e9e9fff0541378b2fe074deaa1cb', 3, 1, 'walid', '[]', 0, '2022-07-10 17:41:18', '2022-07-10 17:41:18', '2023-07-10 18:41:18'),
('404792d26d95e6c076fbb55317dd326fc38ae87654c99517405c41f8de632f97577bc932518f2e4f', 3, 1, 'walid', '[]', 0, '2022-07-10 17:25:23', '2022-07-10 17:25:23', '2023-07-10 18:25:23'),
('56083669b317f92a892d8285a7e014f210901b15b2514e84f34eaad545ed43743bfe84ffaa711348', 3, 1, 'walid', '[]', 0, '2022-07-10 18:30:38', '2022-07-10 18:30:38', '2023-07-10 19:30:38'),
('73e61c7c33cab8d153cbe7e70479e4b2b68e4d4e43324b8979054b6d0b15a724d282577e237b9ac9', 3, 1, 'walid', '[]', 0, '2022-07-10 17:24:16', '2022-07-10 17:24:16', '2023-07-10 18:24:16'),
('8552399be69cf83dbe305e9889b095d1c1f9c6223b6e3556db0117c270d2e9c85204cbacbe494924', 19, 1, 'walid', '[]', 0, '2022-07-10 17:21:05', '2022-07-10 17:21:05', '2023-07-10 18:21:05'),
('88652223ead98d62dc3389775a9b5f50bce090b5c4dbf481ae783dd055592c3cb3e4be003da84c14', 3, 1, 'walid', '[]', 0, '2022-07-10 17:32:45', '2022-07-10 17:32:45', '2023-07-10 18:32:45'),
('c4d1a870e30387122bc8132abbfb3c70fc38f1fda73aacc402067b45ff2bd31b36c3f7090562cfb1', 3, 1, 'walid', '[]', 0, '2022-07-10 18:29:23', '2022-07-10 18:29:23', '2023-07-10 19:29:23'),
('c70c9fc93c80e4833a28974e3063d6d034479aeb4b31bd5c1a637fa216aea9f3b63a2f59eca772e2', 19, 1, 'walid', '[]', 0, '2022-07-10 17:19:10', '2022-07-10 17:19:10', '2023-07-10 18:19:10'),
('e0d1b3ad2ba99a32f45a525f6e1b70d8028b1892a0b03d7240dcb3960f5ea9e63a56582440801873', 3, 1, 'walid', '[]', 0, '2022-07-10 17:22:08', '2022-07-10 17:22:08', '2023-07-10 18:22:08');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'BxAExYoGE7tN81BDRuNOYgg06cYksdTjnucyCZYf', NULL, 'http://localhost', 1, 0, 0, '2022-07-10 16:02:05', '2022-07-10 16:02:05'),
(2, NULL, 'Laravel Password Grant Client', '4pameEU75Cd6ZPo3U591Ii11jZYVsvwFnxdX4BMY', 'users', 'http://localhost', 0, 1, 0, '2022-07-10 16:02:05', '2022-07-10 16:02:05');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-07-10 16:02:05', '2022-07-10 16:02:05');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `visitor` int(12) NOT NULL DEFAULT 0,
  `total` double(8,2) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_notes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'order reviews',
  `payment_option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `visitor`, `total`, `name`, `phone`, `address`, `order_notes`, `order_status`, `payment_option`, `created_at`, `updated_at`) VALUES
(27, 22, 0, 560.00, 'Oualid Belaid', 343534534, 'cgn', 'fgndfgn', 'order reviews', 'credit', '2022-11-05 15:16:20', '2022-11-05 15:16:20');

-- --------------------------------------------------------

--
-- Structure de la table `order_lines`
--

CREATE TABLE `order_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `promotion_value` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order_lines`
--

INSERT INTO `order_lines` (`id`, `product_id`, `order_id`, `quantity`, `promotion_value`, `created_at`, `updated_at`) VALUES
(65, 68, 27, 1, 0.00, '2022-11-05 15:16:20', '2022-11-05 15:16:20');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `photo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `min_quantity` int(11) NOT NULL DEFAULT 5,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `photo`, `amount`, `min_quantity`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(40, 'zhcth store', 2800.00, 'uploadsbk/products/1665751298Zhcth-Store-t-shirt-femme-impression-jet-d-encre-num-rique-taille-am-ricaine.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665751298Zhcth-Store-t-shirt-femme-impression-jet-d-encre-num-rique-taille-am-ricaine.jpg_Q90.jpg_.webp&&', 20, 5, 'zhcth store – t-shirt femme, impression à jet d\'encre numérique, taille américaine', 'zhcth-store', '2022-10-13 20:15:36', '2022-10-14 11:41:38'),
(41, 'sweat-shirt', 5500.00, 'uploadsbk/products/1665750156Sweat-shirt-en-Velours-avec-Fermeture-clair-pour-Femme-V-tement-de-Sport-D-contract-et.jpg_Q90.jpg_ (1).jfif&&uploadsbk/products/1665750156Sweat-shirt-en-Velours-avec-Fermeture-clair-pour-Femme-V-tement-de-Sport-D-contract-et.jpg_Q90.jpg_ (2).jfif&&uploadsbk/products/1665750156Sweat-shirt-en-Velours-avec-Fermeture-clair-pour-Femme-V-tement-de-Sport-D-contract-et.jpg_Q90.jpg_.jfif&&', 12, 5, 'sweat-shirt en velours avec fermeture Éclair pour femme, vêtement de sport décontracté et tendance avec capuche, deux pièces, collection printemps et automne 2022', 'sweat-shirt', '2022-10-14 11:22:36', '2022-10-14 11:22:36'),
(42, 'sweat-shirt à capuche', 1380.00, 'uploadsbk/products/1665750658Sweat-shirt-capuche-col-rond-pour-femmes-manches-longues-d-contract-rose-avec-lettres-imprim-es.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665750658Sweat-shirt-capuche-col-rond-pour-femmes-manches-longues-d-contract-rose-avec-lettres-imprim-es.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665750658Sweat-shirt-capuche-col-rond-pour-femmes-manches-longues-d-contract-rose-avec-lettres-imprim-es.jpg_Q90.jpg_.webp&&', 12, 5, 'sweat-shirt à capuche à col rond pour femmes, manches longues, décontracté, rose, avec lettres imprimées, grande taille, livraison directe', 'sweat-shirt-a-capuche', '2022-10-14 11:30:58', '2022-10-14 11:30:58'),
(43, 'sweat-shirt uni', 1700.00, 'uploadsbk/products/1665750793Sweat-Shirt-uni-Streetwear-d-contract-esth-tique-mode-cor-enne-printemps-v-tements-Vintage-pour.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665750793Sweat-Shirt-uni-Streetwear-d-contract-esth-tique-mode-cor-enne-printemps-v-tements-Vintage-pour.jpg_Q90.jpg_.webp&&', 32, 5, 'sweat-shirt uni, streetwear, décontracté, esthétique, mode coréenne, printemps, vêtements vintage pour femmes', 'sweat-shirt-uni', '2022-10-14 11:33:13', '2022-10-14 11:33:13'),
(44, 'manteau réfléchissant', 4594.00, 'uploadsbk/products/1665750901Manteau-r-fl-chissant-bouffant-pour-femme-veste-d-hiver-de-Style-cor-en-Parka-en.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665750901Manteau-r-fl-chissant-bouffant-pour-femme-veste-d-hiver-de-Style-cor-en-Parka-en.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665750901Manteau-r-fl-chissant-bouffant-pour-femme-veste-d-hiver-de-Style-cor-en-Parka-en.jpg_Q90.jpg_.webp&&', 32, 5, 'manteau réfléchissant bouffant pour femme, veste d\'hiver de style coréen, parka en duvet, grande taille, nouvelle collection', 'manteau-reflechissant', '2022-10-14 11:35:01', '2022-10-14 11:35:01'),
(45, 'ccm – sweat', 1700.00, 'uploadsbk/products/1665751004CCM-sweat-capuche-manches-longues-pour-homme-haut-d-contract-surv-tement-automne-et-printemps.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665751004CCM-sweat-capuche-manches-longues-pour-homme-haut-d-contract-surv-tement-automne-et-printemps.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665751004CCM-sweat-capuche-manches-longues-pour-homme-haut-d-contract-surv-tement-automne-et-printemps.jpg_Q90.jpg_.webp&&', 32, 5, 'ccm – sweat à capuche à manches longues pour homme, haut décontracté, survêtement, automne et printemps', 'ccm-sweat', '2022-10-14 11:36:44', '2022-10-14 11:36:44'),
(46, 'chemise hawaïenne', 700.00, 'uploadsbk/products/1665751103Chemise-hawa-enne-fleurs-pour-hommes-v-tements-amples-et-respirants-chemises-d-t-d-contract.jpg_Q90.jpg_ (1).jfif&&uploadsbk/products/1665751103Chemise-hawa-enne-fleurs-pour-hommes-v-tements-amples-et-respirants-chemises-d-t-d-contract.jpg_Q90.jpg_.jfif&&uploadsbk/products/1665751103Chemise-hawa-enne-fleurs-pour-hommes-v-tements-amples-et-respirants-chemises-d-t-d-contract.jpg_Q90.jpg_.webp&&', 32, 5, 'chemise hawaïenne à fleurs pour hommes, vêtements amples et respirants, chemises d\'été décontractées à manches courtes, 5xl, 2022', 'chemise-hawaienne', '2022-10-14 11:38:23', '2022-10-14 11:38:23'),
(47, 'zhcth store', 3000.00, 'uploadsbk/products/1665751493Zhcth-Store-chemise-Inaka-pour-hommes-et-femmes-t-shirt-surdimensionn-avec-impression-jet-d-encre.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665751493Zhcth-Store-chemise-Inaka-pour-hommes-et-femmes-t-shirt-surdimensionn-avec-impression-jet-d-encre.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665751493Zhcth-Store-chemise-Inaka-pour-hommes-et-femmes-t-shirt-surdimensionn-avec-impression-jet-d-encre.jpg_Q90.jpg_.webp&&', 23, 5, 'zhcth store – chemise inaka pour hommes et femmes, t-shirt surdimensionné avec impression à jet d\'encre numérique, saison 14 école, premium', 'zhcth-store', '2022-10-14 11:44:53', '2022-10-14 11:44:53'),
(48, 'sweat à capuche', 1099.00, 'uploadsbk/products/1665751595Sweat-capuche-homme-femme-unisexe-et-d-contract-avec-dessin-anim-3D-Sasuke-Kakashi.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665751595Sweat-capuche-homme-femme-unisexe-et-d-contract-avec-dessin-anim-3D-Sasuke-Kakashi.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665751595Sweat-capuche-homme-femme-unisexe-et-d-contract-avec-dessin-anim-3D-Sasuke-Kakashi.jpg_Q90.jpg_.webp&&', 23, 5, 'sweat à capuche homme/femme, unisexe et décontracté, avec dessin animé 3d sasuke/kakashi', 'sweat-a-capuche', '2022-10-14 11:46:35', '2022-10-14 11:46:35'),
(49, 'veste en coton', 1200.00, 'uploadsbk/products/1665751739Veste-en-coton-pais-pour-homme-coupe-Slim-col-montant-fermeture-clair-solide-pull-chaud-nouvelle.jpg_640x640 (1).webp&&uploadsbk/products/1665751739Veste-en-coton-pais-pour-homme-coupe-Slim-col-montant-fermeture-clair-solide-pull-chaud-nouvelle.jpg_640x640.webp&&uploadsbk/products/1665751739Veste-en-coton-pais-pour-homme-coupe-Slim-col-montant-fermeture-clair-solide-pull-chaud-nouvelle.jpg_Q90.jpg_.jfif&&', 23, 5, 'veste en coton épais pour homme, coupe slim, col montant, fermeture éclair, solide, pull chaud, nouvelle collection automne hiver', 'veste-en-coton', '2022-10-14 11:48:59', '2022-10-14 11:48:59'),
(50, 'lenovo – écouteurs', 1999.00, 'uploadsbk/products/1665751884Lenovo-couteurs-sans-fil-Bluetooth-5-3-v-ritable-oreillettes-avec-bouton-micro-r-duction-du.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665751884Lenovo-couteurs-sans-fil-Bluetooth-5-3-v-ritable-oreillettes-avec-bouton-micro-r-duction-du.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665751884Lenovo-couteurs-sans-fil-Bluetooth-5-3-v-ritable-oreillettes-avec-bouton-micro-r-duction-du.jpg_Q90.jpg_.webp&&', 23, 5, 'lenovo – écouteurs sans fil bluetooth 5.3, véritable oreillettes, avec bouton micro, réduction du bruit, étanche, xt80', 'lenovo-ecouteurs', '2022-10-14 11:51:24', '2022-10-14 11:51:24'),
(51, 'joyroom – support', 3800.00, 'uploadsbk/products/1665752155Joyroom-Support-de-t-l-phone-de-voiture-15W-chargeur-sans-fil-pour-tableau-de-bord.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665752155Joyroom-Support-de-t-l-phone-de-voiture-15W-chargeur-sans-fil-pour-tableau-de-bord.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665752155Joyroom-Support-de-t-l-phone-de-voiture-15W-chargeur-sans-fil-pour-tableau-de-bord.jpg_Q90.jpg_.webp&&', 23, 5, 'joyroom – support de téléphone de voiture 15w, chargeur sans fil pour tableau de bord, évacuation de l\'air stable et rotatif', 'joyroom-support', '2022-10-14 11:55:55', '2022-10-14 11:55:55'),
(52, 'coque souple', 800.00, 'uploadsbk/products/1665752279Coque-souple-en-Silicone-liquide-pour-iPhone-compatible-mod-les-6-6S-Plus-8-7-8.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665752279Coque-souple-en-Silicone-liquide-pour-iPhone-compatible-mod-les-6-6S-Plus-8-7-8.jpg_Q90.jpg_.webp&&', 23, 5, 'coque souple en silicone liquide pour iphone, compatible modèles 6, 6s plus, 8, 7, 8, 12 pro max, mini, 11 pro, x, xr, xs max, se 2020', 'coque-souple', '2022-10-14 11:57:59', '2022-10-14 11:57:59'),
(53, 'souple en silicone', 800.00, 'uploadsbk/products/1665752485Pour-Xiaomi-Redmi-Note-8-Pro-tui-Souple-En-Silicone-tui-de-T-l-phone-Pour.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665752485Pour-Xiaomi-Redmi-Note-8-Pro-tui-Souple-En-Silicone-tui-de-T-l-phone-Pour.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665752485Pour-Xiaomi-Redmi-Note-8-Pro-tui-Souple-En-Silicone-tui-de-T-l-phone-Pour.jpg_Q90.jpg_.webp&&', 23, 5, 'pour xiaomi redmi note 8 pro Étui souple en silicone Étui de téléphone pour xiaomi redmi note 8 t 8 t sur redmi note 8 pro couverture arrière coque', 'souple-en-silicone', '2022-10-14 12:00:56', '2022-10-14 12:01:25'),
(54, 'coque arrière souple', 800.00, 'uploadsbk/products/1665752604Coque-arri-re-souple-en-Silicone-pour-Samsung-Galaxy-pour-mod-les-S22-S21-S20-FE.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665752604Coque-arri-re-souple-en-Silicone-pour-Samsung-Galaxy-pour-mod-les-S22-S21-S20-FE.jpg_Q90.jpg_.webp&&', 23, 5, 'coque arrière souple en silicone pour samsung galaxy, pour modèles s22, s21, s20, fe plus, ultra-mince', 'coque-arriere-souple', '2022-10-14 12:03:24', '2022-10-14 12:03:24'),
(55, 'mc 515 support', 2500.00, 'uploadsbk/products/1665755336MC-515-Support-pour-ordinateur-portable-Support-pour-ordinateur-portable-r-glable-en-alliage-d-aluminium.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665755336MC-515-Support-pour-ordinateur-portable-Support-pour-ordinateur-portable-r-glable-en-alliage-d-aluminium.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665755336MC-515-Support-pour-ordinateur-portable-Support-pour-ordinateur-portable-r-glable-en-alliage-d-aluminium.jpg_Q90.jpg_.webp&&', 23, 5, 'mc 515 support pour ordinateur portable support pour ordinateur portable réglable en alliage d\'aluminium compatible avec un support pour ordinateur portable portable pour ordinateur portable de 10 à 17 pouces', 'mc-515-support', '2022-10-14 12:31:55', '2022-10-14 12:48:56'),
(56, 'carte mère', 23700.00, 'uploadsbk/products/1665758447MACHINISTE-X99-Carte-M-re-LGA-2011-3-Kit-avec-Xeon-E5-2670-V3-Processeur-16.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665758447MACHINISTE-X99-Carte-M-re-LGA-2011-3-Kit-avec-Xeon-E5-2670-V3-Processeur-16.jpg_Q90.jpg_.webp&&uploadsbk/products/1665758447MACHINISTE-X99-Carte-M-re-LGA-2011-3-Kit-avec-Xeon-E5-2670-V3-Processeur-16.png_.webp&&', 2, 5, 'machiniste x99 carte mère lga 2011-3 kit avec xeon e5 2670 v3 processeur 16 go (8g * 2) ddr4 mémoire ecc combo usb3.0 atx mr9a-pro', 'carte-mere', '2022-10-14 13:40:47', '2022-10-14 13:40:47'),
(57, 'clavier mécanique', 13900.00, 'uploadsbk/products/1665758797EPOMAKER-Theory-capuchons-de-clavier-m-canique-filaire-MDA-PBT-75-Ghz-Bluetooth-2-4-rvb.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665758797EPOMAKER-Theory-capuchons-de-clavier-m-canique-filaire-MDA-PBT-75-Ghz-Bluetooth-2-4-rvb.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665758797EPOMAKER-Theory-capuchons-de-clavier-m-canique-filaire-MDA-PBT-75-Ghz-Bluetooth-2-4-rvb.jpg_Q90.jpg_.webp&&', 23, 5, 'epomaker theory – capuchons de clavier mécanique filaire mda pbt, 75% ghz, bluetooth 2.4, rvb, échange à chaud, contrôle des boutons, ansi iso, th80 5.0', 'clavier-mecanique', '2022-10-14 13:46:37', '2022-10-14 13:46:37'),
(58, 'support d\'éclairage en fiber', 920.00, 'uploadsbk/products/1665758928Ulanzi-support-d-clairage-en-Fiber-de-carbone-MT-49-M-tr-pied-Portable-pour-photographie.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665758928Ulanzi-support-d-clairage-en-Fiber-de-carbone-MT-49-M-tr-pied-Portable-pour-photographie.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665758928Ulanzi-support-d-clairage-en-Fiber-de-carbone-MT-49-M-tr-pied-Portable-pour-photographie.jpg_Q90.jpg_.webp&&', 33, 5, 'ulanzi – support d\'éclairage en fiber de carbone mt-49 m trépied portable pour photographie monopode de voyage boîte à lumière flash led 1.9', 'support-declairage-en-fiber', '2022-10-14 13:48:48', '2022-10-14 13:48:48'),
(59, 'sac à dos étanche', 11650.00, 'uploadsbk/products/1665759166Sac-dos-tanche-pour-appareil-photo-SLR-multifonctionnel-ext-rieur-grande-capacit-adapt-pour-Nikon-Canon.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665759166Sac-dos-tanche-pour-appareil-photo-SLR-multifonctionnel-ext-rieur-grande-capacit-adapt-pour-Nikon-Canon.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665759166Sac-dos-tanche-pour-appareil-photo-SLR-multifonctionnel-ext-rieur-grande-capacit-adapt-pour-Nikon-Canon.jpg_Q90.jpg_.webp&&', 44, 5, 'sac à dos étanche pour appareil photo slr, multifonctionnel, extérieur, grande capacité, adapté pour nikon, canon, objectif slr, trépied de drone', 'sac-a-dos-etanche', '2022-10-14 13:52:46', '2022-10-14 13:52:46'),
(60, 'viji – lumière', 3150.00, 'uploadsbk/products/1665759364Viji-lumi-re-de-cam-ra-vid-o-LED-VL120-3200-6500k-3100mAh-lampe-de-Studio.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665759364Viji-lumi-re-de-cam-ra-vid-o-LED-VL120-3200-6500k-3100mAh-lampe-de-Studio.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665759364Viji-lumi-re-de-cam-ra-vid-o-LED-VL120-3200-6500k-3100mAh-lampe-de-Studio.jpg_Q90.jpg_.webp&&', 44, 5, 'viji – lumière de caméra vidéo led vl120, 3200-6500k, 3100mah, lampe de studio, variable, remplissage vlog, avec filtre de couleur rgb, boîte à lumière, diffuseur', 'viji-lumiere', '2022-10-14 13:56:04', '2022-10-14 13:56:04'),
(61, 'cactus dansant', 1499.00, 'uploadsbk/products/1665759451Cactus-dansant-jouet-parlant-chargeur-USB-r-p-tition-d-enregistrement-sonore-poup-e-Kawaii-jouets.png_ (1).webp&&uploadsbk/products/1665759451Cactus-dansant-jouet-parlant-chargeur-USB-r-p-tition-d-enregistrement-sonore-poup-e-Kawaii-jouets.png_ (2).webp&&uploadsbk/products/1665759451Cactus-dansant-jouet-parlant-chargeur-USB-r-p-tition-d-enregistrement-sonore-poup-e-Kawaii-jouets.png_.webp&&', 34, 5, 'cactus dansant, jouet parlant, chargeur usb, répétition d\'enregistrement sonore, poupée kawaii, jouets éducatifs pour enfants, cadeau d\'anniversaire', 'cactus-dansant', '2022-10-14 13:57:31', '2022-10-14 13:57:31'),
(62, 'cactus dansant', 1499.00, 'uploadsbk/products/1665759451Cactus-dansant-jouet-parlant-chargeur-USB-r-p-tition-d-enregistrement-sonore-poup-e-Kawaii-jouets.png_ (1).webp&&uploadsbk/products/1665759451Cactus-dansant-jouet-parlant-chargeur-USB-r-p-tition-d-enregistrement-sonore-poup-e-Kawaii-jouets.png_ (2).webp&&uploadsbk/products/1665759451Cactus-dansant-jouet-parlant-chargeur-USB-r-p-tition-d-enregistrement-sonore-poup-e-Kawaii-jouets.png_.webp&&', 34, 5, 'cactus dansant, jouet parlant, chargeur usb, répétition d\'enregistrement sonore, poupée kawaii, jouets éducatifs pour enfants, cadeau d\'anniversaire', 'cactus-dansant', '2022-10-14 13:57:31', '2022-10-14 13:57:31'),
(63, 'vêtements', 690.00, 'uploadsbk/products/1665759547V-tements-d-t-pour-b-b-s-filles-tenue-en-Denim-coutures-quotidiennes-v-tements.jpg_Q90.jpg_ (1).jfif&&uploadsbk/products/1665759547V-tements-d-t-pour-b-b-s-filles-tenue-en-Denim-coutures-quotidiennes-v-tements.jpg_Q90.jpg_ (2).jfif&&uploadsbk/products/1665759547V-tements-d-t-pour-b-b-s-filles-tenue-en-Denim-coutures-quotidiennes-v-tements.jpg_Q90.jpg_.jfif&&uploadsbk/products/1665759547V-tements-d-t-pour-b-b-s-filles-tenue-en-Denim-coutures-quotidiennes-v-tements.jpg_Q90.jpg_.webp&&', 34, 5, 'vêtements d\'été pour bébés filles, tenue en denim à coutures quotidiennes, vêtements à manches courtes pour enfants de 0 à 2 ans', 'vetements', '2022-10-14 13:59:07', '2022-10-14 13:59:07'),
(64, 'honeycherry', 1390.00, 'uploadsbk/products/1665759612HoneyCherry-gilet-Jacquard-ray-en-tricot-pour-enfants-pull-pour-b-b-v-tements-pour-b.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665759612HoneyCherry-gilet-Jacquard-ray-en-tricot-pour-enfants-pull-pour-b-b-v-tements-pour-b.jpg_Q90.jpg_.jfif&&uploadsbk/products/1665759612HoneyCherry-gilet-Jacquard-ray-en-tricot-pour-enfants-pull-pour-b-b-v-tements-pour-b.jpg_Q90.jpg_.webp&&', 34, 5, 'honeycherry – gilet jacquard rayé en tricot pour enfants, pull pour bébé, vêtements pour bébés', 'honeycherry', '2022-10-14 14:00:12', '2022-10-14 14:00:12'),
(65, 'manteau de princesse', 1200.00, 'uploadsbk/products/1665759700Manteau-de-princesse-en-peluche-pour-petites-filles-veste-chaude-capuche-pour-enfants-v-tements-de.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665759700Manteau-de-princesse-en-peluche-pour-petites-filles-veste-chaude-capuche-pour-enfants-v-tements-de.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665759700Manteau-de-princesse-en-peluche-pour-petites-filles-veste-chaude-capuche-pour-enfants-v-tements-de.jpg_Q90.jpg_.jfif&&uploadsbk/products/1665759700Manteau-de-princesse-en-peluche-pour-petites-filles-veste-chaude-capuche-pour-enfants-v-tements-de.jpg_Q90.jpg_.webp&&', 34, 5, 'manteau de princesse en peluche pour petites filles, veste chaude à capuche pour enfants, vêtements de noël, automne hiver', 'manteau-de-princesse', '2022-10-14 14:01:40', '2022-10-14 14:01:40'),
(66, 'chaussettes', 500.00, 'uploadsbk/products/1665759776Chaussettes-en-peluche-motif-dessin-anim-pour-b-b-hochet-doux-de-poignet-pour-enfant-de.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665759776Chaussettes-en-peluche-motif-dessin-anim-pour-b-b-hochet-doux-de-poignet-pour-enfant-de.jpg_Q90.jpg_.webp&&uploadsbk/products/1665759776Chaussettes-en-peluche-motif-dessin-anim-pour-b-b-hochet-doux-de-poignet-pour-enfant-de.png_.webp&&', 34, 5, 'chaussettes en peluche motif dessin animé pour bébé, hochet doux de poignet pour enfant de 0 à 12 mois, pour nouveau-né, motif animaux, jouet pour trouver un pied, pour cadeau,', 'chaussettes', '2022-10-14 14:02:56', '2022-10-14 14:02:56'),
(67, 'adorables pantoufles', 560.00, 'uploadsbk/products/1665759919Adorables-Pantoufles-pour-B-b-Gar-on-et-Fille-Chaussures-de-Berceau-Jolies-Tricot-es-Antid.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665759919Adorables-Pantoufles-pour-B-b-Gar-on-et-Fille-Chaussures-de-Berceau-Jolies-Tricot-es-Antid.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665759919Adorables-Pantoufles-pour-B-b-Gar-on-et-Fille-Chaussures-de-Berceau-Jolies-Tricot-es-Antid.jpg_Q90.jpg_ (3).webp&&uploadsbk/products/1665759919Adorables-Pantoufles-pour-B-b-Gar-on-et-Fille-Chaussures-de-Berceau-Jolies-Tricot-es-Antid.jpg_Q90.jpg_.webp&&', 34, 5, 'adorables pantoufles pour bébé garçon et fille, chaussures de berceau, jolies, tricotées, antidérapantes, avec dessin animé, avant de marcher', 'adorables-pantoufles', '2022-10-14 14:05:19', '2022-10-14 14:05:19'),
(68, 'tricoté', 560.00, 'uploadsbk/products/1665759992Ensemble-2-pi-ces-tricot-pour-nouveau-n-tenue-chaude-barboteuse-manches-longues-haut-et-pantalon.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665759992Ensemble-2-pi-ces-tricot-pour-nouveau-n-tenue-chaude-barboteuse-manches-longues-haut-et-pantalon.jpg_Q90.jpg_ (2).webp&&', 33, 5, 'ensemble 2 pièces tricoté pour nouveau-né, tenue chaude, barboteuse à manches longues, haut et pantalon, 4 couleurs, pour fille et garçon, vêtements d\'automne et d\'hiver, 2021', 'tricote', '2022-10-14 14:06:32', '2022-11-05 15:16:20'),
(69, 'vêtements', 1350.00, 'uploadsbk/products/1665760153Ensemble-de-v-tements-pour-b-b-gar-on-et-fille-haut-d-contract-pantalon-ample.jpg_Q90.jpg_ (1).webp&&uploadsbk/products/1665760153Ensemble-de-v-tements-pour-b-b-gar-on-et-fille-haut-d-contract-pantalon-ample.jpg_Q90.jpg_ (2).webp&&uploadsbk/products/1665760153Ensemble-de-v-tements-pour-b-b-gar-on-et-fille-haut-d-contract-pantalon-ample.jpg_Q90.jpg_.webp&&', 34, 5, 'ensemble de vêtements pour bébé garçon et fille, haut décontracté + pantalon ample, tenue de styliste, 2 pièces, à la mode', 'vetements', '2022-10-14 14:09:13', '2022-10-14 14:09:13');

-- --------------------------------------------------------

--
-- Structure de la table `product_sub_category`
--

CREATE TABLE `product_sub_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `phone` int(11) NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `phone`, `address`, `country`, `state`, `created_at`, `updated_at`) VALUES
(1, 3, 659966148, 'boumerdes isser', 'Alger', 'boumerdes', '2022-06-26 17:37:38', '2022-07-01 14:16:39'),
(2, 4, 0, '', '', '', '2022-06-29 08:48:43', '2022-06-29 08:48:43'),
(3, 5, 74397473, 'alger hasiba 201', '', '', '2022-06-30 13:03:36', '2022-06-30 13:05:17'),
(4, 6, 0, '', '', '', '2022-06-30 13:44:40', '2022-06-30 13:44:40'),
(5, 7, 759936148, 'Alger Rouïba', '', '', '2022-06-30 14:54:17', '2022-06-30 14:55:29'),
(6, 8, 729346148, 'Alger alger centre', '', '', '2022-06-30 14:57:56', '2022-06-30 14:59:03'),
(7, 9, 656376149, 'Alger Boumerdes Isser', '', '', '2022-06-30 15:02:06', '2022-06-30 15:03:21'),
(8, 10, 752356144, 'Alger alger centre', '', '', '2022-06-30 15:04:59', '2022-06-30 15:06:08'),
(9, 11, 0, '', '', '', '2022-07-01 10:12:43', '2022-07-01 10:12:43'),
(10, 12, 0, '', '', '', '2022-07-01 10:21:38', '2022-07-01 10:21:38'),
(11, 20, 0, '', '', '', '2022-07-16 17:16:23', '2022-07-16 17:16:23'),
(12, 21, 0, '', '', '', '2022-07-16 17:24:55', '2022-07-16 17:24:55'),
(13, 22, 0, '', '', '', '2022-10-14 14:22:47', '2022-10-14 14:22:47');

-- --------------------------------------------------------

--
-- Structure de la table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL,
  `expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'aimen louchami', 'aimen.louchami.2014@gmail.com', NULL, '$2y$10$SlCqKWKPJ2Vpu4cLjpzrVu1knX.ODep1vk7vONubEU2h9O0ocbbTS', NULL, 1, NULL, '2022-06-29 08:48:43', '2022-06-29 08:48:43'),
(7, 'abdellaoui bouchra', 'bouchraabdellaoui123@gmail.com', NULL, '$2y$10$bgssZ35Uj29USAkzfvzxSeeSZaxGcJjIiJi/0ytOYMSiHz/2Lb6Ry', NULL, 0, NULL, '2022-06-30 14:54:17', '2022-06-30 14:54:17'),
(11, 'Sarah baouche', 'Sarah034baouche@gmail.com', NULL, '$2y$10$/s35zU7bQd/.VOdPggYjjeGpswja5AspeUok/v5G7/kCMG/jVDcIC', NULL, 0, NULL, '2022-07-01 10:12:43', '2022-07-01 10:12:43'),
(12, 'Ferile Braham chaouche', 'FerileBraham23chaouche@gmail.com', NULL, '$2y$10$FwOPHBkD1GCCshpmJvaxdugnYRoMPWetGczRT9dyV1wSwVTDYsIVG', NULL, 0, NULL, '2022-07-01 10:21:38', '2022-07-01 10:21:38'),
(22, 'Oualid Belaid', 'walid04belaid@gmail.com', NULL, '$2y$10$Zmm2KezhQCRnuB1Kl45C7egizJfIGE8mfmPJLGEw3/TsZVwM3CvUO', NULL, 1, NULL, '2022-10-14 14:22:47', '2022-10-14 14:22:47');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `attributs`
--
ALTER TABLE `attributs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `attribut_products`
--
ALTER TABLE `attribut_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribut_products_attribut_id_foreign` (`attribut_id`);

--
-- Index pour la table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cart_lines`
--
ALTER TABLE `cart_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_lines_cart_id_foreign` (`cart_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `favorite_lines`
--
ALTER TABLE `favorite_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorite_lines_favorite_id_foreign` (`favorite_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order_lines`
--
ALTER TABLE `order_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_lines_order_id_foreign` (`order_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `attributs`
--
ALTER TABLE `attributs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `attribut_products`
--
ALTER TABLE `attribut_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT pour la table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `cart_lines`
--
ALTER TABLE `cart_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `favorite_lines`
--
ALTER TABLE `favorite_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `order_lines`
--
ALTER TABLE `order_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pour la table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `attribut_products`
--
ALTER TABLE `attribut_products`
  ADD CONSTRAINT `attribut_products_attribut_id_foreign` FOREIGN KEY (`attribut_id`) REFERENCES `attributs` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `cart_lines`
--
ALTER TABLE `cart_lines`
  ADD CONSTRAINT `cart_lines_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `favorite_lines`
--
ALTER TABLE `favorite_lines`
  ADD CONSTRAINT `favorite_lines_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `order_lines`
--
ALTER TABLE `order_lines`
  ADD CONSTRAINT `order_lines_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
