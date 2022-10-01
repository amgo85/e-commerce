-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2022 at 03:50 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mobile Phones & Accessories', 'Mobile-Phones-&-Accessories', '2022-08-24 17:16:22', '2022-08-24 17:16:22'),
(2, 'Computers & Laptops', 'Computers-&-Laptops', '2022-08-24 17:16:22', '2022-08-24 17:16:22'),
(3, 'Smart Screens & TVs', 'Smart-Screens-&-TVs', '2022-08-24 17:16:22', '2022-08-24 17:16:22'),
(4, 'Various Electronics', 'Various-Electronics', '2022-08-24 17:16:22', '2022-08-24 17:16:22'),
(5, 'Bicycles & Scooters', 'Bicycles-&-Scooters', '2022-08-24 17:16:23', '2022-08-24 17:16:23'),
(6, 'Fashion Outfits', 'Fashion-Outfits', '2022-09-14 12:06:52', '2022-09-14 12:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,5', 6, '2022-09-27 09:17:26', '2022-09-28 00:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Luxurious Sofa', 'Sofa set', '200', 'http://localhost:8000/shop', '1663940739.jpg', 1, '2022-09-23 09:45:39', '2022-09-23 16:33:20'),
(2, 'Kids Hand Watch', 'Smart Hand Watch', '230', 'http://localhost:8000/shop', '1663941533.jpg', 1, '2022-09-23 09:58:53', '2022-09-23 16:33:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_08_17_072329_create_sessions_table', 1),
(7, '2022_08_22_100659_create_categories_table', 2),
(8, '2022_08_22_100914_create_products_table', 2),
(9, '2022_09_22_142606_create_home_sliders_table', 3),
(10, '2022_09_27_091104_create_home_categories_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'repellat amet voluptas quas', 'repellat-amet-voluptas-quas', 'Sed molestias ut quia ut in. Ut ipsum omnis sequi doloremque. Et sint velit totam eum dolorum sit.', 'Et voluptas id quis et dolores assumenda ea. Ut eveniet veniam aliquid quas quis nobis facilis voluptas. Veritatis cupiditate libero recusandae qui suscipit. Repellat quis magnam qui vero ut eum. Est cupiditate aut est a. Totam et ullam natus. Et sit quo vero molestiae sit velit quae.', '107.00', '80.00', 'DIGI109', 'instock', 0, 123, 'digital_11.jpg', NULL, 2, '2022-08-24 17:16:23', '2022-10-01 04:55:56'),
(2, 'magni dolore itaque expedita', 'magni-dolore-itaque-expedita', 'Ut est similique animi nemo aut. Est voluptas accusamus ut nulla. Dolores consequuntur aspernatur laborum dignissimos. Voluptas repellendus in et ut aliquid.', 'Molestiae qui aut atque alias ullam aperiam qui. Soluta possimus et adipisci et. Eligendi sed esse tenetur vero. Fuga ut non eos ducimus. Cupiditate enim at repudiandae totam. Distinctio est est rerum illum tempora est. Aut enim commodi est voluptatibus repellendus in explicabo. Rerum error est sit dolores. Veniam exercitationem non fugit consequatur nisi tempora vero facilis. Architecto temporibus ipsa eligendi voluptates ullam ea.', '23.00', '14.00', 'DIGI153', 'instock', 0, 116, 'digital_1.jpg', NULL, 1, '2022-08-24 17:16:23', '2022-10-01 04:37:44'),
(3, 'blanditiis et dolorum quia', 'blanditiis-et-dolorum-quia', 'Recusandae veniam sit reiciendis repudiandae omnis incidunt ut. Dignissimos totam magnam error architecto qui. Excepturi culpa dignissimos eum perferendis.', 'Et eum accusamus praesentium cupiditate tenetur delectus dolorem. Aspernatur sed sunt fuga et. Quasi voluptas eaque fugiat atque velit saepe. Enim rem quidem et sit minus. Cum voluptas vero dignissimos ea. Itaque et enim rerum doloribus fuga. Laboriosam qui repudiandae animi distinctio mollitia corporis ipsum. In consectetur repellendus ut.', '111.00', '95.00', 'DIGI114', 'instock', 0, 145, 'digital_21.jpg', NULL, 3, '2022-08-24 17:16:23', '2022-10-01 06:08:25'),
(4, 'ut enim vitae eaque', 'ut-enim-vitae-eaque', 'Aut non corrupti quam beatae est. Officia voluptas aut eum soluta. Aut libero quia maxime nihil nostrum.', 'Sit cum id sint vero. Eum molestiae ducimus perspiciatis aut rem dolor. Quaerat praesentium modi dolores harum et et et non. Nihil nesciunt expedita quo perspiciatis quia odio voluptas. Placeat accusantium aliquam dolores est vel. Amet dicta et laudantium ut. Quo repudiandae vel odio. Non nulla consequatur culpa incidunt quo et ullam. Recusandae eos quasi et saepe.', '324.00', NULL, 'DIGI387', 'instock', 0, 184, 'digital_18.jpg', NULL, 2, '2022-08-24 17:16:23', '2022-08-24 17:16:23'),
(5, 'consequatur in ad non', 'consequatur-in-ad-non', 'Facilis soluta quas voluptatem voluptas. Accusantium ut nobis asperiores quae. Dignissimos odit ratione omnis ipsam. Temporibus error asperiores eius reiciendis quisquam ipsa eius.', 'Reprehenderit similique corrupti accusantium ipsa aut omnis odit. Mollitia id vel illo iure tempora facilis suscipit corporis. Sint in laborum sint magnam qui possimus. Deserunt vitae quod voluptatem sed. Odio esse ut ipsum et est. Voluptatem nulla ad alias aperiam quia quasi. Sapiente et blanditiis id atque et.', '76.00', NULL, 'DIGI407', 'instock', 0, 174, 'digital_7.jpg', NULL, 3, '2022-08-24 17:16:23', '2022-08-24 17:16:23'),
(6, 'rerum iusto aut et', 'rerum-iusto-aut-et', 'Quos molestiae explicabo eaque eos. Qui totam laboriosam explicabo a excepturi. Beatae dolores amet doloribus alias voluptatem quos. Quaerat quasi aut repudiandae qui incidunt.', 'Rerum ipsum reiciendis repellat ipsam. Quae sed in et quo aspernatur aut. Illum voluptate quis expedita et suscipit et dolorum ad. Quas unde nihil nemo. Qui rerum dolor quidem itaque maxime ducimus. Rem molestiae eius alias minus. Nemo et necessitatibus sint explicabo. Labore dolor esse quod qui. Sequi est suscipit qui optio. Aut amet consequatur velit. Aut quae dolorum natus alias numquam recusandae. Magnam nihil vitae ut. Aliquam vel eum velit voluptate debitis id.', '219.00', NULL, 'DIGI229', 'instock', 0, 155, 'digital_12.jpg', NULL, 3, '2022-08-24 17:16:23', '2022-08-24 17:16:23'),
(7, 'consectetur quibusdam aut animi', 'consectetur-quibusdam-aut-animi', 'Modi accusamus assumenda fugit magni. Autem vitae corporis rem inventore autem nobis. Dolorem officiis voluptatem harum officiis saepe sunt quia.', 'Illum aperiam culpa porro minima aspernatur unde doloremque non. Eius rerum doloremque et ut quam et natus. Molestiae neque recusandae est ratione est necessitatibus. Iusto odit saepe sint sed saepe cumque. Nostrum consequatur corporis molestiae et ipsa. Atque earum nihil nemo. Dolor dolores accusamus eligendi eligendi dolorum. Qui aperiam quia doloribus eveniet. Maiores optio ipsa mollitia perferendis quia architecto eos ipsam.', '483.00', NULL, 'DIGI122', 'instock', 0, 119, 'digital_3.jpg', NULL, 5, '2022-08-24 17:16:23', '2022-08-24 17:16:23'),
(8, 'non suscipit minima distinctio', 'non-suscipit-minima-distinctio', 'Corporis autem occaecati alias vel voluptate. Cum voluptates nam corrupti asperiores eveniet temporibus. Maiores dolore sit nam omnis. Voluptas distinctio illo aut vitae.', 'Corporis facilis et et voluptatem eos dolorum. Laudantium et aut sit id. Consequatur officia impedit molestiae iusto qui consequatur. Fugit voluptatem laudantium quo saepe in. Sed architecto est id nesciunt quis. Provident quos molestias et. A a necessitatibus quam cumque et facilis. Similique quo aut recusandae non ab tempora recusandae.', '473.00', '450.00', 'DIGI146', 'instock', 0, 142, 'digital_10.jpg', NULL, 4, '2022-08-24 17:16:23', '2022-10-01 06:16:06'),
(9, 'atque et delectus maiores', 'atque-et-delectus-maiores', 'Quis dignissimos officia labore ipsum ipsam eos. Maxime quibusdam ut et quia. Quo in temporibus fugiat voluptatem quaerat voluptatem soluta.', 'Debitis unde libero voluptas. Aut perspiciatis non mollitia natus nobis voluptatem. Omnis eligendi modi optio nemo molestiae molestiae. Optio sit autem facere. Est libero cumque quia sint assumenda doloribus. Minima praesentium minima aspernatur voluptatem aspernatur ipsam. Ut rem reprehenderit aliquam modi voluptatem. Adipisci quos blanditiis tenetur qui laboriosam dolorem et. Rerum maiores eum distinctio omnis aliquid accusamus consequatur. Et voluptatem nostrum sed voluptas.', '218.00', '195.00', 'DIGI163', 'instock', 0, 125, 'digital_8.jpg', NULL, 3, '2022-08-24 17:16:24', '2022-10-01 06:11:46'),
(10, 'praesentium sed minima non', 'praesentium-sed-minima-non', 'Tenetur quo dicta ut aperiam aliquam. Repellendus quae ipsam tenetur et.', 'Earum ut tempora quasi pariatur. Libero iure atque porro voluptatem aut voluptatem. Rerum nostrum deserunt harum ut corrupti. Maiores eligendi est sit dolore. Quasi minima suscipit recusandae est et nostrum enim. Magnam eos eum qui repudiandae. Quia unde officiis beatae asperiores ut est voluptate. Deserunt consequuntur aspernatur nesciunt tempora quod quo. Ad ea pariatur omnis sit quas eveniet omnis.', '355.00', '0.00', 'DIGI267', 'instock', 0, 134, 'digital_14.jpg', NULL, 2, '2022-08-24 17:16:24', '2022-10-01 06:13:49'),
(11, 'non ad quisquam sapiente', 'non-ad-quisquam-sapiente', 'Voluptatem vel ipsam vero magni reiciendis exercitationem dicta. Beatae exercitationem voluptate nulla error explicabo ullam. Beatae sed ut dicta ut nostrum.', 'Facere animi tenetur est qui ad. Ut et pariatur facilis tempora ab sint facilis. Quasi placeat tempora a quia cumque. Ipsum dolore illo omnis quasi aut. Ullam aut asperiores praesentium consequatur dignissimos dolorem id. Non voluptatem quia ex. Quasi voluptas voluptas et. Eaque saepe deserunt omnis est aspernatur illo. Dicta culpa ut officiis accusantium qui suscipit voluptas autem. Consequatur et distinctio vitae labore autem rerum a.', '207.00', NULL, 'DIGI155', 'instock', 0, 141, 'digital_2.jpg', NULL, 1, '2022-08-24 17:16:24', '2022-08-24 17:16:24'),
(12, 'voluptatum consequatur est facilis', 'voluptatum-consequatur-est-facilis', 'Ducimus illo modi corporis aliquam ut repellat. A officiis non fugit esse. Incidunt voluptas consequatur labore eos. Hic voluptas suscipit numquam et enim illo aliquam.', 'Qui ipsa ipsum beatae beatae corporis. Non vel labore et ab. Quidem iste numquam laborum est. Adipisci pariatur quis sit veniam fugiat est quod aliquid. Magni dolores voluptatum modi rerum enim id quia. Libero qui voluptatem eos ipsam consequuntur. Explicabo quod nemo eius minima. Voluptates facilis ut voluptas qui et totam delectus.', '348.00', NULL, 'DIGI315', 'instock', 0, 197, 'digital_22.jpg', NULL, 4, '2022-08-24 17:16:24', '2022-08-24 17:16:24'),
(13, 'eius et tempore temporibus', 'eius-et-tempore-temporibus', 'Aut fugiat est ut consequatur dolores ut. Ipsam voluptas quaerat sit eum iure. Impedit dignissimos quae consequatur qui et.', 'Aut nesciunt autem eligendi praesentium. Dolor dolor qui officia. Fugiat quia suscipit molestiae adipisci quia in saepe totam. Necessitatibus culpa ut id laborum voluptatem. Itaque facere consequatur impedit ex. Eveniet et qui impedit aliquam consectetur excepturi. Voluptas necessitatibus incidunt blanditiis totam illo beatae dolorem.', '69.00', NULL, 'DIGI311', 'instock', 0, 111, 'digital_17.jpg', NULL, 3, '2022-08-24 17:16:24', '2022-08-24 17:16:24'),
(14, 'modi quo tempore dolorum', 'modi-quo-tempore-dolorum', 'Vero consequatur voluptatem qui et. Provident dolorem doloribus minus in voluptas iusto. Exercitationem et atque explicabo est aperiam. Quo error amet sint eaque earum libero.', 'Ab aut est voluptas. Repellendus quasi quisquam sunt hic non qui. Repudiandae vero sit dolorum deserunt. Dicta ut ad error dicta provident eveniet. Quo ea et qui aliquid. Suscipit magnam hic qui quisquam voluptas. Tenetur dolor et quo ab dolorem delectus. Ullam omnis natus molestias qui dolorem. Blanditiis facere incidunt neque suscipit ex vero quaerat accusamus. Ipsam ea omnis molestiae labore nihil eveniet minus.', '411.00', NULL, 'DIGI234', 'instock', 0, 123, 'digital_9.jpg', NULL, 2, '2022-08-24 17:16:24', '2022-08-24 17:16:24'),
(15, 'dolorem eveniet porro perferendis', 'dolorem-eveniet-porro-perferendis', 'Vitae et ut voluptatem dolore culpa. Sunt ea in autem quaerat sit non et. Eveniet est consequatur et cum consequatur non. Accusantium laboriosam minus hic voluptatem.', 'Maiores consectetur ad eaque. Distinctio sunt et voluptatem et. Quibusdam mollitia esse autem fuga et reiciendis. A quo iusto molestiae. Voluptatem hic placeat cum ut. Omnis atque ut saepe facilis perspiciatis aperiam deserunt. Inventore sit harum accusamus sit facere vero. Ut distinctio et necessitatibus facere ea. Aut error et voluptatem assumenda consequatur quos ipsum.', '78.00', NULL, 'DIGI369', 'instock', 0, 185, 'digital_4.jpg', NULL, 3, '2022-08-24 17:16:24', '2022-08-24 17:16:24'),
(16, 'voluptas aut fuga beatae', 'voluptas-aut-fuga-beatae', 'Ex sit alias exercitationem odio a eos. Recusandae voluptate optio quo commodi magnam eum. In maxime illum sint ut. Labore similique quis eveniet cumque rem commodi.', 'Ab tempore vitae qui sapiente est laborum vero rerum. Ex sit consequatur similique unde placeat debitis. Blanditiis vitae eveniet recusandae culpa impedit. Unde repudiandae sit aperiam vero dolor. Aut eligendi explicabo est unde rerum omnis. In adipisci et aut aut alias. Voluptatibus adipisci fugiat molestiae. Aut laborum sed non quis et voluptate. Quod rerum distinctio non et ut. Illum totam cum placeat tempore. Sit et unde dolore inventore inventore eligendi reiciendis.', '56.00', NULL, 'DIGI192', 'instock', 0, 125, 'digital_15.jpg', NULL, 3, '2022-08-24 17:16:24', '2022-08-24 17:16:24'),
(17, 'iusto eum assumenda non', 'iusto-eum-assumenda-non', 'Molestias aut velit est provident nihil blanditiis ea. Velit quos quod aliquid est. Voluptatem recusandae blanditiis dolores. Est atque aspernatur cum neque.', 'Debitis sunt rerum sit quos enim eveniet. Voluptas et nihil nesciunt ipsum. Vitae perferendis corrupti nam consequatur nisi fugiat. Quia animi qui ut explicabo dicta molestiae culpa ipsa. Et molestiae rerum ratione. Accusantium praesentium aut quia cum impedit nisi dolorem. Nemo sunt cumque et alias similique inventore. Inventore omnis ipsa reiciendis ab qui deleniti soluta neque. Beatae doloremque reiciendis sit. Sed dicta debitis fuga quia.', '88.00', NULL, 'DIGI262', 'instock', 0, 148, 'digital_16.jpg', NULL, 3, '2022-08-24 17:16:24', '2022-08-24 17:16:24'),
(18, 'delectus aliquam molestiae perferendis', 'delectus-aliquam-molestiae-perferendis', 'Suscipit officiis ut beatae et nihil. Iste quae libero esse praesentium eveniet eius amet sequi. Nesciunt modi inventore nihil officiis ut est repellat nisi.', 'Eum repellat fugit tempora qui quos. Sint voluptatem dolorum ea ut occaecati corrupti sapiente. Laudantium quidem modi consequatur. Explicabo ratione commodi nihil temporibus. Est est mollitia maiores harum laboriosam enim et ducimus. Magni accusantium culpa ut consectetur sapiente perspiciatis molestias incidunt. Facere et nihil aliquid repudiandae optio ab.', '68.00', NULL, 'DIGI195', 'instock', 0, 111, 'digital_5.jpg', NULL, 1, '2022-08-24 17:16:24', '2022-08-24 17:16:24'),
(19, 'et voluptatem quia sint', 'et-voluptatem-quia-sint', 'Nobis optio cupiditate ex. Necessitatibus eius consectetur laborum quaerat ipsa ut ut. Sunt ea magni et neque non facere eum. Sed nostrum molestiae perferendis id rerum corrupti.', 'Officia tenetur facilis cupiditate perspiciatis consectetur debitis sed unde. Eius rerum necessitatibus est tenetur dignissimos corporis exercitationem. Et ut quam excepturi porro doloremque voluptatem nostrum impedit. Doloremque quo qui beatae velit libero exercitationem. A culpa aperiam aperiam molestiae libero quam praesentium. Id voluptas corporis et ea voluptas dolor.', '268.00', NULL, 'DIGI464', 'instock', 0, 185, 'digital_13.jpg', NULL, 3, '2022-08-24 17:16:24', '2022-08-24 17:16:24'),
(20, 'ut perspiciatis nam qui', 'ut-perspiciatis-nam-qui', 'Recusandae ut vel laudantium sed aut. Accusamus quod perspiciatis deleniti quia est distinctio. Ipsum libero ratione distinctio perferendis illo officiis qui. Totam omnis aut provident.', 'Sint rerum aspernatur consequatur quam delectus. Sint quia labore et distinctio deleniti eligendi. Natus unde nobis iste ea. Iusto quo iure voluptatibus dolorem. Reiciendis sit enim alias unde et. Consequatur recusandae magnam aliquam quae. Tempore voluptatum dolores hic maiores atque quia. Exercitationem soluta voluptatem est nemo et eum. Ut quos autem velit hic voluptas sed voluptatum. Non totam quae cum. Assumenda similique velit eum eaque sit. Sint ut dicta placeat enim vel est.', '466.00', NULL, 'DIGI166', 'instock', 0, 126, 'digital_20.jpg', NULL, 2, '2022-08-24 17:16:24', '2022-08-24 17:16:24'),
(21, 'necessitatibus sunt omnis corporis', 'necessitatibus-sunt-omnis-corporis', 'Labore distinctio sunt incidunt quae. Eligendi occaecati adipisci sit rerum dolore distinctio mollitia aperiam. Qui et velit illum doloremque.', 'Ut nostrum recusandae voluptatem dolores debitis. Illo explicabo vitae quisquam voluptatibus. Ut minus et eligendi voluptatum corrupti commodi cumque omnis. Quasi excepturi tempora eaque fugiat reprehenderit sit eum. Sapiente eligendi enim ut consectetur voluptatem et. Omnis sequi aut aut corrupti incidunt amet iure. Harum deleniti non nihil omnis. Et alias maiores et et. Non sunt ut omnis saepe. Vitae inventore accusamus eos voluptatem.', '297.00', NULL, 'DIGI450', 'instock', 0, 170, 'digital_19.jpg', NULL, 3, '2022-08-24 17:16:24', '2022-08-24 17:16:24'),
(22, 'repellat eos facilis voluptates', 'repellat-eos-facilis-voluptates', 'Consectetur eveniet atque natus odit in blanditiis. Assumenda dolorem error quo rem. Eum ut nam beatae est sit nesciunt maiores. Facilis quam dolor repudiandae ut.', 'Dolorum autem est quaerat rerum dolores accusantium consequuntur consequuntur. Saepe minus eum natus voluptatem. Placeat qui eveniet consequatur atque consequatur quas. Odit voluptas dicta blanditiis. Architecto in inventore et sed laudantium quas molestiae. Sed voluptatibus ut veritatis. Et est consequatur et quia. Molestiae perspiciatis enim numquam blanditiis quia ut. Ea exercitationem voluptatem molestiae vel officiis sapiente. Velit consequatur sit modi at veritatis nam cum.', '355.00', NULL, 'DIGI184', 'instock', 0, 161, 'digital_6.jpg', NULL, 1, '2022-08-24 17:16:24', '2022-08-24 17:16:24'),
(23, 'Hand Watch', 'hand-watch', 'Classic Hand Watch', 'Amazing yet cheap Hand watch', '20.00', '10.00', 'DIGI78495', 'instock', 0, 148, '1664012228.jpg', NULL, 6, '2022-09-24 05:37:08', '2022-10-01 06:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3IVZY8Fxr0d87Sf8tYypeZDv8tzBnq5HyKrpkHGm', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiRG1wVndnRWRnWjlXbzNPRDNxYmFXT2JJWVRBVkpNS3dyRW9PVGtBOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L25vbi1zdXNjaXBpdC1taW5pbWEtZGlzdGluY3RpbyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkNXcwV2lscTE3STBNbG5UN0dnODlZdWczUEJQai5hODg4TDJxS0V1d3dKai5OVHZQcy5rMUMiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDV3MFdpbHExN0kwTWxuVDdHZzg5WXVnM1BCUGouYTg4OEwycUtFdXd3SmouTlR2UHMuazFDIjt9', 1664619423),
('7KcAPl6fnXxoYYRUlkqjPDubdBUaZkq7vPFBAvEC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGo3c25OZUhRRmdMMFBuT0w2YnZpMlB2VjFyd1JONHdlNjEzZTFaaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L2F0cXVlLWV0LWRlbGVjdHVzLW1haW9yZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1664631981);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$5w0Wilq17I0MlnT7Gg89Yug3PBPj.a888L2qKEuwwJj.NTvPs.k1C', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-08-17 04:41:10', '2022-08-17 04:41:10'),
(2, 'user', 'user@user.com', NULL, '$2y$10$TIaUr4u7p8XPqu0QvOIlrOZPG2DY9rvxc/.QmiPxm9bwrD1bLqJfe', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-08-17 04:42:58', '2022-08-17 04:42:58'),
(3, 'user1', 'user1@user.com', NULL, '$2y$10$s43.0odlzQCKTemi4PvrSuBJXrsS6z4AGU1ZJ2HjRHl.rBgxoWDK.', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-08-22 05:34:30', '2022-08-22 05:34:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
