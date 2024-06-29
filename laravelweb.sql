-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2024 at 08:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(11, 'About', 'A software company\'s services to clients involve several key steps:\r\n\r\n    Consultation and Requirement Gathering: Understanding the client\'s needs and objectives.\r\n\r\n    Proposal and Agreement: Presenting a detailed plan and reaching a formal agreement.\r\n\r\n    Project Planning and Management: Organizing tasks, timelines, and resources under a project manager\'s oversight.\r\n\r\n    Development and Testing: Iteratively building and testing the software to meet quality standards.\r\n\r\n    Quality Assurance and Testing: Rigorous testing to identify and fix bugs, ensuring reliability.\r\n\r\n    Deployment and Implementation: Rolling out the software, providing assistance during implementation.\r\n\r\n    Maintenance and Support: Offering ongoing support, troubleshooting, and updates.\r\n\r\n    Continuous Improvement: Gathering feedback, adapting the software to evolving needs for long-term success.', 'images/1719552521.jpg', '2024-04-23 06:24:32', '2024-06-28 00:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `first`
--

CREATE TABLE `first` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `first`
--

INSERT INTO `first` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Better Solutions For Your Business\r\nWe are team of talented designers making websites with Bootstrap', 'images/ttttt.png', '2024-04-23 06:54:12', '2024-04-23 06:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_20_122858_create_about_table', 2),
(6, '2024_04_20_151240_create_first_table', 3),
(7, '2024_04_21_054049_create_portfolio_table', 4),
(8, '2024_04_21_065216_create_team_table', 5),
(9, '2024_04_22_041314_create_service_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(5, 'prgrammer', 'images/testimonial-1.jpg', '2024-04-25 01:13:57', '2024-04-25 01:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(3, 'web programming', 'We can create web systems for your business', '2024-04-23 06:27:45', '2024-04-23 06:27:45'),
(4, 'Desktop Software', 'We can help you build to develop desktop programs for your business', '2024-04-23 06:28:21', '2024-04-23 06:28:21'),
(5, 'Mobile Software', 'We can create android or iOS software for your business', '2024-04-23 06:29:02', '2024-04-23 06:29:02'),
(6, 'Maintenance', 'We can help you to maintain and upgrade your existing software', '2024-04-23 06:29:30', '2024-04-23 06:29:30'),
(10, 'alisher', '<p>alisher</p>', '2024-06-28 01:40:30', '2024-06-28 01:40:30'),
(11, 'test', '<p>Here&#39;s a breakdown of the changes:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>HTML and Body Height</strong>: Ensure the <code>html</code> and <code>body</code> elements take the full height of the viewport by setting their height to <code>100%</code> and removing any default margin.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Flexbox Layout</strong>: Use a flexbox container (<code>.page-container</code>) that has a column direction and takes at least the full height of the viewport.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Main Content Flex Grow</strong>: The main content area (<code>.main-content</code>) is set to <code>flex-grow: 1</code>, which ensures it takes up all the available space, pushing the footer to the bottom if there&#39;s not enough content to fill the viewport.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Footer Styles</strong>: The footer retains the inline styles you specified.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>This approach will ensure that the footer stays at the bottom of the page, regardless of the content height.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Here&#39;s a breakdown of the changes:</p>\r\n\r\n			<ol>\r\n				<li>\r\n				<p><strong>HTML and Body Height</strong>: Ensure the <code>html</code> and <code>body</code> elements take the full height of the viewport by setting their height to <code>100%</code> and removing any default margin.</p>\r\n				</li>\r\n				<li>\r\n				<p><strong>Flexbox Layout</strong>: Use a flexbox container (<code>.page-container</code>) that has a column direction and takes at least the full height of the viewport.</p>\r\n				</li>\r\n				<li>\r\n				<p><strong>Main Content Flex Grow</strong>: The main content area (<code>.main-content</code>) is set to <code>flex-grow: 1</code>, which ensures it takes up all the available space, pushing the footer to the bottom if there&#39;s not enough content to fill the viewport.</p>\r\n				</li>\r\n				<li>\r\n				<p><strong>Footer Styles</strong>: The footer retains the inline styles you specified.</p>\r\n				</li>\r\n			</ol>\r\n\r\n			<p>This approach will ensure that the footer stays at the bottom of the page, regardless of the content height.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2024-06-28 06:58:04', '2024-06-28 07:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ism` varchar(255) NOT NULL,
  `lavozim` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `ism`, `lavozim`, `linkedin`, `facebook`, `instagram`, `twitter`, `image`, `created_at`, `updated_at`) VALUES
(2, 'alisher', 'programmer', 'test', 'https://www.facebook.com/example', 'test1', 'test', 'images/team-3.jpg', '2024-04-23 06:48:39', '2024-04-23 06:48:39'),
(3, 'Jasurbek', 'Dean', 'test', 'https://www.facebook.com/example', 'test1', 'test1', 'images/testimonial-1.jpg', '2024-04-23 06:49:11', '2024-04-23 06:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'alisher', 'alisherismailov1991@gmail.com', '$2y$10$Bbz33hDA3cvJlyr2pA.j..BU4yZaG041cEtzSkRMJfUGd.h.bBX7u', NULL, '2024-04-19 10:55:12', '2024-04-19 10:55:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `first`
--
ALTER TABLE `first`
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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `first`
--
ALTER TABLE `first`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
