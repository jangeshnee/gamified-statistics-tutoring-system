-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2018 at 06:59 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multiauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '$2y$10$6YZkmjMlS8ilm3ItlcT4de1evZSbVCjc/o/K89tAoGXuouKpO4yyG', 'xUEkS4UPThe7Z3YlsZWE5Bxf2B26hTCcW3UGIV8PKZw8Ujpl8QyUxQVNfMhV', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `all_stud_performance`
--

CREATE TABLE `all_stud_performance` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `total_attempt` int(11) NOT NULL,
  `total_points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_stud_performance`
--

INSERT INTO `all_stud_performance` (`id`, `fname`, `lname`, `total_attempt`, `total_points`) VALUES
(1, 'Hazel', 'Doe', 33, 465),
(2, 'Eun Woo', 'Cha', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Statistics', 'sfshfsggfshf', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_26_135633_create_admins_table', 1),
(4, '2018_04_28_124706_create_courses_table', 1),
(5, '2018_04_29_122928_create_topics_table', 1),
(6, '2018_04_29_123143_create_sub_topics_table', 1),
(7, '2018_04_30_031153_create_problems_table', 1),
(8, '2018_04_30_031442_create_student_profiles_table', 1),
(9, '2018_05_02_025156_create_student_subtopic_statuses_table', 1),
(10, '2018_05_02_025305_create_student_user_logs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_list` int(11) NOT NULL,
  `min_data` int(30) NOT NULL,
  `max_data` int(30) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `subtopic_id` int(11) NOT NULL,
  `prereq_problem_id` int(11) NOT NULL,
  `bonus_points` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`id`, `title`, `description`, `data_list`, `min_data`, `max_data`, `topic_id`, `subtopic_id`, `prereq_problem_id`, `bonus_points`, `created_at`, `updated_at`) VALUES
