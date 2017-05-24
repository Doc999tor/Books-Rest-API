-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2017 at 01:53 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `poster`) VALUES
(1, 'Isaac Asimov', 'http://www.famousauthors.org/famous-authors/isaac-asimov.jpg'),
(2, 'Ray Bradbury', 'http://www.cbc.ca/books/hi-bradbury-cp-02762828-8col.jpg'),
(3, 'Douglas Adams', 'https://upload.wikimedia.org/wikipedia/commons/6/64/Douglas_adams_portrait.jpg'),
(4, 'Jules Verne', 'http://www.famousauthors.org/famous-authors/jules-verne.jpg'),
(5, 'Stanislaw Lem', 'http://www.vol1brooklyn.com/wp-content/uploads/2014/09/stanislaw-lem.jpg'),
(6, 'Roger Zelazny', 'http://images.gr-assets.com/authors/1207671346p5/3619.jpg'),
(7, 'Stephen King', 'https://i.redd.it/8nxufq50fumx.jpg'),
(8, 'Clifford D. Simak', 'http://www.sualci.com/images/clifford-d-simak-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `description` text,
  `author_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `poster`, `description`, `author_id`) VALUES
(1, 'I, Robot', 'http://www.sfreviews.net/large_covers/irobot.jpg', 'I, Robot is a collection of science fiction short stories by American writer Isaac Asimov. The stories originally appeared in the American magazines Super Science Stories and Astounding Science Fiction between 1940 and 1950 and were then compiled into a book for stand-alone publication by Gnome Press in 1950, in an initial edition of 5,000 copies. The stories are woven together by a framing narrative in which the fictional Dr. Susan Calvin tells each story to a reporter (who serves as the narrator) in the 21st century.', 1),
(2, 'The Caves of Steel', 'https://images-na.ssl-images-amazon.com/images/I/51tlY9eD4XL._SX288_BO1,204,203,200_.jpg', 'The Caves of Steel is a novel by American writer Isaac Asimov. It is essentially a detective story, and illustrates an idea Asimov advocated, that science fiction is a flavor that can be applied to any literary genre, rather than a limited genre itself. The book was first published as a serial in Galaxy magazine, from October to December 1953. A Doubleday hardcover followed in 1954.', 1),
(3, 'The Naked Sun', 'https://images-na.ssl-images-amazon.com/images/I/51hK46796SL._SX305_BO1,204,203,200_.jpg', 'The Naked Sun is a science fiction novel by American writer Isaac Asimov, the second in his Robot series. Like its predecessor, The Caves of Steel, this is a whodunit story. The book was first published in 1957 after being serialized in Astounding Science Fiction between October and December 1956.', 1),
(4, 'The Robots of Dawn', 'https://images-na.ssl-images-amazon.com/images/I/51n6jB%2BdJjL._SX294_BO1,204,203,200_.jpg', 'The Robots of Dawn is a "whodunit" science fiction novel by American writer Isaac Asimov, first published in 1983. It is the third novel in Asimovs Robot series. It was nominated for both the Hugo and Locus Awards in 1984.', 1),
(5, 'Robots and Empire', 'https://pictures.abebooks.com/isbn/9780345328946-us.jpg', 'Robots and Empire is a science fiction novel by the American author Isaac Asimov and published by Doubleday Books in 1985. It is part of Asimovs Robot series, which consists of many short stories (collected in I, Robot, The Rest of the Robots, and The Complete Robot) and several novels (The Caves of Steel, The Naked Sun, and The Robots of Dawn).', 1),
(6, 'Dandelion Wine', 'https://images-na.ssl-images-amazon.com/images/I/51Hk%2B5v5wrL._SX322_BO1,204,203,200_.jpg', 'Dandelion Wine is a 1957 novel by Ray Bradbury, taking place in the summer of 1928 in the fictional town of Green Town, Illinois, based upon Bradburys childhood home of Waukegan, Illinois. The novel developed from the short story Dandelion Wine which appeared in the June 1953 issue of Gourmet magazine.', 2),
(7, 'The Halloween Tree', 'http://images.penguinrandomhouse.com/cover/9780394824093', 'The Halloween Tree is a 1972 fantasy novel by American author Ray Bradbury which traces the history of Samhain and Halloween. The novel originated in 1967 as the screenplay for an unproduced collaboration with animator Chuck Jones. In 1993, Bradbury wrote and narrated a feature-length animated version of the novel for television.', 2),
(8, 'Honoris causa', 'https://www.penguin.co.uk/content/dam/catalogue/pim/editions/379/9780241248676/cover.jpg.rendition.460.707.png', 'Conceived expressly for Aveek Sarkar, the Chief Editor of the Ananda Bazar Group of Publications and indisputably one of the most prominent personalities in the journalism, publishing and media industries of India.', 2),
(9, 'Fahrenheit 451', 'https://images-na.ssl-images-amazon.com/images/I/51CJBOq2BSL._SY344_BO1,204,203,200_.jpg', 'Fahrenheit 451 is a dystopian novel by Ray Bradbury, published in 1953. It is regarded as one of his best works. The novel presents a future American society where books are outlawed and "firemen" burn any that are found. The books tagline explains the title: Fahrenheit 451 – the temperature at which book paper catches fire, and burns ...', 2),
(10, 'Curiosity', 'http://images.gr-assets.com/books/1385688759l/19034347.jpg', 'Michael Crichton meets The Time Travelers Wife in this powerful debut novel in which a man, frozen in the Arctic ice for more than a century, awakens in the present day.', 2),
(11, 'The October Country', 'https://images-na.ssl-images-amazon.com/images/I/51x8GApLt4L._SX302_BO1,204,203,200_.jpg', 'The October Country is a 1955 collection of nineteen macabre short stories by Ray Bradbury. It reprints fifteen of the twenty-seven stories of his 1947 collection Dark Carnival, and adds four more of his stories previously published elsewhere.', 2),
(12, 'Hitchhiker\'s Guide to the Galaxy', 'http://ecx.images-amazon.com/images/I/51d5tk7z3qL.jpg', 'The Hitchhiker\'s Guide to the Galaxy is a comedy science fiction series created by Douglas Adams. Originally a radio comedy broadcast on BBC Radio 4 in 1978, it was later adapted to other formats, including stage shows, novels, comic books, a 1981 TV series, a 1984 computer game, and 2005 feature film.', 3),
(13, 'The Meaning of Liff', 'http://www.isfdb.org/wiki/images/8/87/THMNNGFLFF0000.jpg', 'The Meaning of Liff (UK Edition: ISBN 0-330-28121-6, US Edition: ISBN 0-517-55347-3) is a humorous dictionary of toponymy and etymology, written by Douglas Adams and John Lloyd, published in the United Kingdom in 1983 and the United States in 1984.', 3),
(14, 'The Adventures of Captain Hatteras', 'https://images-na.ssl-images-amazon.com/images/I/51ls9gjcTsL._SX348_BO1,204,203,200_.jpg', 'The Adventures of Captain Hatteras (French: Voyages et aventures du capitaine Hatteras) is an adventure novel by Jules Verne in two parts: The English at the North Pole (French: Les Anglais au pôle nord) and The desert of ice (French: Le Désert de glace).', 4),
(15, 'Around the Moon', 'http://images.gr-assets.com/books/1347844481l/78784.jpg', 'Around the Moon (French: Autour de la Lune, 1870), Jules Verne\'s sequel to From the Earth to the Moon, is a science fiction novel which continues the trip to the moon which was only partially described in the previous novel. It was later combined with From the Earth to the Moon to create A Trip to the Moon and Around It.', 4),
(16, 'Around the World in Eighty Days', 'https://s-media-cache-ak0.pinimg.com/originals/4d/49/18/4d4918fd2f57d4832a5f3ee971632994.jpg', 'Around the World in Eighty Days (French: Le tour du monde en quatre-vingts jours) is a classic adventure novel by the French writer Jules Verne, published in 1873. In the story, Phileas Fogg of London and his newly employed French valet Passepartout attempt to circumnavigate the world in 80 days on a £20,000 wager (the approximate equivalent of £2 million in 2016) set by his friends at the Reform Club. It is one of Verne\'s most acclaimed works.', 4),
(17, 'Eight Hundred Leagues on the Amazon', 'https://storysci.files.wordpress.com/2015/05/c870b-800leagues.jpg', 'Eight Hundred Leagues on the Amazon (French: La Jangada - Huit Cents lieues sur Amazone) is a novel by Jules Verne, published in 1881. It has also been published as The Giant Raft. Unlike many of his other novels, this story does not have any science fiction elements. It is an adventure novel. This novel involves how Joam Garral, a ranch owner who lives near the Peruvian-Brazilian border on the Amazon River, is forced to travel down-stream when his past catches up with him.', 4),
(18, 'From the Earth to the Moon', 'https://images-na.ssl-images-amazon.com/images/I/51u21i9ayZL._SX331_BO1,204,203,200_.jpg', 'From the Earth to the Moon (French: De la terre à la lune) is an 1865 novel by Jules Verne. It tells the story of the Baltimore Gun Club, a post-American Civil War society of weapons enthusiasts, and their attempts to build an enormous Columbiad space gun and launch three people—the Gun Club\'s president, his Philadelphian armor-making rival, and a French poet—in a projectile with the goal of a moon landing.', 4),
(19, 'Journey to the Center of the Earth', 'http://ecx.images-amazon.com/images/I/613P1PSfQML.jpg', 'Journey to the Center of the Earth  is an 1864 science fiction novel by Jules Verne. The story involves German professor Otto Lidenbrock who believes there are volcanic tubes going toward the centre of the Earth. He, his nephew Axel, and their guide Hans descend into the Icelandic volcano Snæfellsjökull, encountering many adventures, including prehistoric animals and natural hazards, before eventually coming to the surface again in southern Italy, at the Stromboli volcano.', 4),
(20, 'Master of the World', 'http://www.loyalbooks.com/image/detail/Master-of-the-World.jpg', 'Master of the World is a 1961 science fiction film based upon the Jules Verne novels Robur the Conqueror and its sequel, Master of the World. The movie was written by Richard Matheson, directed by William Witney, and features Vincent Price, Charles Bronson, and Henry Hull. American International Pictures released the film as a double feature with Konga.', 4),
(21, 'The Mysterious Island', 'https://is3-ssl.mzstatic.com/image/thumb/Video/v4/10/c5/8a/10c58ab9-eea4-41d6-c82f-60d685ad3fda/source/1200x630bb.jpg', 'The Mysterious Island is a novel by Jules Verne, published in 1874. The original edition, published by Hetzel, contains a number of illustrations by Jules Férat. The novel is a crossover sequel to Verne\'s famous Twenty Thousand Leagues Under the Sea and In Search of the Castaways, though its themes are vastly different from those books.', 4),
(22, 'Off on a Comet', 'http://ecx.images-amazon.com/images/I/51-qz6DsjAL.jpg', 'The story starts with a comet called Gallia, that touches the Earth in its flight and collects a few small chunks of it. The disaster occurred on January 1 of the year 188x in the area around Gibraltar. On the territory that was carried away by the comet there remained a total of thirty-six people of French, English, Spanish and Russian nationality. These people did not realize at first what had happened, and considered the collision an earthquake.', 4),
(23, 'Twenty Thousand Leagues Under the Sea', 'http://ecx.images-amazon.com/images/I/515I1TwFNcL._SX323_BO1,204,203,200_.jpg', 'Twenty Thousand Leagues Under the Sea (French: Vingt mille lieues sous les mers: Tour du monde sous-marin, Twenty Thousand Leagues Under the Seas: An Underwater Tour of the World) is a classic science fiction novel by French writer Jules Verne published in 1870.', 4),
(24, 'Solaris', 'http://payload247.cargocollective.com/1/7/226038/7254783/solarisMOCKUP%201.jpg', 'Solaris is a 1961 philosophical science fiction novel by Polish writer Stanisław Lem. The book centers upon the themes of the nature of human memory, experience and the ultimate inadequacy of communication between human and non-human species.', 5),
(25, 'His Master\'s Voice', 'https://images-na.ssl-images-amazon.com/images/I/51NLFcF4GZL._SX344_BO1,204,203,200_.jpg', 'His Master\'s Voice (original Polish title: Głos Pana) is a science fiction novel on the message from space theme written by Polish writer Stanisław Lem. It was first published in 1968. and translated into English by Michael Kandel in 1983. It is a densely philosophical first contact story about an effort by scientists to decode, translate and understand an extraterrestrial transmission.', 5),
(26, 'Fiasco', 'http://images.gr-assets.com/books/1287614689l/28766.jpg', 'Fiasco is a science fiction novel by Polish author Stanisław Lem, first published in a German translation in 1986. The book, published in Poland the following year, is a further elaboration of Lem's skepticism: in Lem's opinion, the difficulty in communication with alien civilizations is cultural disparity rather than spatial distance. The failure to communicate with an alien civilization is the main theme of the book. It was translated into English by Michael Kandel (1988). It was nominated for the Arthur C. Clarke Award.', 5),
(27, 'Nine Princes in Amber', 'https://hippogriff.files.wordpress.com/2012/08/nine-princes-hard-cover.jpg', 'Nine Princes in Amber is a new wave fantasy novel and the first in the Chronicles of Amber series by Roger Zelazny. It was first published in 1970, and later spawned a computer game of the same name. The first (Doubleday hardcover) edition of the novel is unusually rare; the publisher pulped a significant part of the original print run in error when the order went out to destroy remaining copies of Zelazny\'s older book Creatures of Light and Darkness.', 6),
(28, 'The Guns of Avalon', 'https://arielhudnall.files.wordpress.com/2014/01/n3286.jpg', 'The Guns of Avalon is the second book in the Chronicles of Amber series by Roger Zelazny. The book continues straight from the previous volume, Nine Princes in Amber, although it soon includes a recap. Corwin has escaped the dungeons of Amber, where he was imprisoned by his hated brother Eric, who has seized the throne.', 6),
(29, 'Sign of the Unicorn', 'http://www.isfdb.org/wiki/images/7/74/SGNFTHNCRN1978.jpg', 'Sign of the Unicorn is the third book in the Chronicles of Amber series by Roger Zelazny. It was first published in serial format in Galaxy Science Fiction. Eric is dead, and Corwin now rules Amber as Regent — but someone has murdered Caine and framed Corwin. Random tells his part of the story.', 6),
(30, 'The Hand of Oberon', 'http://images.gr-assets.com/books/1417644788l/116982.jpg', 'The Hand of Oberon is the fourth book in The Chronicles of Amber series by Roger Zelazny published in book form by Doubleday in 1976. It was first published in serial format in Galaxy Science Fiction. Corwin explores the true Amber, and finds the source of the Black Road, in the damaged primal Pattern. He learns that to repair the damage will require the Jewel of Judgement, which he must retrieve from Earth.', 6),
(31, 'The Courts of Chaos', NULL, NULL, 6),
(32, 'Trumps of Doom', NULL, NULL, 6),
(33, 'Blood of Amber', NULL, NULL, 6),
(34, 'Sign of Chaos', NULL, NULL, 6),
(35, 'Knight of Shadows', 'https://www.risingshadow.net/libdb/images/books/842.jpg', NULL, 6),
(36, 'Prince of Chaos', NULL, NULL, 6),
(37, '11/22/63', NULL, NULL, 7),
(38, '\'Salem\'s Lot', 'https://upload.wikimedia.org/wikipedia/en/7/7b/Salemslottrade.jpg', 'Thousands of miles away from the small township of \'Salem\'s Lot, two terrified people, a man and a boy, still share the secrets of those clapboard houses and tree-lined streets. They must return to \'Salem\'s Lot for a final confrontation with the unspeakable evil that lives on in the town.', 7),
(39, '\'Salem\'s Lot Illustrated Edition', NULL, NULL, 7),
(40, 'Bag of Bones', NULL, NULL, 7),
(41, 'Black House', NULL, NULL, 7),
(42, 'Carrie', NULL, NULL, 7),
(43, 'Cell', NULL, NULL, 7),
(44, 'Christine', NULL, NULL, 7),
(45, 'The Colorado Kid', NULL, NULL, 7),
(46, 'Cujo', NULL, NULL, 7),
(47, 'Cycle of the Werewolf', NULL, NULL, 7),
(48, 'The Dark Half', NULL, NULL, 7),
(49, 'The Dark Tower: Song of Susannah', NULL, NULL, 7),
(50, 'The Dark Tower', NULL, NULL, 7),
(51, 'The Dark Tower: The Drawing of the Three', NULL, NULL, 7),
(52, 'The Dark Tower: The Gunslinger (Revised)', NULL, NULL, 7),
(53, 'The Dark Tower: The Gunslinger', NULL, NULL, 7),
(54, 'The Dark Tower: The Waste Lands', NULL, NULL, 7),
(55, 'The Dark Tower: The Wind Through the Keyhole', NULL, NULL, 7),
(56, 'The Dark Tower: Wizard and Glass', NULL, NULL, 7),
(57, 'The Dark Tower: Wolves of the Calla', NULL, NULL, 7),
(58, 'The Dead Zone', NULL, NULL, 7),
(59, 'Desperation', NULL, NULL, 7),
(60, 'Doctor Sleep', NULL, NULL, 7),
(61, 'Dolores Claiborne', NULL, NULL, 7),
(62, 'Dreamcatcher', NULL, NULL, 7),
(63, 'Duma Key', NULL, NULL, 7),
(64, 'End of Watch', NULL, NULL, 7),
(65, 'The Eyes of the Dragon', NULL, NULL, 7),
(66, 'Finders Keepers', NULL, NULL, 7),
(67, 'Firestarter', NULL, NULL, 7),
(68, 'From A Buick 8', NULL, NULL, 7),
(69, 'Gerald\'s Game', NULL, NULL, 7),
(70, 'The Girl Who Loved Tom Gordon', NULL, NULL, 7),
(71, 'The Green Mile: Coffey on the Mile', NULL, NULL, 7),
(72, 'The Green Mile: Coffey\'s Hands', NULL, NULL, 7),
(73, 'The Green Mile: Night Journey', NULL, NULL, 7),
(74, 'The Green Mile: The Bad Death of Eduard Delacroix', NULL, NULL, 7),
(75, 'The Green Mile: The Complete Serial Novel', NULL, NULL, 7),
(76, 'The Green Mile: The Mouse on the Mile', NULL, NULL, 7),
(77, 'The Green Mile: The Two Dead Girls', NULL, NULL, 7),
(78, 'Insomnia', NULL, NULL, 7),
(79, 'IT', NULL, NULL, 7),
(80, 'Joyland', NULL, NULL, 7),
(81, 'Joyland Illustrated Edition', NULL, NULL, 7),
(82, 'Lisey\'s Story', NULL, NULL, 7),
(83, 'Misery', NULL, NULL, 7),
(84, 'Mr. Mercedes', NULL, NULL, 7),
(85, 'Needful Things', NULL, NULL, 7),
(86, 'Pet Sematary', NULL, NULL, 7),
(87, 'Revival', NULL, NULL, 7),
(88, 'Rose Madder', NULL, NULL, 7),
(89, 'The Shining', NULL, NULL, 7),
(90, 'Sleeping Beauties', NULL, NULL, 7),
(91, 'The Stand', NULL, NULL, 7),
(92, 'The Stand: The Complete & Uncut Edition', NULL, NULL, 7),
(93, 'The Talisman', NULL, NULL, 7),
(94, 'The Tommyknockers', NULL, NULL, 7),
(95, 'Under the Dome', NULL, NULL, 7),
(96, 'The Creator', NULL, NULL, 8),
(97, 'Cosmic Engineers', NULL, NULL, 8),
(98, 'Galaxy novel', NULL, NULL, 8),
(99, 'Time and Again', NULL, NULL, 8),
(100, 'City', NULL, NULL, 8),
(101, 'Ring Around the Sun', NULL, NULL, 8),
(102, 'Time is the Simplest Thing', NULL, NULL, 8),
(103, 'The Trouble with Tycho', NULL, NULL, 8),
(104, 'Tycho', NULL, NULL, 8),
(105, 'Way Station', NULL, NULL, 8),
(106, 'All Flesh Is Grass', NULL, NULL, 8),
(107, 'Why Call Them Back From Heaven?', NULL, NULL, 8),
(108, 'The Werewolf Principle', NULL, NULL, 8),
(109, 'The Goblin Reservation', NULL, NULL, 8),
(110, 'Out of Their Minds', NULL, NULL, 8),
(111, 'Destiny Doll', NULL, NULL, 8),
(112, 'A Choice of Gods', NULL, NULL, 8),
(113, 'Cemetery World', NULL, NULL, 8),
(114, 'Our Children\'s Children', NULL, NULL, 8),
(115, 'Enchanted Pilgrimage', NULL, NULL, 8),
(116, 'Shakespeare\'s Planet', NULL, NULL, 8),
(117, 'A Heritage of Stars', NULL, NULL, 8),
(118, 'The Fellowship of the Talisman', NULL, NULL, 8),
(119, 'Mastodonia', NULL, NULL, 8),
(120, 'X Minus One', NULL, NULL, 8),
(121, 'The Visitors', NULL, NULL, 8),
(122, 'Project Pope', NULL, NULL, 8),
(123, 'Where the Evil Dwells', NULL, NULL, 8),
(124, 'Special Deliverance', NULL, NULL, 8),
(125, 'Highway of Eternity', NULL, NULL, 8),
(126, 'His Master\'s Voice', 'https://upload.wikimedia.org/wikipedia/en/6/63/HisMastersVoice.jpg', 'Twenty-five hundred scientists have been herded into an isolated site in the Nevada desert. A neutrino message of extraterrestrial origin has been received and the scientists, under the surveillance of the Pentagon, labor on His Master&#39;s Voice, the secret program set up to decipher the transmission. Among them is Peter Hogarth, an eminent mathematician. When the project reaches a stalemate, Hogarth pursues clandestine research into the classified TX Effect--another secret breakthrough. But when he discovers, to his horror, that the TX Effect could lead to the construction of a fission bomb, Hogarth decides such knowledge must not be allowed to fall into the hands of the military.', 5),
(127, 'Return from the Stars', NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `buyer_name` varchar(255) DEFAULT NULL,
  `book_id` int(10) UNSIGNED DEFAULT NULL,
  `added` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `buyer_name`, `book_id`, `added`) VALUES
(1, 'Gabriella Smith', 76, '2005-08-12 18:15:00'),
(2, 'David Johnson', 83, '2010-07-19 18:28:00'),
(3, 'London Williams', 120, '2013-11-21 00:54:00'),
(4, 'Natalie Jones', 20, '2002-04-28 10:41:00'),
(5, 'Aria Brown', 8, '2005-03-22 02:16:00'),
(6, 'Hunter Davis', 58, '2006-07-09 21:34:00'),
(7, 'Layla Miller', 36, '2006-02-07 06:53:00'),
(8, 'Eliana Wilson', 74, '2013-11-28 09:43:00'),
(9, 'Lucas Moore', 72, '2004-09-26 14:39:00'),
(10, 'Jocelyn Taylor', 19, '2008-11-11 13:17:00'),
(11, 'Caroline Anderson', 91, '2002-06-02 06:01:00'),
(12, 'Avery Thomas', 48, '2009-04-28 07:51:00'),
(13, 'Aurora Jackson', 110, '2000-02-04 23:36:00'),
(14, 'Evelyn White', 40, '2009-05-13 04:14:00'),
(15, 'Logan Harris', 111, '2000-01-19 18:17:00'),
(16, 'Anthony Martin', 116, '2013-04-29 14:27:00'),
(17, 'Elijah Thompson', 14, '2016-07-05 17:25:00'),
(18, 'Charlie Garcia', 124, '2006-08-26 03:09:00'),
(19, 'Emma Martinez', 64, '2011-12-10 11:15:00'),
(20, 'Liliana Robinson', 32, '2014-09-08 21:48:00'),
(21, 'Keira Clark', 115, '2007-08-03 13:21:00'),
(22, 'Zane Rodriguez', 93, '2009-07-14 03:14:00'),
(23, 'Ellie Lewis', 95, '2014-12-25 19:14:00'),
(24, 'Lucy Lee', 16, '2009-08-23 13:11:00'),
(25, 'Max Walker', 76, '2015-01-23 20:45:00'),
(26, 'Alexandra Hall', 44, '2012-07-15 01:36:00'),
(27, 'Stella Allen', 37, '2016-03-03 21:18:00'),
(28, 'Olivia Young', 116, '2013-01-17 14:54:00'),
(29, 'Hannah Hernandez', 8, '2006-12-27 15:08:00'),
(30, 'Connor King', 30, '2010-06-07 10:08:00'),
(31, 'Sophie Wright', 96, '2003-09-26 15:04:00'),
(32, 'Alaina Lopez', 90, '2007-10-25 17:34:00'),
(33, 'Alice Hill', 10, '2014-07-11 18:22:00'),
(34, 'Ava Scott', 52, '2006-10-09 11:17:00'),
(35, 'Sadie Green', 95, '2006-06-27 19:52:00'),
(36, 'Jacob Adams', 13, '2011-02-26 21:12:00'),
(37, 'Brooklyn Baker', 45, '2000-04-26 14:43:00'),
(38, 'Madelyn Gonzalez', 60, '2015-08-27 05:15:00'),
(39, 'Adrian Nelson', 35, '2011-01-03 19:04:00'),
(40, 'Mason Carter', 3, '2003-05-14 06:41:00'),
(41, 'Declan Mitchell', 54, '2002-05-27 11:21:00'),
(42, 'Jackson Perez', 89, '2016-07-15 01:36:00'),
(43, 'Alyssa Roberts', 9, '2006-03-15 19:18:00'),
(44, 'Cameron Turner', 5, '2016-08-19 17:11:00'),
(45, 'Zoe Phillips', 93, '2010-08-17 07:49:00'),
(46, 'Benjamin Campbell', 70, '2011-04-20 23:27:00'),
(47, 'William Parker', 34, '2016-08-09 04:03:00'),
(48, 'Mila Evans', 73, '2014-09-23 09:36:00'),
(49, 'Eli Edwards', 51, '2003-04-10 12:08:00'),
(50, 'Aaron Collins', 96, '2005-03-10 00:39:00'),
(51, 'Amelia Stewart', 72, '2006-02-17 16:11:00'),
(52, 'Nathan Sanchez', 27, '2009-04-06 08:10:00'),
(53, 'Hudson Morris', 100, '2002-11-09 17:02:00'),
(54, 'Kaylee Rogers', 107, '2000-07-21 11:19:00'),
(55, 'Gianna Reed', 72, '2015-02-08 02:41:00'),
(56, 'Chloe Cook', 121, '2007-10-18 06:05:00'),
(57, 'Charlie Morgan', 9, '2002-09-24 12:37:00'),
(58, 'Alexander Bell', 2, '2004-05-15 22:57:00'),
(59, 'Audrey Murphy', 27, '2007-02-17 00:53:00'),
(60, 'Kylie Bailey', 40, '2014-03-21 06:27:00'),
(61, 'Violet Rivera', 7, '2001-05-14 16:59:00'),
(62, 'Isabelle Cooper', 76, '2004-11-03 16:58:00'),
(63, 'Allison Richardson', 51, '2011-08-17 01:38:00'),
(64, 'Jayce Cox', 72, '2002-07-28 14:53:00'),
(65, 'Leah Howard', 71, '2007-02-25 09:00:00'),
(66, 'Aaliyah Ward', 122, '2007-03-08 12:58:00'),
(67, 'Ian Torres', 75, '2005-10-16 09:20:00'),
(68, 'Sophia Peterson', 22, '2015-07-18 12:42:00'),
(69, 'Carter Gray', 40, '2010-06-02 22:47:00'),
(70, 'Sarah Ramirez', 29, '2008-06-15 11:06:00'),
(71, 'Parker James', 82, '2014-11-26 16:51:00'),
(72, 'Emily Watson', 13, '2008-05-10 14:33:00'),
(73, 'Juliana Brooks', 89, '2010-05-25 20:05:00'),
(74, 'Lillian Kelly', 39, '2005-08-01 02:32:00'),
(75, 'Addison Sanders', 61, '2007-06-07 01:45:00'),
(76, 'Jason Price', 105, '2003-12-05 22:50:00'),
(77, 'Nolan Bennett', 32, '2014-06-12 20:22:00'),
(78, 'Maria Wood', 74, '2015-12-30 14:29:00'),
(79, 'Adalyn Barnes', 10, '2003-12-18 06:40:00'),
(80, 'Cole Ross', 66, '2007-03-19 10:14:00'),
(81, 'Riley Henderson', 99, '2003-11-21 01:28:00'),
(82, 'Paisley Coleman', 104, '2009-09-18 10:57:00'),
(83, 'Jonathan Jenkins', 60, '2012-03-30 06:30:00'),
(84, 'Elliot Perry', 22, '2016-03-10 20:48:00'),
(85, 'Mateo Powell', 5, '2009-11-19 20:54:00'),
(86, 'Camden Long', 26, '2013-12-01 19:24:00'),
(87, 'Elizabeth Patterson', 86, '2008-07-02 16:08:00'),
(88, 'Colton Hughes', 10, '2015-05-10 06:59:00'),
(89, 'Grayson Flores', 112, '2006-11-12 10:44:00'),
(90, 'Wyatt Washington', 63, '2005-08-23 15:55:00'),
(91, 'Harper Butler', 108, '2011-09-09 03:11:00'),
(92, 'Joseph Simmons', 2, '2013-08-14 01:56:00'),
(93, 'Grace Foster', 58, '2001-09-06 08:51:00'),
(94, 'Christopher Gonzales', 125, '2007-08-17 23:57:00'),
(95, 'Xavier Bryant', 15, '2008-03-19 02:47:00'),
(96, 'Asher Alexander', 82, '2009-08-15 01:05:00'),
(97, 'Josiah Russell', 20, '2006-08-28 09:33:00'),
(98, 'James Griffin', 108, '2012-04-30 01:59:00'),
(99, 'Nicholas Diaz', 67, '2014-07-18 11:46:00'),
(100, 'Leo Hayes', 101, '2006-05-27 13:45:00'),
(101, 'Cooper Myers', 26, '2015-11-20 08:17:00'),
(102, 'Austin Ford', 101, '2009-03-24 03:26:00'),
(103, 'Jordyn Hamilton', 7, '2007-10-10 06:57:00'),
(104, 'Easton Graham', 5, '2016-02-18 06:09:00'),
(105, 'Miles Sullivan', 52, '2012-11-30 16:46:00'),
(106, 'Bryson Wallace', 41, '2001-01-23 16:16:00'),
(107, 'Annabelle Woods', 108, '2015-03-26 14:42:00'),
(108, 'Ezra Cole', 56, '2004-08-27 13:05:00'),
(109, 'Levi West', 29, '2006-10-11 03:09:00'),
(110, 'Mackenzie Jordan', 7, '2004-04-05 00:28:00'),
(111, 'Everly Owens', 41, '2003-07-14 21:11:00'),
(112, 'Abigail Reynolds', 65, '2015-01-19 14:09:00'),
(113, 'Bella Fisher', 36, '2010-07-25 18:43:00'),
(114, 'Peyton Ellis', 74, '2007-10-05 01:56:00'),
(115, 'Lila Harrison', 20, '2004-11-26 00:12:00'),
(116, 'Jeremiah Gibson', 30, '2016-10-05 06:13:00'),
(117, 'Hazel Mcdonald', 98, '2007-06-24 01:33:00'),
(118, 'Luna Cruz', 42, '2006-02-20 21:40:00'),
(119, 'Isabella Marshall', 96, '2008-02-05 08:28:00'),
(120, 'Scarlett Ortiz', 113, '2000-05-03 03:13:00'),
(121, 'Sebastian Gomez', 38, '2016-02-20 20:43:00'),
(122, 'Kinsley Murray', 102, '2008-01-29 20:03:00'),
(123, 'Cora Freeman', 29, '2013-04-25 08:29:00'),
(124, 'Owen Wells', 44, '2007-06-01 01:51:00'),
(125, 'Nora Webb', 27, '2010-03-25 21:16:00'),
(126, 'Christian Simpson', 118, '2002-09-02 17:08:00'),
(127, 'Ethan Stevens', 113, '2010-01-18 03:36:00'),
(128, 'Caleb Tucker', 110, '2013-07-23 05:55:00'),
(129, 'Lincoln Porter', 52, '2012-11-11 16:55:00'),
(130, 'Muhammad Hunter', 113, '2000-04-04 16:47:00'),
(131, 'Makayla Hicks', 34, '2003-06-20 08:34:00'),
(132, 'Vivian Crawford', 105, '2002-10-25 07:17:00'),
(133, 'Dylan Henry', 47, '2013-11-20 09:01:00'),
(134, 'Noah Boyd', 61, '2010-12-23 17:25:00'),
(135, 'Damian Mason', 22, '2005-02-02 05:34:00'),
(136, 'Lily Morales', 64, '2009-06-22 08:10:00'),
(137, 'Jack Kennedy', 47, '2001-12-19 05:26:00'),
(138, 'Ella Warren', 114, '2009-03-30 15:06:00'),
(139, 'Julia Dixon', 72, '2003-12-02 00:09:00'),
(140, 'Alex Ramos', 70, '2000-04-06 08:51:00'),
(141, 'Liam Reyes', 56, '2000-12-21 18:44:00'),
(142, 'Claire Burns', 72, '2012-04-17 03:49:00'),
(143, 'Tyler Gordon', 45, '2009-07-28 12:31:00'),
(144, 'Samantha Shaw', 92, '2003-06-29 06:26:00'),
(145, 'Adeline Holmes', 81, '2002-06-06 19:48:00'),
(146, 'Aubrey Rice', 35, '2001-12-26 05:09:00'),
(147, 'Henry Robertson', 36, '2011-11-24 08:44:00'),
(148, 'Madison Hunt', 44, '2002-09-21 04:06:00'),
(149, 'Matthew Black', 38, '2005-10-19 22:24:00'),
(150, 'Brayden Daniels', 80, '2014-07-03 07:17:00'),
(151, 'Michael Palmer', 102, '2006-12-16 03:41:00'),
(152, 'Isaac Mills', 85, '2003-05-22 14:11:00'),
(153, 'Dominic Nichols', 73, '2010-09-24 21:29:00'),
(154, 'Charlotte Grant', 78, '2003-01-29 23:09:00'),
(155, 'Samuel Knight', 13, '2004-08-18 02:13:00'),
(156, 'Elias Ferguson', 9, '2002-10-06 13:47:00'),
(157, 'Carson Rose', 32, '2004-06-27 16:11:00'),
(158, 'Elena Stone', 86, '2006-11-19 04:50:00'),
(159, 'Aiden Hawkins', 90, '2013-06-27 02:08:00'),
(160, 'Savannah Dunn', 22, '2001-09-28 04:20:00'),
(161, 'Andrew Perkins', 1, '2014-10-08 06:43:00'),
(162, 'Anna Hudson', 82, '2015-05-28 18:55:00'),
(163, 'Harrison Spencer', 93, '2004-09-19 22:16:00'),
(164, 'Ryan Gardner', 90, '2008-02-25 20:51:00'),
(165, 'Mia Stephens', 122, '2000-06-15 01:45:00'),
(166, 'Emilia Payne', 18, '2007-12-19 03:55:00'),
(167, 'Victoria Pierce', 89, '2006-05-23 19:24:00'),
(168, 'Jordan Berry', 102, '2002-08-17 02:17:00'),
(169, 'Evan Matthews', 56, '2011-05-24 15:27:00'),
(170, 'Reagan Arnold', 52, '2003-06-16 23:42:00'),
(171, 'Maya Wagner', 65, '2001-10-19 23:51:00'),
(172, 'Eleanor Willis', 53, '2014-07-09 19:48:00'),
(173, 'Oliver Ray', 55, '2015-05-04 08:38:00'),
(174, 'John Watkins', 68, '2004-10-06 05:14:00'),
(175, 'Daniel Olson', 107, '2009-10-19 05:43:00'),
(176, 'Camilla Carroll', 82, '2015-08-16 23:55:00'),
(177, 'Kai Duncan', 18, '2011-10-29 18:00:00'),
(178, 'Callie Snyder', 104, '2011-01-13 15:47:00'),
(179, 'Skyler Hart', 56, '2010-06-03 07:25:00'),
(180, 'Thomas Cunningham', 98, '2014-09-11 18:03:00'),
(181, 'Isaiah Bradley', 109, '2009-11-30 05:55:00'),
(182, 'Melanie Lane', 9, '2014-04-01 21:31:00'),
(183, 'Luke Andrews', 48, '2011-07-12 16:26:00'),
(184, 'Adam Ruiz', 84, '2001-10-14 14:20:00'),
(185, 'Arianna Harper', 103, '2008-06-19 11:11:00'),
(186, 'Gabriel Fox', 47, '2015-09-20 00:21:00'),
(187, 'Joshua Riley', 112, '2015-08-28 19:09:00'),
(188, 'Jayden Armstrong', 112, '2006-02-03 08:47:00'),
(189, 'Eva Carpenter', 35, '2008-04-22 16:16:00'),
(190, 'Chase Weaver', 28, '2007-01-01 21:04:00'),
(191, 'Zachary Greene', 5, '2002-12-26 12:14:00'),
(192, 'Hailey Lawrence', 12, '2003-09-21 04:13:00'),
(193, 'Tristan Elliott', 68, '2002-02-10 07:05:00'),
(194, 'Caden Chavez', 16, '2005-01-11 15:21:00'),
(195, 'Landon Sims', 70, '2007-03-04 08:50:00'),
(196, 'Penelope Austin', 116, '2009-02-04 16:35:00'),
(197, 'Julian Peters', 28, '2009-09-11 11:51:00'),
(198, 'Gavin Kelley', 53, '2006-02-25 13:54:00'),
(199, 'Bailey Franklin', 3, '2003-11-25 16:58:00'),
(200, 'Kennedy Lawson', 59, '2009-05-19 12:26:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idx` (`name`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idx` (`name`),
  ADD KEY `fk_author_id` (`author_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buyer_name_idx` (`buyer_name`),
  ADD KEY `book_id_idx` (`book_id`),
  ADD KEY `added_idx` (`added`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
