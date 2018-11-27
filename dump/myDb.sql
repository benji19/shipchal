SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


 /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
 /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
 /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 /*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `Person` (
   `id` int(11) NOT NULL,
   `id2` int(11) NOT NULL,
   `name` varchar(20) NOT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 INSERT INTO `Person` (`id`, `id2`, `name`) VALUES
 (1, 5, 'William'),
 (2, 6, 'Marc'),
 (3, 7, 'John');

 /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
 /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
 /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
DROP TABLE IF EXISTS bmw_adres;
CREATE TABLE IF NOT EXISTS bmw_adres (
  id int(10) unsigned NOT NULL,
  land varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  naam varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  straat varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  plaats varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  tel varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  fax varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO bmw_adres (id, land, naam, straat, plaats, tel, fax) VALUES
(1, 'France', 'BMW France S.A.', '3, Avenue Ampère', 'F-78886 St. Quentin Yvlines', '0033-1-30439300', '0033-1-30433571'),
(2, 'England', 'BMW (GB) Ltd.', 'Ellisfield Avenue', 'Berkshire RG12 4TA', '0044-1344-426565', '0044-1344-480203'),
(3, 'Belgium', 'BMW Belgium S.A.', 'Lodderstraat 16', 'B-2880 Bornem', '0032-3-8909711', '0032-3-8909811'),
(4, 'Holland', 'BMW Nederland B.V.', 'P.O. Box 5808', 'NL-2280 HV Rijswijk', '0031-70-4133222', '031-70-3907771'),
(5, 'Spain', 'BMW Iberica S.A.', 'Edfificio Gorbea 2', 'E - 28046 Madrid', '0034-1-3350505', '0034-1-3350506'),
(6, 'Switzerland', 'BMW Schweiz AG', 'Industriestrasse 14', 'CH - 8157 Dielsdorf', '0041-1-855311', '0041-1-8532076'),
(7, 'Italy', 'BMW Italy S.p.A.', 'Via dell''Unione Europea 1', 'I-20097 San Donato Milanese', '0039-02-51610111', '039-02-51610333'),
(8, 'Austria', 'BMW Austria Ges.m.b.H.', 'P.O. Box 303', 'A-5021 Salzburg', '0043-662-83830', '0043-662-8383-295'),
(9, 'Germany', 'BMW AG', 'Petuelring 130', 'D - 80788 Munich', '0049-89-3820', '0049-89-382-25858'),
(10, 'Norway', 'BMW Norge AS', 'P.O. Bow 33', 'N-1375 Billingstad', '0047-67118500', '0047-67118530'),
(11, 'Sweden', 'BMW Sverige AB', 'P.O. Box 1525', 'S-17129 Solna', '0046-8-7353900', '0046-8-7356063'),
(12, 'Finland', 'Oy BMW Suomi AB', 'Tuupakantie 8-10', 'FIN - 01740 Vantaa', '0035-89-613741', '0035-89-61452');

DROP TABLE IF EXISTS bmw_auto;
CREATE TABLE IF NOT EXISTS bmw_auto (
  id int(10) unsigned NOT NULL,
  auto varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  serie varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  achtergrond varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  foto varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  opmerking text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO bmw_auto (id, auto, serie, achtergrond, foto, opmerking) VALUES
(1, 'Z3 roadster', 'The BMW Z3', 'logos/Z3.gif', 'autos/Z3roadster.jpg', 'The roadster has always been the purest expression of motoring passion, never failing to set the pulse racing. So it''s no surprise that the open two-seater has a long tradition at BMW. In the 1930s, the BMW 328 Roadster was one of the most beautiful and successful sports cars of its day. In later decades, the BMW 507 and the Z1 built on its heritage. Now the revamped Z3 opens a new chapter in BMW roadster history. Combining seat-of-the-pants excitement and state-of-the-art technology, it takes the traditional roadster into the 21st century.'),
(2, 'Z3 coupé', 'The BMW Z3', 'logos/Z3.gif', 'autos/Z3coupe.jpg', 'There are sports cars with sheer, inexhaustible engine performance. There are sports cars with breathtaking design. There is one sports car that unites both uncompromisingly: The Z3 coupé. Its bold shape expresses how BMW has brought classic sports car values back to life. The Z3 drives in the tradition of the "Grand Tourismo": The long hood and distinguished tail reflect the values of the epoch and allude to the outstanding handling and performance of the Z3 coupé. It is BMW doing what it does best: making the most exciting cars in the world.'),
(3, 'M5 sedan', 'BMW M Models', 'logos/M.gif', 'autos/Msedan.jpg', 'It began with the idea to build an extraordinary sports car. At the end of the nineteen seventies, the legendary BMW M1 was developed, a powerful, 277 hp vehicle with four-valve technology in a 3.5 litre straight six engine. In the eighties, BMW turned this high-performance automobile concept into a production vehicle for the first time - the M5 was born. Maturing over the years, it now has a mighty 400 horsepower delivered by a newly developed eight cylinder engine. So now the next generation of the M5 sedan goes to the starting line, offering a new dimension of power and performance.'),
(4, 'M coupé', 'BMW M Models', 'logos/M.gif', 'autos/Mcoupe.jpg', 'There are sports cars with sheer, inexhaustible engine performance. There are sports cars with breathtaking design. There is a vehicle that unites both uncompromisingly: The M coupé from the BMW M Series. Its shape expressively shows how BMW has brought classic sports car values back to life. The M coupé drives in the tradition of the "Grand Tourismo" era: The long hood and distinguished tail reflect the values of the epoch and allude to the extraordinary power and excellent handling of the M coupé. A unique statement in style and performance.'),
(5, '3 Series sedan', 'The BMW 3 Series', 'logos/3.gif', 'autos/3sedan.jpg', 'Extra centimetres in the interior, more miles to the gallon, better emissions figures. Just three of the on-paper improvements in the third-generation 3 Series sedan. Yet the figures only tell half the story. This is a car that has sheer quality in everything it does: in the effortless yet seductive way it delivers its power, in the way the cabin cossets its occupants with the finest materials, and in the unmatched poise with which it sweeps round bends. It''s a package so complete, so sophisticated and so satisfying, it redefines the sports sedan.'),
(6, '3 Series coupé', 'The BMW 3 Series', 'logos/3.gif', 'autos/3coupe.jpg', 'Whenever a new BMW hits the streets, it’s an eagerly awaited event. When the BMW in question is a coupé, the level of expectation rises a few notches further. Because few cars stir the spirit like the 3 Series coupé, or better embody the philosophy of the ultimate driving machine. First impressions don’t disappoint: the new coupé is wider, lower and more purposeful than its predecessor, the rake of the front and rear windscreens steeper, the profile more dynamic. Unmistakably a sports machine, this is a car you’ll never want to garage, a car that begs to be driven.'),
(7, '3 Series convertible', 'The BMW 3 Series', 'logos/3.gif', 'autos/3convertible.jpg', 'A convertible is just as unconventional as the people who wrote the philosophy of open-top driving. However, unconventional does not necessarily equate with purist minimalism. The new BMW 3 Series offers open-air driving fans the perfect combination: fun and elegance, together with unmatched safety and comfort. And, in terms of performance and style, the new BMW 3 Series convertible sets new standards. Come and see for yourself.'),
(8, '3 Series touring', 'The BMW 3 Series', 'logos/3.gif', 'autos/3touring.jpg', 'When we launched our first touring models in 1971, we launched an entirely new concept. A concept that added extra practicality while maintaining the same level of driving pleasure. The new 3 Series touring is the latest interpretation of that concept, one whose combination of versatility, style and performance has already won it many friends.'),
(9, '3 Series compact', 'The BMW 3 Series', 'logos/3.gif', 'autos/3compact.jpg', 'You know what you want in a car: driving pleasure, sophistication, quality. But you want them in a practical package that occupies a minimum of space. Allow us to present the BMW 3 Series compact. It sets new standards for its class - in style, in safety, and in agility - and brings the ultimate driving machine to a whole new audience.'),
(10, '5 Series sedan', 'The BMW 5 Series', 'logos/5.gif', 'autos/5sedan.jpg', 'Progress is a story of continuous change: From Marconi’s first radio transmission to global high-speed satellite communication. From the first computers, as big as a house, to portable laptops with cordless Internet access. From the car , designed as a simple means of transport, to the BMW 5 Series sedan, designed to forever change the way you feel about driving.'),
(11, '5 Series touring', 'The BMW 5 Series', 'logos/5.gif', 'autos/5touring.jpg', 'It may look like a wagon, albeit a very handsome one, but under the skin of the 5 Series touring beats the heart of a sports car. With its smooth, powerful engines and much-lauded chassis, the touring is every bit as entertaining as its sedan cousin. In fact, it''s only when you look in your rear-view mirror that you''re reminded of the car''s carrying capacity. A weekend at the beach, or an important business appointment: the BMW 5 Series touring is a car that feels confidently at home wherever you drive it.');

DROP TABLE IF EXISTS bmw_info;
CREATE TABLE IF NOT EXISTS bmw_info (
  id int(10) unsigned NOT NULL,
  naam varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  email varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  straat varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  plaats varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  land varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  auto varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  datum date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS bmw_land;
CREATE TABLE IF NOT EXISTS bmw_land (
  id int(10) unsigned NOT NULL,
  land varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO bmw_land (id, land) VALUES
(1, 'Albania'),
(2, 'Algeria'),
(3, 'Andorra'),
(4, 'Angola'),
(5, 'Antigua'),
(6, 'Argentina'),
(7, 'Armenia'),
(8, 'Australia'),
(9, 'Austria'),
(10, 'Azerbaijan'),
(11, 'Bahamas'),
(12, 'Bahrain'),
(13, 'Bangladesh'),
(14, 'Barbados'),
(15, 'Belgium'),
(16, 'Belize'),
(17, 'Benin'),
(18, 'Bhutan'),
(19, 'Bolivia'),
(20, 'Botswana'),
(21, 'Brazil'),
(22, 'Brunei'),
(23, 'Bulgaria'),
(24, 'Burkina'),
(25, 'Burma'),
(26, 'Burundi'),
(27, 'Cambodia'),
(28, 'Cameroon'),
(29, 'Canada'),
(30, 'Chad'),
(31, 'Chile'),
(32, 'China'),
(33, 'Colombia'),
(34, 'Comoros'),
(35, 'Congo'),
(36, 'Costa Rica'),
(37, 'Cote d''Ivoire'),
(38, 'Croatia'),
(39, 'Cuba'),
(40, 'Cyprus'),
(41, 'Czech Republic'),
(42, 'Denmark'),
(43, 'Djibouti'),
(44, 'Dominica'),
(45, 'Ecuador'),
(46, 'Egypt'),
(47, 'El Salvador'),
(48, 'Eritrea'),
(49, 'Estonia'),
(50, 'Ethiopia'),
(51, 'Fiji'),
(52, 'Finland'),
(53, 'France'),
(54, 'Gabon'),
(55, 'Gambia'),
(56, 'Georgia'),
(57, 'Germany'),
(58, 'Ghana'),
(59, 'Gibraltar'),
(60, 'Greece'),
(61, 'Grenada'),
(62, 'Guadeloupe'),
(63, 'Guatemala'),
(64, 'Guinea'),
(65, 'Guinea-Bissau'),
(66, 'Guyana'),
(67, 'Haiti'),
(68, 'Honduras'),
(69, 'Hong Kong'),
(70, 'Hungary'),
(71, 'Iceland'),
(72, 'India'),
(73, 'Indonesia'),
(74, 'Iran'),
(75, 'Iraq'),
(76, 'Irish Republic'),
(77, 'Israel'),
(78, 'Italy'),
(79, 'Jamaica'),
(80, 'Japan'),
(81, 'Jordan'),
(82, 'Afghanistan'),
(83, 'Bosnia-Herzegovina'),
(84, 'Cape Verde Islands'),
(85, 'Central African Republic'),
(86, 'Dominican Republic'),
(87, 'Equatorial Guinea'),
(88, 'Marshall Islands'),
(89, 'Sao Tome and Principe'),
(90, 'Trinidad & Tobago'),
(91, 'United Arab Emirates'),
(92, 'Kazakhstan'),
(93, 'Kenya'),
(94, 'Kirgizstan'),
(95, 'Kiribati'),
(96, 'Korea (North)'),
(97, 'Korea (South)'),
(98, 'Kuwait'),
(99, 'Laos'),
(100, 'Latvia'),
(101, 'Lebanon'),
(102, 'Lesotho'),
(103, 'Liberia'),
(104, 'Libya'),
(105, 'Liechtenstein'),
(106, 'Lithuania'),
(107, 'Luxembourg'),
(108, 'Macedonia'),
(109, 'Madagascar'),
(110, 'Malawi'),
(111, 'Malaysia'),
(112, 'Maldives'),
(113, 'Mali'),
(114, 'Malta'),
(115, 'Mauritania'),
(116, 'Mauritius'),
(117, 'Mexico'),
(118, 'Micronesia'),
(119, 'Moldova'),
(120, 'Monaco'),
(121, 'Mongolia'),
(122, 'Morocco'),
(123, 'Mozambique'),
(124, 'Namibia'),
(125, 'Nauru'),
(126, 'Nepal'),
(127, 'Netherlands'),
(128, 'New Zealand'),
(129, 'Nicaragua'),
(130, 'Niger'),
(131, 'Nigeria'),
(132, 'Norway'),
(133, 'Oman'),
(134, 'Pakistan'),
(135, 'Panama'),
(136, 'Papua New Guinea'),
(137, 'Paraguay'),
(138, 'Peru'),
(139, 'Philippines'),
(140, 'Poland'),
(141, 'Portugal'),
(142, 'Puerto Rico'),
(143, 'Qatar'),
(144, 'Romania'),
(145, 'Russia'),
(146, 'Rwanda'),
(147, 'Saint Kitts'),
(148, 'Saint Lucia'),
(149, 'Saint Vincent'),
(150, 'Samoa'),
(151, 'San Marino'),
(152, 'Saudi Arabia'),
(153, 'Senegal'),
(154, 'Seychelles'),
(155, 'Sierra Leone'),
(156, 'Singapore'),
(157, 'Slovakia'),
(158, 'Slovenia'),
(159, 'Solomon Islands'),
(160, 'Somalia'),
(161, 'South Africa'),
(162, 'Spain'),
(163, 'Sri Lanka'),
(164, 'Sudan'),
(165, 'Suriname'),
(166, 'Swaziland'),
(167, 'Sweden'),
(168, 'Switzerland'),
(169, 'Syria'),
(170, 'Tahiti'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tonga'),
(177, 'Tunisia'),
(178, 'Turkey'),
(179, 'Turkmenistan'),
(180, 'Tuvalu'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Kingdom'),
(184, 'United States'),
(185, 'Uruguay'),
(186, 'Uzbekistan'),
(187, 'Vanuatu'),
(188, 'Venezuela'),
(189, 'Vietnam'),
(190, 'White Russia'),
(191, 'Yemen'),
(192, 'Zaire'),
(193, 'Zambia'),
(194, 'Zimbabwe');


ALTER TABLE bmw_adres
  ADD PRIMARY KEY (id);

ALTER TABLE bmw_auto
  ADD PRIMARY KEY (id);

ALTER TABLE bmw_info
  ADD PRIMARY KEY (id);

ALTER TABLE bmw_land
  ADD PRIMARY KEY (id);


ALTER TABLE bmw_adres
  MODIFY id int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
ALTER TABLE bmw_auto
  MODIFY id int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
ALTER TABLE bmw_info
  MODIFY id int(10) unsigned NOT NULL AUTO_INCREMENT;
ALTER TABLE bmw_land
  MODIFY id int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=195;


INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Jef Verboven', 'Jv@telenet.be', 'Pas 20', '2440 Geel', 'Belgium', '2', '2016-10-01');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Jan Mols', 'Jm@ping.be', 'Nieuwstraat 34', '2400 Mol', 'Belgium', '1', '2016-09-01');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Pieter Pals', 'Pp@gmail.com', 'Stationsstraat 56', '3000 Leuven', 'Belgium', '2', '2016-08-01');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Koen Boven', 'Koen@hotmail.com', 'Kerkstraat 5', '2440 Geel', 'Belgium', '3', '2016-10-11');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Ann Fransen', 'Ann@ping.be', 'Gasthuisstraat 19', '2400 Mol', 'Belgium', '10', '2016-10-03');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Wouter Peeters', 'Wouterw@gmail.com', 'Laar 100', '2460 Kasterlee', 'Belgium', '5', '2011-10-01');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Hendrik Pieters', 'Hendrik@telenet.be', 'Nieuwstraat 34', '2440 Geel', 'Belgium', '7', '2016-09-01');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Els Wauters', 'EW@telenet.be', 'Stationsstraat 56', '3000 Leuven', 'Belgium', '5', '2016-07-01');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Hugo Wouters', 'Hugo@hotmail.com', 'Kerkstraat 5', '2460 Kasterlee', 'Belgium', '3', '2016-08-08');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Leo Peetermans', 'Leo@gmail.com', 'Laar 100', '2400 Mol', 'Belgium', '7', '2016-07-09');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Quinten Vandeperre', 'WQS@telenet.be', 'Gasthuisstraat 19', '2440 Geel', 'Belgium', '2', '2011-11-01');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Xavier Stevens', 'Xxx@ping.be', 'Nieuwstraat 34', '3000 Leuven', 'Belgium', '1', '2016-05-12');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Jef Beke', 'Jef.Beke@hotmail.com', 'Stationsstraat 56', '2460 Kasterlee', 'Belgium', '10', '2016-10-13');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Jan Verhesen', 'Jantje@gmail.com', 'Kerkstraat 5', '2400 Mol', 'Belgium', '8', '2016-09-01');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Piet Mols', 'Piet.Mols@telenet.be', 'Laar 100', '2460 Kasterlee', 'Belgium', '9', '2016-08-01');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Gerard Puts', 'GP@hotmail.com', 'Kerkstraat 5', '2460 Kasterlee', 'Belgium', '2', '2016-10-01');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Jan Beneens', 'Janneke@ping.be', 'Nieuwstraat 34', '3000 Leuven', 'Belgium', '1', '2016-10-05');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Maria Laenen', 'Maria.Laenen@gmail.com', 'Stationsstraat 56', '2440 Geel', 'Belgium', '5', '2016-10-06');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Jef Alen', 'Jef.Alen@gmail.com', 'Gasthuisstraat 19', '3000 Leuven', 'Belgium', '5', '2016-04-01');
INSERT INTO bmw_info (naam, email, straat, plaats, land, auto, datum) VALUES
('Jef Verboven', 'Jv@ping.be', 'Pas 20', '2440 Geel', 'Belgium', '2', '2016-10-01');

 CREATE TABLE IF NOT EXISTS shop_categorie (
  id int(11) NOT NULL,
  naam varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  beschrijving text COLLATE utf8mb4_unicode_ci ) ENGINE=InnoDB
AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO shop_categorie (id, naam, beschrijving) VALUES (1,
'Dranken', 'Frisdranken, koffie, thee, donker en licht bier'), (2,
'Kruiden', 'Zoete en hartige sausen, smaakmakers, spreads en
specerijen'), (3, 'Zoetwaren', 'Desserts en snoep'), (4, 'Zuivel',
'Kaas'), (5, 'Graanprodukten', 'Brood, crackers, pasta en andere
graanprodukten'), (6, 'Vlees', 'Vleesprodukten'), (7, 'Fruit', 'Gedroogd
fruit en tahoe'), (8, 'Vis', 'Zeewier en vis'); DROP TABLE IF EXISTS
shop_leverancier; CREATE TABLE IF NOT EXISTS shop_leverancier (
  id int(11) NOT NULL,
  bedrijf varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  adres varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  land varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  sinds date DEFAULT NULL ) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT
CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; INSERT INTO shop_leverancier
(id, bedrijf, adres, land, sinds) VALUES (1, 'Exotic Liquids', '49
Gilbert St., London EC14SD', 'Ver. Koninkrijk', '2005-09-10'), (2, 'New
Orleans Cajun delights', 'P.O. Box 78934, New Orleans 70117', 'Ver.
Staten', '2005-04-22'), (3, 'Grandma Kelly''s Homestead', '707 Oxford
Rd., Ann Arbor 48104', 'Ver. Staten', '2004-09-17'), (4, 'Tokyo
Traders', '9-8 Sekimai, Tokyo 100', 'Japan', '2008-09-10'), (5,
'Cooperativa de Quesos ''Las Cabras''', 'Calle del Rosal 4, Oviedo
33007', 'Spanje', '2005-07-25'), (6, 'Mayumi''s', '92 Setsuko, Osaka
545', 'Japan', '2001-09-11'), (7, 'Pavlova, Ltd.', '74 Rose St.,
Melbourne 3058', 'Australië', '2011-07-11'), (8, 'Specially Biscuits,
Ltd.', '29 King''s Way, Manchester M14 GSD', 'Ver. Koninkrijk',
'2004-09-10'), (9, 'PB Knäckbrod AB', 'Kaloadagatan 13, Göteborg S-345
67', 'Zweden', '2001-09-10'), (10, 'Refrescos Americanas LTDA', 'Av. das
Americanas 12, Sao Paulo 5442', 'Brazilië', '2004-12-12'), (11, 'Heli
Susswaren GmbH & Co KG', 'Tiergartenstrasse 5, Berlijn 10785',
'Duitsland', '2005-12-06'), (12, 'Plusspar Lebensmittelgrossmärkte AG',
'Bogenallee 51, Frankfurt 60439', 'Duitsland', '2005-01-10'), (13,
'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Frahmredder 112a, Cuxhaven
27478', 'Duitsland', '2001-09-10'), (14, 'Formaggi Forntine s.r.l.',
'Viale Dante 75, Ravenna 48100', 'Italië', '2005-01-18'), (15, 'Norske
Meierier', 'Hatlevegen 5, Sandvika 1320', 'Noorwegen', '2003-08-16'),
(16, 'Bigfoot Breweries', '3400 - 8th Avenue, Bend 97101', 'Ver.
Staten', '2010-05-05'); DROP TABLE IF EXISTS shop_product; CREATE TABLE
IF NOT EXISTS shop_product (
  id int(11) NOT NULL,
  leverancierId int(11) DEFAULT NULL,
  categorieId int(11) DEFAULT NULL,
  naam varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  nederlandseNaam varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  hoeveelheidPerEenheid varchar(250) COLLATE utf8mb4_unicode_ci NOT
NULL,
  prijsPerEenheid decimal(10,2) NOT NULL,
  voorraad int(11) NOT NULL,
  inBestelling int(11) NOT NULL,
  bestelpunt int(11) NOT NULL,
  uitAssortiment tinyint(1) NOT NULL ) ENGINE=InnoDB AUTO_INCREMENT=70
DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; INSERT INTO
shop_product (id, leverancierId, categorieId, naam, nederlandseNaam,
hoeveelheidPerEenheid, prijsPerEenheid, voorraad, inBestelling,
bestelpunt, uitAssortiment) VALUES (1, 1, 1, 'Chai', 'Dharamsala thee',
'10 dozen x 20 zakjes', '18.13', 39, 0, 10, 0), (2, 1, 1, 'Chang',
'Tibetaans gerstebier', '24 flesjes à 340 g', '19.14', 17, 40, 25, 0),
(3, 1, 2, 'Aniseed Syrup', 'Dropsiroop', '12 flessen à 550 ml', '10.70',
13, 0, 100, 0), (4, 2, 2, 'Chef Anton''s Cajun Seasoning', 'Chef
Anton''s cajun-kruiden', '48 potten à 170 g', '22.16', 53, 0, 100, 0),
(5, 3, 2, 'Grandma''s Boysenberry Spread', 'Grandma''s boysenberry-jam',
'12 potten à 230 g', '25.19', 120, 0, 100, 0), (6, 3, 7, 'Uncle Bob''s
Organic Dried Pears', 'Uncle Bob''s macrobiot. gedroogde peren', '12
pakken à 455 g', '30.22', 15, 0, 10, 0), (7, 3, 2, 'Northwoods Cranberry
Sauce', 'Northwoods veenbessensaus', '12 flessen à 340 g', '40.30', 6,
0, 100, 0), (8, 4, 8, 'Ikura', 'Kuit', '12 potten à 200 ml', '31.23',
31, 0, 10, 0), (9, 5, 4, 'Queso Cabrales', 'Cabrales kaas', '1,5
kg/verpakking', '21.16', 22, 30, 30, 0), (10, 5, 4, 'Queso Manchego La
Pastora', 'Manchego La Pastora kaas', '10 pakken à 500 g', '13.10', 86,
0, 0, 0), (11, 6, 8, 'Konbu', 'Kelp-zeewier', '2 kg/verpakking', '6.40',
24, 0, 5, 0), (12, 6, 7, 'Tofu', 'Tahoe', '40 pakken à 100 g', '23.80',
35, 0, 0, 0), (13, 6, 2, 'Genen Shouyu', 'Natriumarme sojasaus', '24
flesjes à 250 ml', '15.38', 39, 0, 100, 0), (14, 7, 3, 'Pavlova',
'Pavlova schuimgebak', '32 dozen à 500 g', '17.32', 29, 0, 10, 0), (15,
7, 8, 'Carnarvon Tigers', 'Carnarvon garnalen', '16 kg/verpakking',
'62.30', 42, 0, 0, 0), (16, 8, 3, 'Teatime Chocolate Biscuits', 'Teatime
chocoladebiscuits', '10 dozen x 12 stuks', '9.13', 25, 0, 5, 0), (17, 8,
3, 'Sir Rodney''s Marmalade', 'Sir Rodney''s marmelade', '30
kadoverpakkingen', '80.40', 40, 0, 0, 0), (18, 8, 3, 'Sir Rodney''s
Scones', 'Sir Rodney''s cake', '24 dozen x 4 stuks', '10.70', 3, 40, 5,
0), (19, 9, 5, 'Gustaf''s Knäckebröd', 'Gustaf''s Rye knäckebröd', '24
pakken à 500 g', '21.16', 104, 0, 25, 0), (20, 9, 5, 'Tunnbröd',
'Toast', '12 pakken à 250 g', '9.70', 61, 0, 25, 0), (21, 11, 3, 'NuNuCa
Nuß-Nougat-Creme', 'NuNuCa noten/noga-pasta', '20 potten à 450 g',
'14.10', 76, 0, 30, 0), (22, 11, 3, 'Gumbär Gummibärchen', 'Gumbär
Gummibärchen', '100 zakken à 250 g', '31.00', 15, 0, 0, 0), (23, 11, 3,
'Schoggi Schokolade', 'Schoggi chocolade', '100 stuks à 100 g', '44.43',
49, 0, 30, 0), (24, 13, 8, 'Nord-Ost Matjeshering', 'Nord-Ost
maatjesharing', '10 glazen à 200 g', '26.30', 10, 0, 15, 0), (25, 14, 4,
'Gorgonzola Telino', 'Gorgonzola Telino', '12 pakken à 100 g', '12.41',
0, 70, 20, 0), (26, 14, 4, 'Mascarpone Fabioli', 'Mascarpone Fabioli',
'24 pakken à 200 g', '32.24', 9, 40, 25, 0), (27, 15, 4, 'Geitost',
'Geitekaas', '500 g', '2.48', 112, 0, 20, 0), (28, 16, 1, 'Sasquatch
Ale', 'Sasquatch licht bier', '24 flessen à 340 g', '14.10', 111, 0, 15,
0), (29, 16, 1, 'Steeleye Stout', 'Steeleye donker bier', '24 flessen à
340 g', '18.13', 20, 0, 15, 0), (30, 12, 8, 'Inlagd Sill',
'Pekelharing', '24 glazen à 250 g', '19.14', 112, 0, 20, 0), (31, 12, 8,
'Gravad lax', 'Gravad zalm', '12 pakken à 500 g', '26.19', 62, 0, 25,
0), (32, 11, 1, 'Côte de Blaye', 'Côte de Blaye (Rode Bordeaux)', '12
flessen à 75 cl', '13.40', 17, 0, 15, 0), (33, 11, 1, 'Chartreuse
verte', 'Chartreuse verte (likeur)', '750 cc per fles', '18.13', 69, 0,
5, 0), (34, 10, 8, 'Boston Crab Meat', 'Boston krab', '24 blikjes à 114
g', '18.26', 123, 0, 30, 0), (35, 10, 8, 'Jack''s New England Clam
Chowder', 'Jack''s New England schelpdierensoep', '12 blikken à 340 g',
'10.42', 85, 0, 10, 0), (36, 9, 1, 'Ipoh Coffee', 'Maleisische koffie',
'16 blikken à 500 g', '46.34', 17, 0, 25, 0), (37, 9, 2, 'Gula Malacca',
'Donkerbruine suiker uit Malakka', '20 zakken à 2 kg', '19.31', 27, 0,
100, 0), (38, 12, 8, 'Røgede sild', 'Gerookte haring', '1
kg/verpakking', '9.43', 5, 70, 15, 0), (39, 12, 8, 'Spegesild',
'Gezouten haring', '4 glazen à 450 g', '12.90', 95, 0, 0, 0), (40, 8, 3,
'Zaanse koeken', 'Zaanse koeken', '10 dozen à 114 g', '9.43', 36, 0, 0,
0), (41, 8, 3, 'Chocolade', 'Hollandse chocolade', '10 dozen à 250g',
'13.34', 15, 70, 25, 0), (42, 7, 3, 'Maxilaku', 'Drop', '24 zakjes à 50
g', '20.15', 10, 0, 15, 0), (43, 7, 3, 'Valkoinen suklaa', 'Witte
chocolade', '12 repen à 100 g', '16.13', 65, 0, 30, 0), (44, 6, 7,
'Manjimup Dried Apples', 'Manjimup gedroogde appels', '50 pakken à 300
g', '53.39', 20, 0, 10, 0), (45, 6, 5, 'Filo Mix', 'Mix voor Grieks
bladerdeeg', '16 dozen à 2 kg', '7.50', 38, 0, 25, 0), (46, 5, 6,
'Tourtière', 'Varkenvleespastei', '16 stuks', '7.39', 21, 0, 10, 0),
(47, 5, 6, 'Pâté chinois', 'Shepard''s Pie', '24 dozen x 2 stuks',
'24.18', 115, 0, 20, 0), (48, 4, 5, 'Gnocchi di nonna Alice', 'Gramma
Alice''s knoedels', '24 pakken à 250 g', '38.28', 21, 10, 30, 0), (49,
4, 5, 'Ravioli Angelo', 'Angelo ravioli', '24 pakken à 250 g', '19.35',
36, 0, 20, 0), (50, 3, 8, 'Escargots de Bourgogne', 'Slakken uit
Bourgondië', '24 stuks', '13.15', 62, 0, 20, 0), (51, 2, 4, 'Raclette
Courdavault', 'Courdavault Raclette kaas', '5 kg/verpakking', '5.40',
79, 0, 0, 1), (52, 2, 4, 'Camembert Pierrot', 'Pierrot camembert', '15
kazen à 300 g', '9.70', 19, 0, 0, 1), (53, 1, 2, 'Sirop d''érable',
'Ahornstroop', '24 flessen à 500 ml', '28.29', 113, 0, 100, 0), (54, 1,
3, 'Tarte au sucre', 'Suikertaart', '48 stuks', '49.70', 17, 0, 0, 0),
(55, 7, 2, 'Vegie-spread', 'Plantaardige sandwich spread', '15 glazen à
625 g', '44.43', 24, 0, 100, 0), (56, 12, 5, 'Wimmers gute
Semmelknödel', 'Wimmer''s overheerlijke broodknoedels', '20 zakken x 4
stuks', '33.00', 22, 80, 30, 0), (57, 2, 2, 'Louisiana Fiery Hot Pepper
Sauce', 'Louisiana scherpe pepersaus', '32 flessen à 230 g', '21.11',
76, 0, 100, 0), (58, 2, 2, 'Louisiana Hot Spiced Okra', 'Louisiana hete,
gekruide okra', '24 flessen à 230 g', '17.13', 4, 0, 100, 0), (59, 16,
1, 'Laughing Lumberjack Lager', 'Laughing Lumberjack lagerbier', '24
flessen à 340 g', '14.10', 52, 0, 10, 0), (60, 8, 3, 'Scottish
Longbreads', 'Schotse longbreads', '10 dozen x 8 stuks', '12.41', 6, 10,
15, 0), (61, 15, 4, 'Gudbrandsdalsost', 'Gudbrandsdals kaas', '10
kg/verpakking', '36.27', 26, 0, 15, 0), (62, 7, 1, 'Outback Lager',
'Australisch Outback lagerbier', '24 flessen à 355 ml', '15.11', 15, 10,
30, 0), (63, 15, 4, 'Fløtemysost', 'Fløtemys roomkaas', '10 pakken à 500
g', '21.34', 26, 0, 0, 1), (64, 14, 4, 'Mozzarella di Giovanni',
'Giovanni''s mozzarella', '24 pakken à 200 g', '10.27', 14, 0, 0, 0),
(65, 12, 8, 'Röd Kaviar', 'Rode kaviaar', '24 flessen à 150 g', '15.11',
101, 0, 5, 0), (66, 4, 7, 'Longlife Tofu', 'Bewaar tahoe', '5
kg/verpakking', '10.70', 4, 20, 5, 0), (67, 12, 1, 'Rhönbräu
Klosterbier', 'Rhönbräu bier', '24 flessen à 0,5 l', '8.31', 125, 0, 25,
0), (68, 7, 1, 'Lakkalikööri', 'Cloudberry likeur', '500 ml', '18.13',
57, 0, 20, 0), (69, 12, 2, 'Original Frankfurter grüne Soße', 'Originele
Frankfurter groene saus', '12 dozen', '11.17', 32, 0, 100, 0); ALTER
TABLE shop_categorie
  ADD PRIMARY KEY (id); ALTER TABLE shop_leverancier
  ADD PRIMARY KEY (id); ALTER TABLE shop_product
  ADD PRIMARY KEY (id),
  ADD KEY leverancierId (leverancierId),
  ADD KEY categorieId (categorieId); ALTER TABLE shop_categorie
  MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9; ALTER
TABLE shop_leverancier
  MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17; ALTER
TABLE shop_product
  MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70; ALTER
TABLE shop_product
  ADD CONSTRAINT shop_product_ibfk_1 FOREIGN KEY (leverancierId)
REFERENCES shop_leverancier (id),
  ADD CONSTRAINT shop_product_ibfk_2 FOREIGN KEY (categorieId)
REFERENCES shop_categorie (id);