(1, 'Trigonometry Quiz', 'The data below shows the scores of five students on last week\'s trigonometry quiz.', 5, 6, 9, 1, 1, 0, 5, NULL, NULL),
(2, 'Algebra Tutorial', 'Mr. Martin had students in his after-school algebra tutorial. The scores they received on their last 15-items quiz were as follows: ', 7, 10, 15, 1, 1, 1, 7, NULL, NULL),
(3, 'Student Math Quiz', 'A student recorded her scores on weekly math quizzes that were marked out of a possible 25 points. Her scores were as follows:', 10, 20, 25, 1, 1, 2, 10, NULL, NULL),
(4, 'History Students', 'There were 15 randomly selected history students asked how many absences they had in their history class last semester. ', 15, 0, 5, 1, 1, 3, 0, NULL, NULL),
(5, 'Statistics Test', 'The following are the scores of college students on a statistics test, the highest possible score is 90. ', 20, 80, 90, 1, 1, 4, 0, NULL, NULL),
(6, 'Rated Chips', 'According to Consumer Reports, Volume 66, No. 5, the prices per ounce in cents of the rated chips are', 5, 19, 25, 2, 2, 5, 0, NULL, NULL),
(7, 'Compact Disc Prices', 'Donald priced six personal Compact Disc (CD) players. The prices in pesos are shown below:', 7, 100, 150, 2, 2, 6, 0, NULL, NULL),
(8, 'City of Fairview Homes', 'In 2004, seven homes were sold in the city of Fairview. The selling prices(in million) were as follows:', 10, 2, 5, 2, 2, 7, 0, NULL, NULL),
(9, 'Hours Spent Watching TV', 'The following data shows the number of hours per day of watching TV is a sample of 15 people.', 15, 3, 5, 2, 2, 8, 0, NULL, NULL),
(10, 'Average Credit Hour', 'Belleview College must make a report to the budget committee about the average credit hour load a full-time student carries. A random sample of 20 students yielded the following information (in credit hours):', 20, 21, 24, 2, 2, 9, 0, NULL, NULL),
(11, 'Percentage Quizzes of Linda', 'Linda scored the following percentages on 5 quizzes over the course of a semester:', 5, 80, 90, 3, 3, 10, 5, NULL, NULL),
(12, 'Pop-up Advertisement', 'The following data represent the number of pop-up advertisements received by 10 families during the past month. Calculate the mean number of advertisements received by each family during the month. ', 7, 10, 15, 3, 3, 11, 5, NULL, NULL),
(13, 'College Juniors Number of Dates', 'College juniors were surveyed regarding the number of dates they had during the previous 30 days. Here are the data.', 10, 3, 9, 3, 3, 12, 15, NULL, NULL),
(14, 'Attendance Log', 'A college instructor logs attendance throughout the semester for a class of 20 students that meets on M-W-F. Here is the number of classes each student missed during the semester.', 20, 0, 8, 3, 3, 13, 0, NULL, NULL),
(15, 'Colleges Average Class Size', 'Barron’s Profiles of American Colleges, 19th Edition, lists average class size for introductory lecture courses at each of the profiled institutions. A sample of 20 colleges and universities in California showed class sizes for introductory lecture courses to be:', 20, 20, 35, 3, 3, 14, 0, NULL, NULL),
(16, 'Weights of Blueberry Cartoons', 'A large bakery regularly orders cartons of Maine blueberries. The average weight of the cartons is supposed to be 22 ounces. Random samples of cartons from a supplier were weighed. The weights in ounces of the cartons were: ', 7, 17, 27, 4, 4, 15, 0, NULL, NULL),
(17, 'Mass of Students', 'The following data shows the mass of students in a class, the measurement is to the nearest kg.', 10, 45, 70, 4, 4, 16, 0, NULL, NULL),
(18, 'Ecology: Wolf Packs ', 'The following information is from a random sample of winter wolf packs in regions of Alaska, Minnesota, Michigan, Wisconsin, Canada, and Finland (Source: The Wolf, by L. D. Mech, University of Minnesota Press). Winter pack size:', 15, 2, 15, 4, 4, 17, 0, NULL, NULL),
(19, 'Environmental Studies: Death Valley ', 'The following data are taken from a study conducted by the National Park System, of which Death Valley is a unit. The ground temperatures (°F) were taken from May to November in the vicinity of Furnace Creek.', 10, 150, 170, 4, 4, 18, 0, NULL, NULL),
(20, 'Football: Age of Professional Players ', 'The 11th Edition of The Pro Football Encyclopedia gave the following information. Random sample of pro football player ages in years:', 20, 22, 31, 4, 4, 19, 0, NULL, NULL),
(21, 'Miles Traveled by John', 'The following data are the miles traveled by John on 4 weekends. Determine the variance. ', 4, 5, 9, 5, 5, 20, 0, NULL, NULL),
(22, 'Leisure Hours of Employees', 'There are 500 staffs in a company. The hours used in leisure per week by 7 of the employees are: ', 7, 2, 10, 5, 5, 21, 0, NULL, NULL),
(23, 'Height of Students in PE Class', 'Find the variance of the heights (in cm) of students of a PE class is given to be:', 5, 150, 155, 5, 5, 22, 0, NULL, NULL),
(24, 'Movie Rentals', 'The number of DVDs rented during one week at Star Struck Movie Rental are the following. ', 7, 10, 15, 5, 5, 23, 0, NULL, NULL),
(25, 'Student\'s Bicycle Sizes ', 'The sizes of the bicycles owned by the students in Ms. Garcia’s class are listed below. Help her find the variance. ', 5, 20, 26, 5, 5, 24, 0, NULL, NULL),
(26, 'Blossoms Width', 'Big Blossom Greenhouse gathered a random sample of mature peak blooms from Hybrid B. The six blossoms had the following widths (in inches):  ', 5, 5, 8, 6, 6, 25, 0, NULL, NULL),
(27, 'Gymnasts Height', 'A gymnastic coach has gymnasts whom he wishes to train for the forthcoming Olympics. Their heights are as follows (in cm):', 5, 150, 155, 6, 6, 26, 0, NULL, NULL),
(28, 'Daymon\'s Dance Class', 'Daymon’s Dance classes has children within the age group of 10 to 18 years. He wants to find out how spread out the ages of his student is. Help him to find the standard deviation base on the following data: ', 5, 10, 18, 6, 6, 27, 0, NULL, NULL),
(29, 'Adam\'s Earnings', 'Adam earned the following amount in dollar by doing house chores. Help him determine the variance of his earnings', 5, 10, 15, 6, 6, 28, 0, NULL, NULL),
(30, 'Darby Middle School\'s Football', 'The points scored in each game by Darby Middle School\'s Football team for 9 games are listed below. Find the standard deviation. ', 9, 14, 21, 6, 6, 29, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `problem_step_by_step_guide`
--

CREATE TABLE `problem_step_by_step_guide` (
  `id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `prob_task_id` int(11) NOT NULL,
  `step_order` int(11) NOT NULL,
  `demo_desc` text NOT NULL,
  `prompt_desc` text NOT NULL,
  `prompt_ans` text NOT NULL,
  `hint` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problem_step_by_step_guide`
--

INSERT INTO `problem_step_by_step_guide` (`id`, `problem_id`, `prob_task_id`, `step_order`, `demo_desc`, `prompt_desc`, `prompt_ans`, `hint`) VALUES
(1, 1, 1, 1, 'Order the values from smallest to greatest.', 'Ordering the data set from smallest to greatest the result would be ..', '2', 'Kindly check if the order of data set is correct and complete.'),
(2, 1, 1, 2, 'The number that appears most often is?', 'The number that appears most often is?', '178', 'Please check your answer please'),
(3, 1, 2, 1, 'Task 2- Demo 1', 'Task 2-prompt 1', '1', 'Task 2-hint 1'),
(4, 1, 2, 2, 'Task 2-Demo 2', 'Task 2-Prompt 2', '2', 'Task 2-Hint 2'),
(5, 2, 1, 1, 'Demo 1', 'Prompt 1', '1', 'Hint 1');

-- --------------------------------------------------------

--
-- Table structure for table `problem_tasks_and_ans`
--

CREATE TABLE `problem_tasks_and_ans` (
  `id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `task_order` int(11) NOT NULL,
  `task_title` text NOT NULL,
  `task_topic` int(11) NOT NULL,
  `task_answer` text NOT NULL,
  `task_ans_feedback` text NOT NULL,
  `task_points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problem_tasks_and_ans`
--

INSERT INTO `problem_tasks_and_ans` (`id`, `problem_id`, `task_order`, `task_title`, `task_topic`, `task_answer`, `task_ans_feedback`, `task_points`) VALUES
(1, 1, 1, 'Find mode', 1, '178', 'The mode is 178 because it appears 3 times in the data set.', 5),
(2, 6, 2, 'Find Median', 2, '171', 'The median is 171 because the data set contains even number bla bla', 5),
(3, 11, 3, 'Find Mean', 3, '167.3', 'The median is 167.3 because adding all the numbers and divide with total numbers bla bla bla', 5),
(4, 2, 4, 'Find Range', 4, '', '', 5),
(5, 2, 5, 'Find Variance', 5, '', '', 5),
(6, 2, 6, 'Find Standard Deviation', 6, '', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `step_id` int(30) NOT NULL,
  `step_order` int(10) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `code` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `explaination` text NOT NULL,
  `example` text NOT NULL,
  `demonstration` text NOT NULL,
  `method` varchar(100) NOT NULL,
  `instruction` varchar(200) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `step_id`, `step_order`, `topic_id`, `code`, `description`, `explaination`, `example`, `demonstration`, `method`, `instruction`, `points`) VALUES
(1, 1, 1, 1, 'modeS1', 'Arrange the given data of the problem in ascending order.', 'To arranged the data in ascending order. It means that you have to arrange the data from smallest to largest. ', '', '', 'orderData', 'Click the numbers above or enter the numbers separated by comma.', 5),
(2, 2, 2, 1, 'modeS2a', 'Determine the mode by finding which value has the highest frequency.', 'A value or data with highest frequency is the value that appears most often.', '', '', 'findMode', 'If your answer is more than one number kindly enter the numbers separated with comma.', 5),
(3, 2, 2, 1, 'modeS2b', 'Determine the modes by finding which values has the highest frequency. ', 'There are cases that a data set has two or more modes. It means that, more than one value has the same number of appearance in the data set.', '', '', 'findMode', 'If your answer is more than one number kindly enter the numbers separated with comma.', 5),
(4, 2, 2, 1, 'modeS2c', 'Determine the mode by finding which value has the highest frequency.', 'There are cases that a data set has no mode. It means that, all the values appears exactly once. Please enter “no mode” in answering the question.', '', '', 'findMode', 'If your answer is more than one number kindly enter the numbers separated with comma.', 5),
(5, 3, 1, 2, 'mediS1', 'Arrange the given data of the problem in ascending order.', 'To arranged the data in ascending order. It means that you have to arrange the data from smallest to largest.', '', '', 'orderData', 'If your answer is more than one number kindly enter the numbers separated with comma.', 5),
(6, 4, 2, 2, 'mediS2a', 'Determine the median of the data set.', 'In a data set with odd number of values. The median is the value in the middle position of an ascending ordered data set. ', '', '', 'findMedian', 'Enter the correct answer in the box below, if your answer is in decimal do not round off your answer.', 5),
(7, 4, 2, 2, 'mediS2b', 'Determine the median of the data set.', 'In a data set with even number of values. The center value or median is the sum of the two middle values divided into half.', '', '', 'findMedian', 'Enter the correct answer in the box below, if your answer is in decimal do not round off your answer.', 5),
(8, 5, 1, 3, 'meanS1', 'Find the sum of all the values in the data set.', 'The sum of all data set is the addition for each of the values in a data set.', '', '', 'getSumofAllData', 'Enter the correct answer in the box below, if your answer is in decimal do not round off your answer.', 5),
(9, 6, 2, 3, 'meanS2', 'Determine how many values are in the data set.', 'To get the number of values in a data set, you just need to count all the numbers.', '', '', 'countAllTheData', 'Enter the correct answer in the box below.', 5),
(10, 7, 3, 3, 'meanS3', 'Divide sum by total number of values in the data set.', 'Adding all the values of a data set and dividing it by the total number of values is a way of finding the mean average.', '', '', 'findMean', 'Enter the correct answer in the box below, if your answer is in decimal do not round off your answer.', 5),
(11, 8, 1, 4, 'rangeS1', 'Find the largest value in the data set.', 'The data with the highest value among the data set is the largest value.', 'Example In a data set of _. The largest value is', '', 'getTheMaxValue', 'Enter the correct answer in the box below, if your answer is in decimal do not round off your answer.', 5),
(12, 9, 2, 4, 'rangeS2', 'Find the smallest value in the data set.', 'The data with the lowest value among the data set is the smallest value.', 'Example: In a data set of _. The smallest value is', '', 'getTheMinValue', 'Enter the correct answer in the box below, if your answer is in decimal do not round off your answer.', 5),
(13, 10, 3, 4, 'rangeS3', 'Determine the difference of smallest value to the largest value', 'To determine the difference of the two values it means that you need to subtract the smallest value to the largest value.', 'Example: In a data set of _.Subtracting the smallest value _ to the largest value _ the result is _', '', 'findRange', 'Enter the correct answer in the box below, if your answer is in decimal do not round off your answer.', 5),
(14, 11, 1, 5, 'varianceS1', 'Find the mean of the data set.', 'To find the mean of a data set. You need to find the sum of all the values in the data set and divide it by the total number of values.', '', '', 'findMean', 'Enter the correct answer in the box below, if your answer is in decimal do not round off your answer.', 10),
(15, 12, 2, 5, 'varianceS2', 'Find the sum of squared difference of mean to each data.', 'Begin with subtracting the mean from each data, square these values and then get the sum of these squared values.', '', '', 'getTheSumofSquaredDifference', 'Enter the correct answer in the box below, if your answer is in decimal do not round off your answer.', 10),
(16, 13, 3, 5, 'varianceS3', 'Determine the variance by dividing the sum of squared difference of mean to each data point by the total number of values in the data set.', 'To determine the variance, divide the sum of squared difference of mean to each data point by the total number of values in the data set.', '', '', 'findVariance', 'Enter the correct answer in the box below, if your answer is in decimal do not round off your answer.', 10),
(17, 14, 1, 6, 'SDS1', 'Find the mean of the data set.', 'To find the mean of a data set. You need to find the sum of all the values in the data set and divide it by the total number of values.', '', '', 'findMean', 'Enter the correct answer in the box below, if your answer is in decimal do not round off your answer.', 10),
(18, 15, 2, 6, 'SDS2', 'Find the sum of squared difference of mean to each data.', 'Begin with subtracting the mean from each data, square these values and then get the sum of these squared values. ', '', '', 'getTheSumofSquaredDifference', 'Enter the correct answer in the box below, if your answer is in decimal do not round off your answer.', 10),
(19, 16, 3, 6, 'SDS3', 'Find the variance.', 'To find the variance, divide the sum of squared difference of mean to each data point by the total number of values in the data set.', '', '', 'findVariance', 'Enter the correct answer in the box below, if your answer is in decimal do not round off your answer.', 10),
(20, 17, 4, 6, 'SDS4', 'Determine the standard deviation by taking the square root of the variance.', 'The standard deviation is simply the square root of the variance.', '', '', 'findSD', 'Enter the correct answer in the box below, if your answer is in decimal do not round off your answer.', 10);

-- --------------------------------------------------------

--
-- Table structure for table `student_points`
--

CREATE TABLE `student_points` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `problem_task_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `points_earned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_points`
--

INSERT INTO `student_points` (`id`, `student_id`, `problem_id`, `problem_task_id`, `date`, `points_earned`) VALUES
(1, 1, 1, 1, '2018-06-14', 5),
(2, 1, 1, 2, '2018-06-14', 5),
(3, 2, 1, 1, '2018-06-14', 15);

-- --------------------------------------------------------

--
-- Table structure for table `student_problem_solved_and_badges`
--

CREATE TABLE `student_problem_solved_and_badges` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `badge` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_problem_solved_and_badges`
--

INSERT INTO `student_problem_solved_and_badges` (`id`, `student_id`, `problem_id`, `badge`, `status`, `date`) VALUES
(1, 1, 1, 3, 'done', '0000-00-00'),
(2, 1, 2, 2, 'done', '0000-00-00'),
(3, 1, 3, 1, 'done', '0000-00-00'),
(4, 2, 1, 2, 'done', '0000-00-00'),
(5, 2, 2, 2, 'done', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `stud_fin_prob_log`
--

CREATE TABLE `stud_fin_prob_log` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_fin_prob_log`
--

INSERT INTO `stud_fin_prob_log` (`id`, `student_id`, `problem_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stud_fin_topic`
--

CREATE TABLE `stud_fin_topic` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_fin_topic`
--

INSERT INTO `stud_fin_topic` (`id`, `student_id`, `topic_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `stud_lesson_access_log`
--

CREATE TABLE `stud_lesson_access_log` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `topic_name` varchar(100) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_lesson_access_log`
--

INSERT INTO `stud_lesson_access_log` (`id`, `student_id`, `topic_name`, `problem_id`, `date`) VALUES
(1, 1, 'Variance', 2, '2018-10-01 22:21:48'),
(2, 1, 'Mean', 2, '2018-10-01 22:24:13'),
(3, 1, 'Mode', 2, '2018-10-01 23:00:44'),
(4, 1, 'Mode', 0, '2018-10-01 23:34:11'),
(5, 1, 'Mode', 3, '2018-10-02 02:13:48'),
(6, 1, 'Variance', 21, '2018-10-02 04:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `stud_problem_performance_log`
--

CREATE TABLE `stud_problem_performance_log` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `attempt` int(11) NOT NULL,
  `data` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `total_points` int(11) NOT NULL,
  `max_points` int(11) NOT NULL,
  `badge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_problem_performance_log`
--

INSERT INTO `stud_problem_performance_log` (`id`, `student_id`, `problem_id`, `attempt`, `data`, `status`, `date`, `total_points`, `max_points`, `badge`) VALUES
(1, 1, 1, 1, '8 9 6 8 6', 0, '2018-09-30 01:09:59', 10, 10, 3),
(2, 1, 2, 1, '14 15 11 14 13 11 11', 0, '2018-10-02 02:01:31', 10, 10, 3),
(3, 1, 2, 1, '14 15 11 14 13 11 11', 0, '2018-10-02 02:05:22', 10, 10, 3),
(4, 1, 3, 1, '25 20 23 24 20 24 23 22 24 22', 0, '2018-10-02 02:13:54', 9, 10, 3),
(5, 1, 4, 1, '2 3 5 4 3 4 4 2 0 1 0 1 4 4 1', 0, '2018-10-02 02:14:40', 10, 10, 3),
(6, 1, 5, 1, '83 84 84 89 80 89 84 80 89 81 81 89 80 83 90 81 88 90 85 83', 0, '2018-10-02 02:18:34', 7, 10, 2),
(7, 1, 5, 2, '83 81 80 80 88 85 82 89 86 81 82 86 87 86 89 85 86 80 84 84', 0, '2018-10-02 02:19:27', 4, 10, 1),
(8, 1, 1, 2, '8 6 7 6 7', 0, '2018-10-02 02:51:19', 10, 10, 3),
(9, 1, 6, 1, '22 22 24 22 22', 0, '2018-10-02 02:51:45', 10, 10, 3),
(10, 1, 7, 1, '108 107 127 143 127 128 130', 0, '2018-10-02 02:54:38', 10, 10, 3),
(11, 1, 8, 1, '5 4 2 2 3 3 2 4 3 2', 0, '2018-10-02 02:55:09', 10, 10, 3),
(12, 1, 9, 1, '4 3 4 3 5 3 3 3 4 3 3 3 3 3 5', 0, '2018-10-02 02:55:41', 10, 10, 3),
(13, 1, 10, 1, '23 22 24 22 23 22 22 22 24 21 21 23 24 22 22 21 22 23 24 23', 0, '2018-10-02 02:56:37', 10, 10, 3),
(14, 1, 11, 1, '88 88 82 82 90', 0, '2018-10-02 02:58:15', 15, 15, 3),
(15, 1, 12, 1, '12 12 10 11 12 11 15', 0, '2018-10-02 03:00:24', 14, 15, 3),
(16, 1, 13, 1, '6 6 7 8 9 3 7 8 6 4', 0, '2018-10-02 03:02:08', 15, 15, 3),
(17, 1, 14, 1, '5 6 4 4 6 5 7 6 6 3 7 3 5 1 3 4 7 5 5 4', 0, '2018-10-02 03:03:17', 12, 15, 2),
(18, 1, 15, 1, '32 20 30 26 33 21 30 30 22 21 28 22 24 31 30 28 26 22 32 29', 0, '2018-10-02 03:03:56', 12, 15, 2),
(19, 1, 16, 1, '17 18 20 26 20 26 17', 0, '2018-10-02 03:09:02', 15, 15, 3),
(20, 1, 17, 1, '54 65 46 56 57 60 69 51 51 53', 0, '2018-10-02 03:09:38', 15, 15, 3),
(21, 1, 18, 1, '15 5 6 6 7 7 6 12 11 14 7 15 4 13 12', 0, '2018-10-02 04:13:02', 9, 15, 2),
(22, 1, 19, 1, '168 164 164 165 162 152 151 158 159 160', 0, '2018-10-02 04:14:39', 12, 15, 2),
(23, 1, 20, 1, '27 26 24 23 27 22 24 31 24 29 22 23 30 28 30 29 27 24 27 30', 0, '2018-10-02 04:15:35', 12, 15, 2),
(24, 1, 21, 1, '8 8 6 7', 0, '2018-10-02 04:45:22', 18, 30, 2),
(25, 1, 22, 1, '3 9 7 2 7 5 2', 0, '2018-10-02 04:47:09', 18, 30, 2),
(26, 1, 23, 1, '151 155 150 150 152', 0, '2018-10-02 04:47:36', 12, 30, 1),
(27, 1, 24, 1, '13 10 15 12 13 15 13', 0, '2018-10-02 04:48:53', 18, 30, 2),
(28, 1, 25, 1, '25 22 25 26 20', 0, '2018-10-02 04:50:35', 18, 30, 2),
(29, 1, 26, 1, '8 5 8 8 7', 0, '2018-10-02 04:52:16', 28, 40, 2),
(30, 1, 27, 1, '150 152 154 153 151', 0, '2018-10-02 04:53:53', 30, 40, 2),
(31, 1, 28, 1, '15 13 11 16 14', 0, '2018-10-02 04:55:31', 34, 40, 2),
(32, 1, 29, 1, '11 11 10 14 10', 0, '2018-10-02 04:56:42', 34, 40, 2),
(33, 1, 30, 1, '18 18 19 17 21 18 21 19 20', 0, '2018-10-02 04:57:47', 28, 40, 2),
(34, 1, 30, 1, '18 18 19 17 21 18 21 19 20', 0, '2018-10-02 05:00:39', 28, 40, 2),
(35, 1, 30, 1, '18 18 19 17 21 18 21 19 20', 0, '2018-10-02 05:01:45', 28, 40, 2),
(36, 1, 30, 1, '18 18 19 17 21 18 21 19 20', 0, '2018-10-02 05:02:24', 28, 40, 2),
(37, 1, 1, 3, '7 9 9 6 7', 0, '2018-10-02 05:03:03', 9, 10, 3),
(38, 5, 1, 1, '7 7 9 9 6', 0, '2018-10-03 04:57:22', 10, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `stud_questions_performance_log`
--

CREATE TABLE `stud_questions_performance_log` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `problem_code` varchar(30) NOT NULL,
  `question_id` int(10) NOT NULL,
  `attempt` int(11) NOT NULL,
  `fault` int(11) NOT NULL,
  `help_log` varchar(100) NOT NULL,
  `points` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_questions_performance_log`
--

INSERT INTO `stud_questions_performance_log` (`id`, `student_id`, `problem_code`, `question_id`, `attempt`, `fault`, `help_log`, `points`) VALUES
(1, 1, 'prob_1_1', 1, 1, 0, '', 5),
(2, 1, 'prob_1_1', 3, 1, 0, '', 5),
(3, 1, 'prob_2_1', 1, 1, 0, '', 5),
(4, 1, 'prob_2_1', 2, 1, 0, '', 5),
(5, 1, 'prob_2_1', 1, 1, 0, '', 5),
(6, 1, 'prob_2_1', 2, 1, 0, '', 5),
(7, 1, 'prob_3_1', 1, 1, 0, '', 5),
(8, 1, 'prob_3_1', 2, 2, 1, 'explain', 4),
(9, 1, 'prob_4_1', 1, 1, 0, '', 5),
(10, 1, 'prob_4_1', 2, 1, 0, '', 5),
(11, 1, 'prob_5_1', 1, 1, 0, '', 5),
(12, 1, 'prob_5_1', 2, 4, 3, 'explain,example,demonstration', 2),
(13, 1, 'prob_5_2', 1, 4, 3, 'explain,example,demonstration', 2),
(14, 1, 'prob_5_2', 2, 4, 3, 'explain,example,demonstration', 2),
(15, 1, 'prob_1_2', 1, 1, 0, '', 5),
(16, 1, 'prob_1_2', 3, 1, 0, '', 5),
(17, 1, 'prob_6_1', 5, 1, 0, '', 5),
(18, 1, 'prob_6_1', 6, 1, 0, '', 5),
(19, 1, 'prob_7_1', 5, 1, 0, '', 5),
(20, 1, 'prob_7_1', 6, 1, 0, '', 5),
(21, 1, 'prob_8_1', 5, 1, 0, '', 5),
(22, 1, 'prob_8_1', 7, 1, 0, '', 5),
(23, 1, 'prob_9_1', 5, 1, 0, '', 5),
(24, 1, 'prob_9_1', 6, 1, 0, '', 5),
(25, 1, 'prob_10_1', 5, 1, 0, '', 5),
(26, 1, 'prob_10_1', 7, 1, 0, '', 5),
(27, 1, 'prob_11_1', 8, 1, 0, '', 5),
(28, 1, 'prob_11_1', 9, 1, 0, '', 5),
(29, 1, 'prob_11_1', 10, 1, 0, '', 5),
(30, 1, 'prob_12_1', 8, 1, 0, '', 5),
(31, 1, 'prob_12_1', 9, 1, 0, '', 5),
(32, 1, 'prob_12_1', 10, 2, 1, 'explain', 4),
(33, 1, 'prob_13_1', 8, 1, 0, '', 5),
(34, 1, 'prob_13_1', 9, 1, 0, '', 5),
(35, 1, 'prob_13_1', 10, 1, 0, '', 5),
(36, 1, 'prob_14_1', 8, 4, 3, 'explain,example,demonstration', 2),
(37, 1, 'prob_14_1', 9, 1, 0, '', 5),
(38, 1, 'prob_14_1', 10, 1, 0, '', 5),
(39, 1, 'prob_15_1', 8, 4, 3, 'explain,example,demonstration', 2),
(40, 1, 'prob_15_1', 9, 1, 0, '', 5),
(41, 1, 'prob_15_1', 10, 1, 0, '', 5),
(42, 1, 'prob_16_1', 11, 1, 0, '', 5),
(43, 1, 'prob_16_1', 12, 1, 0, '', 5),
(44, 1, 'prob_16_1', 13, 1, 0, '', 5),
(45, 1, 'prob_17_1', 11, 1, 0, '', 5),
(46, 1, 'prob_17_1', 12, 1, 0, '', 5),
(47, 1, 'prob_17_1', 13, 1, 0, '', 5),
(48, 1, 'prob_18_1', 11, 4, 3, 'explain,example,demonstration', 2),
(49, 1, 'prob_18_1', 12, 1, 0, '', 5),
(50, 1, 'prob_18_1', 13, 4, 3, 'explain,example,demonstration', 2),
(51, 1, 'prob_19_1', 11, 4, 3, 'explain,example,demonstration', 2),
(52, 1, 'prob_19_1', 12, 1, 0, '', 5),
(53, 1, 'prob_19_1', 13, 1, 0, '', 5),
(54, 1, 'prob_20_1', 11, 4, 3, 'explain,example,demonstration', 2),
(55, 1, 'prob_20_1', 12, 1, 0, '', 5),
(56, 1, 'prob_20_1', 13, 1, 0, '', 5),
(57, 1, 'prob_21_1', 14, 1, 0, '', 10),
(58, 1, 'prob_21_1', 15, 4, 3, 'explain,example,demonstration', 4),
(59, 1, 'prob_21_1', 16, 4, 3, 'explain,example,demonstration', 4),
(60, 1, 'prob_22_1', 14, 1, 0, '', 10),
(61, 1, 'prob_22_1', 15, 4, 3, 'explain,example,demonstration', 4),
(62, 1, 'prob_22_1', 16, 4, 3, 'explain,example,demonstration', 4),
(63, 1, 'prob_23_1', 14, 4, 3, 'explain,example,demonstration', 4),
(64, 1, 'prob_23_1', 15, 4, 3, 'explain,example,demonstration', 4),
(65, 1, 'prob_23_1', 16, 4, 3, 'explain,example,demonstration', 4),
(66, 1, 'prob_24_1', 14, 1, 0, '', 10),
(67, 1, 'prob_24_1', 15, 4, 3, 'explain,example,demonstration', 4),
(68, 1, 'prob_24_1', 16, 4, 3, 'explain,example,demonstration', 4),
(69, 1, 'prob_25_1', 14, 4, 3, 'explain,example,demonstration', 4),
(70, 1, 'prob_25_1', 15, 4, 3, 'explain,example,demonstration', 4),
(71, 1, 'prob_25_1', 16, 1, 0, '', 10),
(72, 1, 'prob_26_1', 17, 1, 0, '', 10),
(73, 1, 'prob_26_1', 18, 4, 3, 'explain,example,demonstration', 4),
(74, 1, 'prob_26_1', 19, 4, 3, 'explain,example,demonstration', 4),
(75, 1, 'prob_26_1', 20, 1, 0, '', 10),
(76, 1, 'prob_27_1', 17, 1, 0, '', 10),
(77, 1, 'prob_27_1', 18, 4, 3, 'explain,example,demonstration', 4),
(78, 1, 'prob_27_1', 19, 3, 2, 'explain,example', 6),
(79, 1, 'prob_27_1', 20, 1, 0, '', 10),
(80, 1, 'prob_28_1', 17, 1, 0, '', 10),
(81, 1, 'prob_28_1', 18, 4, 3, 'explain,example,demonstration', 4),
(82, 1, 'prob_28_1', 19, 1, 0, '', 10),
(83, 1, 'prob_28_1', 20, 1, 0, '', 10),
(84, 1, 'prob_29_1', 17, 1, 0, '', 10),
(85, 1, 'prob_29_1', 18, 4, 3, 'explain,example,demonstration', 4),
(86, 1, 'prob_29_1', 19, 1, 0, '', 10),
(87, 1, 'prob_29_1', 20, 1, 0, '', 10),
(88, 1, 'prob_30_1', 17, 4, 3, 'explain,example,demonstration', 4),
(89, 1, 'prob_30_1', 18, 4, 3, 'explain,example,demonstration', 4),
(90, 1, 'prob_30_1', 19, 1, 0, '', 10),
(91, 1, 'prob_30_1', 20, 1, 0, '', 10),
(92, 1, 'prob_30_1', 17, 4, 3, 'explain,example,demonstration', 4),
(93, 1, 'prob_30_1', 18, 4, 3, 'explain,example,demonstration', 4),
(94, 1, 'prob_30_1', 19, 1, 0, '', 10),
(95, 1, 'prob_30_1', 20, 1, 0, '', 10),
(96, 1, 'prob_30_1', 17, 4, 3, 'explain,example,demonstration', 4),
(97, 1, 'prob_30_1', 18, 4, 3, 'explain,example,demonstration', 4),
(98, 1, 'prob_30_1', 19, 1, 0, '', 10),
(99, 1, 'prob_30_1', 20, 1, 0, '', 10),
(100, 1, 'prob_30_1', 17, 4, 3, 'explain,example,demonstration', 4),
(101, 1, 'prob_30_1', 18, 4, 3, 'explain,example,demonstration', 4),
(102, 1, 'prob_30_1', 19, 1, 0, '', 10),
(103, 1, 'prob_30_1', 20, 1, 0, '', 10),
(104, 1, 'prob_1_3', 1, 2, 1, 'explain', 4),
(105, 1, 'prob_1_3', 3, 1, 0, '', 5),
(106, 5, 'prob_1_1', 1, 1, 0, '', 5),
(107, 5, 'prob_1_1', 3, 1, 0, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sub_topics`
--

CREATE TABLE `sub_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prereq_subtopic_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_topics`
--

INSERT INTO `sub_topics` (`id`, `topic_id`, `title`, `description`, `prereq_subtopic_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mode', '', 0, NULL, NULL),
(2, 1, 'Median', 'dsdsdsdsd', 1, NULL, NULL),
(3, 1, 'Mean', '', 2, NULL, NULL),
(4, 2, 'Range', '', 3, NULL, NULL),
(5, 2, 'Variance', '', 5, NULL, NULL),
(6, 2, 'Standard Deviation', '', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `general_instruction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prereq_topic_id` int(11) NOT NULL,
  `badge` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_color` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `description`, `general_instruction`, `prereq_topic_id`, `badge`, `background_color`, `created_at`, `updated_at`) VALUES
(1, 'Mode', 'The mode of a data set is the value that occurs most frequently', 'Your main goal is to find the mode of the data set.', 0, 'badge-level-1.png', '#ffd55c', NULL, NULL),
(2, 'Median', 'Median is the middle value in a data set.', 'Your main goal is to find the median of the data set.', 1, 'badge-level-2.png', '#8bd6a0', NULL, NULL),
(3, 'Mean', 'Mean is the most common measure of average.', 'Your main goal is to find the mean of the data set.', 2, 'badge-level-3.png', '#ff6d3b', NULL, NULL),
(4, 'Range', 'The range is the difference between the largest and smallest values of a data distribution.', 'Your main goal is to find the range of the data set.', 3, 'badge-level-4.png', '#21d8de', NULL, NULL),
(5, 'Variance', 'Variance measures how far a data set is spread out.', 'Your main goal is to find the variance of the data set.', 4, 'badge-level-5.png', '#fdb45c', NULL, NULL),
(6, 'Standard Deviation', 'Standard Deviation is the average linear distance from the mean.', 'Your main goal is to find the standard deviation of the data set.', 5, 'badge-level-6.png', '#f74448', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topic_steps`
--

CREATE TABLE `topic_steps` (
  `id` int(30) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `step_order` int(10) NOT NULL,
  `description` text NOT NULL,
  `method` varchar(100) NOT NULL,
  `instruction` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic_steps`
--

INSERT INTO `topic_steps` (`id`, `topic_id`, `step_order`, `description`, `method`, `instruction`) VALUES
(1, 1, 1, 'Order the values from smallest to largest', 'orderData', 'Click the numbers above or enter the number separated by comma ex. 4,5,6'),
(2, 1, 2, 'Determine which value appears most often', 'findMode', ''),
(3, 2, 1, 'Order the values from smallest to largest', 'orderData', ''),
(4, 2, 2, 'Determine the median of the data set', 'findMedian', ''),
(5, 3, 1, 'Add all of the values in the data set', 'getSumofAllData', ''),
(6, 3, 2, 'Get the total number of data set', 'countAllTheData', ''),
(7, 3, 3, 'Divide the sum by the number of values in the data set', 'findMean', ''),
(8, 4, 1, 'Find the largest value in the data set', 'getTheMaxValue', ''),
(9, 4, 2, 'Find the smallest value in the data set', 'getTheMinValue', ''),
(10, 4, 3, 'Difference of smallest value to the largest value', 'findRange', ''),
(11, 5, 1, 'Find the mean', 'findMean', ''),
(12, 5, 2, 'Find the sum of squared difference of mean to each data.', 'getTheSumofSquaredDifference', ''),
(13, 5, 3, 'Determine the variance by dividing the sum of squared difference of mean to each data point by the total number of values in the data set.', 'findVariance', ''),
(14, 6, 1, 'Find the mean of the data set.', 'findMean', ''),
(15, 6, 2, 'Find the sum of squared difference of mean to each data.', 'getTheSumofSquaredDifference', ''),
(16, 6, 3, 'Find the variance.', 'findVariance', ''),
(17, 6, 4, 'Determine the standard deviation by taking the square root of the variance.', 'findSD', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `gender`, `age`, `email`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hazel', 'Doe', 'Female', 17, 'student@example.com', '$2y$10$P3fZAwxRMppfKgsMemiPUeWL6xR065MWbjzZr8vycQUNTKnknvuva', 'girl-2.png', 'HBI2jZVWDDC1XM3LwIc20iTWC3FHh88yV5ldzUfQrZRIZpaJHHopNTbDmEN3', '2018-05-02 05:10:23', '2018-09-28 00:16:41'),
(2, 'Diana Jane', 'Dela Cruz', 'Female', 19, 'diana@example.com', '$2y$10$rcWRmtXdS57bnVVXSnPybub.31ZDlHEGenFg3nirRFhcOU0Kxqnsm', '', 'rMKACmFs3gMiHLhzcL2SK3eTQek0uBYETTpy5shPk9gqme59jOSu8zHuLcIm', '2018-05-22 06:01:13', '2018-05-22 06:18:09'),
(4, 'Ada', 'B', 'F', 23, 'epbfb@yahoo.com', '$2y$10$9/M8ZaHmnR1kCVvqyiHlC.60I8Cq0eFKSFnyD4HoPDmdeffSfvFKy', 'female-2.png', 'YM7oMZfFVxZdzfez54DKqbm8v1LQGub2zISotSBo9EBVLdDGxqUWnzNvh2sm', '2018-09-04 20:14:57', '2018-09-04 20:14:57'),
(5, 'Eun Woo', 'Cha', 'Male', 21, 'eunwoo@gmail.com', '$2y$10$bJUHDpS6UFNIoechqv3F4eIT5bAOHqqioRHfcRGr4EAgG8zhjTC3K', 'boy-1.png', 'qxvUY2x2BFKXJcnm6heKV3pWNmoaG8msekdlAdSkZeNHPUdOEPaVaKrikUnN', '2018-09-21 17:24:50', '2018-09-21 17:24:50'),
(6, 'Kang Joon', 'Seo', 'Male', 25, 'kangjoon@gmail.com', '$2y$10$bh4IoOL/dGqMZQ6A2kfRYO3fUL/HJ1W9WBo8Q/FCmkctwWCij.uw.', '', NULL, '2018-09-25 06:48:25', '2018-09-25 06:48:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `all_stud_performance`
--
ALTER TABLE `all_stud_performance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
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
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `problem_step_by_step_guide`
--
ALTER TABLE `problem_step_by_step_guide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `problem_tasks_and_ans`
--
ALTER TABLE `problem_tasks_and_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_points`
--
ALTER TABLE `student_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_problem_solved_and_badges`
--
ALTER TABLE `student_problem_solved_and_badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stud_fin_prob_log`
--
ALTER TABLE `stud_fin_prob_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stud_fin_topic`
--
ALTER TABLE `stud_fin_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stud_lesson_access_log`
--
ALTER TABLE `stud_lesson_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stud_problem_performance_log`
--
ALTER TABLE `stud_problem_performance_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stud_questions_performance_log`
--
ALTER TABLE `stud_questions_performance_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_topics`
--
ALTER TABLE `sub_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic_steps`
--
ALTER TABLE `topic_steps`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `all_stud_performance`
--
ALTER TABLE `all_stud_performance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `problem_step_by_step_guide`
--
ALTER TABLE `problem_step_by_step_guide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `problem_tasks_and_ans`
--
ALTER TABLE `problem_tasks_and_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `student_points`
--
ALTER TABLE `student_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_problem_solved_and_badges`
--
ALTER TABLE `student_problem_solved_and_badges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stud_fin_prob_log`
--
ALTER TABLE `stud_fin_prob_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `stud_fin_topic`
--
ALTER TABLE `stud_fin_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stud_lesson_access_log`
--
ALTER TABLE `stud_lesson_access_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stud_problem_performance_log`
--
ALTER TABLE `stud_problem_performance_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `stud_questions_performance_log`
--
ALTER TABLE `stud_questions_performance_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `sub_topics`
--
ALTER TABLE `sub_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `topic_steps`
--
ALTER TABLE `topic_steps`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
