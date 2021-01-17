-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2021 at 09:09 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(2, 'Javascript'),
(3, 'JAVA'),
(20, 'HTML'),
(21, 'CSS'),
(22, 'Emaple category');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(20, 3456, 'Leading India to full independence, writes Rajnath Singh', 'Rajnath Singh', '2020-06-01', '', 'Great changes are witnessed in history on rare occasions. 2014 was such a time for India when it saw momentous changes in its political history. At that time, people wanted to get rid of an incapable and corrupt government. This is what drove them to vote the Bharatiya Janata Party (BJP), led by Narendra Modi, to power.\r\n\r\nPeople generally donâ€™t repose enough trust in an incumbent government to vote it back to power a second time. Modi is one of the few leaders in Indian history to have been voted in successively, and with an even greater mandate, to office. While the 2014 mandate was for change, the 2019 one was a clear indication of the peopleâ€™s acceptance and trust in the changes that were brought by his government. However, when people put such faith in any political leader, the challenge he faces in fulfilling their aspirations and expectations is huge. This requires a substantial degree of political credibility. But in 2019, when the BJP government came to power again, Prime Minister (PM)â€‰Modi took several decisions in a courageous and determined manner to fulfil the promises made, something which has remained the ideological foundation of the party. ', 'Economy, Infrastructure, System, Demography', 4, 'In the past year, PMâ€‰Modi has brought back credibility to politics and unveiled radical reforms'),
(21, 3458, 'The PM must support workers, encourage rural economy, revive industry |â€‰Opinion', 'Shashi Shekhar', '2020-06-01', '', 'But, there were already dark clouds on the horizon. A few kilometres from Hyderabad House, the government was struggling to control a terrifying communal riot that had got India much negative press across the world and tarnished its image to some extent. To add to this violence was the fact that a grave economic crisis was upon us. And then, Covid-19 began its lethal spread across the world, creating what is one of the biggest tragedies the world has faced in the past century. ', 'Leading India to full independence, writes Rajnath Singh', 4, 'Modi has both domestic credibility and international goodwill. But the pandemic will be his biggest test'),
(22, 13456, 'The locust attack is a wake-up call |â€‰HTâ€‰Editorial', ' Hindustan Times', '2020-06-01', '', 'Last week, swarms of desert locusts entered western India from Pakistan and destroyed crops in Rajasthan, Uttar Pradesh (UP) and Madhya Pradesh. On Sunday, reports said that the swarms have moved deeper into UP. The three states have sent out drones, tractors and cars to kill them with pesticides. India has not witnessed full-blown locust cycles after 1993. Heavy rains and increasing number of cyclones, both effects of the climate crisis, enabled unprecedented breeding and the rapid growth of locust populations on the Arabian Peninsula early last year, according to the United Nations.\r\n\r\nThe long gap between the last and the present locust attack in India has had a consequence. In an interview to the Indian Express, the director-general of Indian Council of Agricultural Research admitted that there hasnâ€™t been much â€œsystematic researchâ€ on desert locusts since the 1990s and the current invasion is a wake-up call to revive the programme. This is indeed a wake-up call. The earth has entered a period of hydrological, climatological, and biological change that differs from previous episodes . Therefore, it is important that India puts in enough funds to predict the course of the present global environmental changes to understand the sources , consequences, and formulate national responses. ', 'Economy, Infrastructure, System, Demography', 4, 'The climate crisis is changing the world in distinct ways. Invest in more research');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
