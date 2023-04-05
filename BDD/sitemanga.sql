-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 05 avr. 2023 à 18:32
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sitemanga`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `login`, `mdp`) VALUES
(1, 'root', '63a9f0ea7bb98050796b649e85481845');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE latin1_bin NOT NULL,
  `photo` varchar(510) COLLATE latin1_bin NOT NULL,
  `note` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `eprn` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `yn` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `lien` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Structure de la table `scan`
--

DROP TABLE IF EXISTS `scan`;
CREATE TABLE IF NOT EXISTS `scan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(700) COLLATE latin1_bin NOT NULL,
  `photo` varchar(600) COLLATE latin1_bin NOT NULL,
  `note` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `eprn` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `yn` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `lien` varchar(700) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Déchargement des données de la table `scan`
--

INSERT INTO `scan` (`id`, `nom`, `photo`, `note`, `eprn`, `yn`, `lien`) VALUES
(22, 'Game obu Familia - Family Senki', 'GameObuFamilia.jpg', 'A', '49', 'Non', 'https://mangabuddy.com/game-obu-familia-family-senki/chapter-49'),
(23, 'Kage no Jitsuryokusha ni Naritakute', 'KageNoJitsuryokushaNiNaritakute.jpg', 'A', '35', 'Non', 'https://mangapuma.com/kage-no-jitsuryokusha-ni-naritakute/chapter-35'),
(24, 'My Gift LVL 9999 Unlimited Gacha', 'My Gift LVL 9999 Unlimited Gacha.jpg', 'A', '68', 'Non', 'https://www.mangaread.org/manga/my-gift-lvl-9999-unlimited-gacha/chapter-68/'),
(25, 'Mushoku Tensei', 'Mushoku Tensei.jpg', 'A', '84', 'Non', 'https://mangakatana.com/manga/mushoku-tensei-isekai-ittara-honki-dasu.145/c84'),
(26, 'Garbage brave isekai ni shoukan sare suterareta yuusha no fukushuu monogatari', 'Garbage-Brave-Isekai-ni-Shoukan-Sare-Suterareta-Yuusha-no-Fukushuu-Monogatari-3875117811.jpg', 'A', '30', 'Non', 'https://www.mangaread.org/manga/garbage-hero-a-revenge-story-of-a-hero-who-got-summoned-to-another-world/chapter-30/'),
(27, 'Je suis un assassin et je surpasse le héros', 'Couv_406805-2862761548.jpg', 'A', '23(jsp si ya une suite)', 'Non', 'https://www.vfscan.com/scan-je-suis-un-assassin-et-je-surpasse-le-heros-22/'),
(28, 'Tensei Shitara dai Nana Ouji dattanode, Kimamani Majutsu o Kiwamemasu', 'Komik-Tensei-Shitara-dai-Nana-Ouji-dattanode-Kimamani-Majutsu-o-Kiwamemasu-scaled-1793774538.jpg', 'A', '42', 'Non', 'https://mangakomi.io/manga/tensei-shitara-dai-nana-ouji-dattanode-kimamani-majutsu-o-kiwamemasu/chapter-42/'),
(29, 'FUKUSHUU O KOINEGAU SAIKYOU YUUSHA WA, YAMI NO CHIKARA DE SENMETSU MUSOU SURU', 'fukushuu-wo-koinegau-saikyou-yuusha-wa-yami-no-chikara-de-senmetsu-musou-suru-33603-2902973160.jpg', 'A', '67', 'Non', 'https://www.mangaread.org/manga/fukushuu-o-koinegau-saikyou-yuusha-wa-yami-no-chikara-de-senmetsu-musou-suru/chapter-67/'),
(30, 'Yakuza hime', 'Ninkyou-Tensei-Isekai-no-Yakuza-Hime-Vol.jpg', 'B', '28', 'Non', 'https://www.mangaread.org/manga/yakuza-reincarnation/chapter-28/'),
(31, 'Moto Shogun no Undead Knight', '15151-7-3028413922.jpg', 'B', '18', 'Non', 'https://mangaonlineteam.com/manga/moto-shogun-no-undead-knight/chapter-18/'),
(32, 'Hametsu no Oukoku', 'hametsu-no-oukoku-38114-2696369204.jpg', 'B', '33', 'Non', 'https://kissmanga.in/kissmanga/hametsu-no-oukoku/chapter-33/'),
(33, 'Skill Lender\'s Retrieving (tale) ', 'th-2064912995.jpg', 'B', '9', 'Non', 'https://www.mangaread.org/manga/skill-lenders-retrieving-tale-%ef%bd%9ei-told-you-its-10-per-10-days-at-first-didnt-i%ef%bd%9e/chapter-9/'),
(34, 'Class ga Isekai Shoukan sareta Naka Ore dake Nokotta n desu ga', 'class-ga-isekai-shoukan-sareta-naka-ore-dake-nokotta-n-desu-ga-23468-3343707963.jpg', 'B', '31', 'Non', 'https://www.mangaread.org/manga/class-ga-isekai-shoukan-sareta-naka-ore-dake-nokotta-n-desu-ga/chapter-31-1/'),
(35, 'ANSATSU SKILL DE ISEKAI SAIKYOU: RENKINJUTSU TO ANSATSU JUTSU O KIWAMETA ORE WA, SEKAI O KAGE KARA SHIHAI SURU', 'th-1017755502.jpg', 'B', '12', 'Non', 'https://mangakakalot.com/chapter/yw928096/chapter_12.1'),
(36, 'Isekai de Cheat Skill wo te ni Shita ore wa, Genjitsu Sekai wo mor Musou Suru ~Level Up wa Jinsei wo Kaeta', 'Isekai-de-Cheat-Skill-wo-te-ni-Shita-ore-wa-Genjitsu-Sekai-wo-mo-Musou-Suru-Level-Up-wa-Jinsei-wo-Kaeta-2846068113.jpg', 'B', '18', 'Non', 'https://www.mangaread.org/manga/isekai-de-cheat-skill-wo-te-ni-shita-ore-wa-genjitsu-sekai-wo-mo-musou-suru-level-up-wa-jinsei-wo-kaeta/chapter-18/'),
(37, 'Yondome wa Iyana Shi Zokusei Majutsushi', 'yondome-wa-iyana-shi-zokusei-majutsushi-light-novel-21148-3324570255.jpg', 'B', '37', 'Non', 'https://mangapuma.com/yondome-wa-iyana-shi-zokusei-majutsushi/chapter-37'),
(38, 'Buta Koushaku ni Tensei shita kara, Kondo wa Kimi ni Suki to Iitai', 'buta-koushaku-ni-tensei-shita-kara-kondo-wa-kimi-ni-suki-to-iitai-28367-1315182660.jpg', 'B', '8', 'Non', 'https://mangapuma.com/buta-koushaku-ni-tensei-shitakara-kondo-wa-kimi-ni-suki-to-iitai/chapter-8'),
(39, 'Akai kiri no naka kara', 'Akai-Kiri-no-Naka-kara-2581251219.jpg', 'B', '11', 'Non', 'https://www.mangatown.com/manga/akai_kiri_no_naka_kara/c011/17.html'),
(41, 'Maou no Ore ga Dorei Elf wo Yome ni Shitanda ga, Dou Medereba Ii?', 'th-3783176126.jpg', 'B', '31', 'Non', 'https://www.mangaread.org/manga/maou-no-ore-ga-dorei-elf-wo-yome-ni-shitanda-ga-dou-medereba-ii/chapter-31/'),
(42, 'Mushoku Tensei - Depressed Magician Arc', 'th-3571483715.jpg', 'B', '2', 'Non', 'https://www.mangaread.org/manga/mushoku-tensei-depressed-magician-arc/chapter-2/'),
(43, 'Nidome no Yuusha', 'th-1670182142.jpg', 'B', '11', 'Non', 'https://mangapuma.com/nidome-no-yuusha/chapter-11'),
(44, ' Isekai Monster Breeder ', 'th-440300873.jpg', 'B', '63', 'Non', 'https://mangapuma.com/isekai-monster-breeder/chapter-63'),
(45, 'Shijou Saikyou no Mahou Kenshi, f Rank Boukensha ni Tensei Suru', 'shijou-saikyou-no-mahou-kenshi-f-rank-boukensha-ni-tensei-suru-kensei-to-matei-2-tsu-no-zense-o-motta-otoko-no-eiyuutan-4056510702.jpg', 'B', '75', 'Non', 'https://mangapuma.com/shijou-saikyou-no-mahou-kenshi-f-rank-boukensha-ni-tensei-suru-kensei-to-matei-2-tsu-no-zense-o-motta-otoko-no-eiyuutan/chapter-75'),
(46, 'TENSEI KIZOKU KANTEI SUKIRU DE NARIAGARU ', '5479-4214694031.jpg', 'B', '54', 'Non', 'https://www.glanceoflife.com/statuses/15398724.html'),
(48, 'The Unsuccessful Yet Academically Unparalleled Sage ~a Cheating s-Rank Sorcerer’s Post-Rebirth Adventurer Log', 'TUS_Vol1_00-202046385.jpg', 'B', '16', 'Non', 'https://www.mangaread.org/manga/the-unsuccessful-yet-academically-unparalleled-sage-a-cheating-s-rank-sorcerers-post-rebirth-adventurer-log/chapter-15-5/'),
(49, 'Machigai Shokan! Oidasareta kedo Joui Gokan Skill de Rakuraku Seikatsu', 'cover_250x350-4237774767.jpg', 'B', '7', 'Non', 'https://www.mangaread.org/manga/machigai-shoukan-oidasareta-kedo-joui-gokan-skill-de-rakuraku-seikatsu/chapter-7/'),
(50, 'Hero of the Three Continents', 'th-816001041.jpg', 'B', '20', 'Non', 'https://mangapuma.com/hero-of-the-three-continents/chapter-19-2'),
(51, 'My Lover Was Stolen, and I Was Kicked Out of the Hero’s Party, but I Awakened to the EX Skill “Fixed Damage” and Became Invincible. Now, Let’s Begin Some Revenge ', 'Capture d’écran 2023-01-10 215100.png', 'C', '11.1', 'Non', 'https://www.glanceoflife.com/statuses/14129276.html'),
(52, 'Dorei Tensei: Sono Dorei, Saikyou no Moto Ouji ni Tsuki', 'th-885387648.jpg', 'C', '32', 'Non', 'https://www.mangaread.org/manga/dorei-tensei-sono-dorei-saikyou-no-moto-ouji-ni-tsuki/chapter-32/'),
(53, 'Sekai no Owari no Encore', 'sekai_no_owari_no_encore_531-3680491157.jpg', 'C', '8', 'Non', 'https://www.japanread.cc/manga/sekai-no-owari-no-encore/8'),
(54, 'Tomodachi Game', 'th-2899989254.jpg', 'B', 'Jsp', 'Non', 'https://tomodachimanga.com/'),
(55, 'Makikomarete Isekai Teni suru Yatsu wa, Taitei Cheat', 'makikomarete-isekai-teni-suru-yatsu-wa-taitei-cheat-22673-3516101211.jpg', 'C', '16', 'Non', 'https://chapmanganato.com/manga-at977654/chapter-16'),
(56, 'Kouritsu Kuriya Madoushi, Daini no Jinsei de Madou o Kiwameru', 'kouritsu-kuriya-madoushi-daini-no-jinsei-de-madou-o-kiwameru-light-novel-18363-1884509511.jpg', 'C', '5', 'Non', 'https://www.japanread.cc/manga/kouritsuchuu-madoushi-daini-no-jinsei-de-madou-wo-kiwameru/5'),
(57, 'The strongest dull prince’s secret battle for the throne', 'th-3990551603.jpg', 'C', '6', 'Non', 'https://www.japanread.cc/manga/the-strongest-dull-princes-secret-battle-for-the-throne/6-1'),
(58, 'Moto Sekai Ichi Subchara Ikusei Nikki', 'moto-sekai-ichii-subchara-ikusei-nikki-hai-player-isekai-wo-kouryakuchuu-32809-2133673078.jpg', 'C', '18', 'Oui', 'https://mangapuma.com/moto-sekai-ichii-subchara-ikusei-nikki-hai-player-isekai-wo-kouryakuchuu/chapter-18'),
(59, 'The summoned mage goes to another world', 'shoukansaretakenja_v1.jpg', 'C', '8', 'Non', 'https://mangabuddy.com/the-summoned-mage-goes-to-another-world/chapter-8-1'),
(60, 'The White Mage', 'th-647935824.jpg', 'C', '10', 'Non', 'https://mangaclash.com/manga/the-white-mage-who-was-banished-from-the-heros-party/chapter-10/'),
(61, 'I BECAME THE STRONGEST WITH THE FAILURE FRAME: CHAPTER 34: THE FOUR REVERED SAINTS', 'I-Became-the-Strongest-With-The-Failure-Frame.jpg', 'C', '35', 'Non', 'https://manga.goanimelist.me/manga-fs982453/chapter-34'),
(62, 'Shingan no Yuusha', 'shingan_no_yuusha_9089.webp', 'C', '20', 'Non', 'https://mangakakalot.com/chapter/shingan_no_yuusha/chapter_20'),
(63, 'The new gate', 'newgate_v2c.jpg', 'D', '16', 'Non', 'https://mangakakalot.com/chapter/the_new_gate/chapter_16'),
(64, 'Isekai Shoukan wa Nidome Desu', 'isekai-shoukan-wa-nidome-desu-27404-2694135895.jpg', 'D', '38', 'Non', 'https://www.mangaread.org/manga/isekai-shoukan-wa-nidome-desu/chapter-38-1/'),
(65, 'LV999 no Murabito', 'lv999_no_murabito_9966-1027361329.jpg', 'D', '22', 'Non', 'https://mangayuki.com/lv999-no-murabito/lv999-no-murabito-chapter-22'),
(66, 'Isekai Cheat Magic Swordsman', 'Isekai-Cheat-Magic-Swordsman-4150016168.jpg', 'D', '16', 'Non', 'https://chapmanganato.com/manga-ja986557/chapter-16'),
(67, 'The Unfavorable Job [Appraiser] is Actually the Strongest', 'th-2049809034.jpg', 'D', '35', 'Non', 'https://mangapuma.com/the-unfavorable-job-appraiser-is-actually-the-strongest/chapter-35'),
(68, 'World customize creator', 'WCC_v1a-2367214466.jpg', 'D', '20', 'Non', 'https://www.mangaread.org/manga/world-customize-creator/chapter-20/'),
(69, 'Kikanshita Yuusha no Gojitsudan', 'Kikanshita-Yuusha-no-Gojitsudan-854673959.jpg', 'D', '8', 'Non', 'https://manga-scantrad.io/manga/kikanshita-yuusha-no-gojitsudan/chapitre-8/'),
(70, 'Hazure Skill \"Gacha\" de Tsuihou Sareta Ore wa, Wagamama Osananajimi wo Zetsuen Shi Kakusei Suru', 'th-3441313544.jpg', 'D', '16.2', 'Non', 'https://www.mangaread.org/manga/hazure-skill-gacha-de-tsuihou-sareta-ore-wa-wagamama-osananajimi-wo-zetsuen-shi-kakusei-suru/chapter-16-2/'),
(71, 'THE SUMMONED MAGE GOES TO ANOTHER WORLD', 'the-summoned-mage-goes-to-another-world-4275176138.jpg', 'D', '26', 'Non', 'https://www.tenmanga.com/chapter/ThesummonedmagegoestoanotherworldChapter26/7955418-4.html'),
(72, 'Road To Kingdom ', 'th-3952207748.jpg', 'D', '23', 'Non', 'https://mangapuma.com/road-to-kingdom/chapter-23'),
(73, 'Nidome No Jinsei Wo Isekai De', 'nidome-no-jinsei-wo-isekai-de-1-jp-2753090580.jpg', 'D', '12', 'Non', 'https://scansmangas.ws/scan-nidome-no-jinsei-wo-isekai-de-12/'),
(74, 'The reincarnated inferior magic swordsman', 'the-reincarnated-inferior-magic-swordsman-588444-goMRTOKL-992642237.jpg', 'E', '63', 'Non', 'https://www.mangaread.org/manga/the-reincarnated-inferior-magic-swordsman/chapter-63/'),
(75, 'Itsudemo Jitaku Ni Kaerareru Ore Wa, Isekai De Gyoushounin O Hajimemashita', 'th-3357609260.jpg', 'E', '7', 'Non', 'https://www.mangaread.org/manga/itsudemo-jitaku-ni-kaerareru-ore-wa-isekai-de-gyoushounin-o-hajimemashita/chapter-1/'),
(76, 'Tensei Kyuuketsuki-san wa Ohirune ga Shitai', '819f97s7FZL-1183382932.jpg', 'E', '13', 'Non', 'https://www.mangaread.org/manga/tensei-kyuuketsuki-san-wa-ohirune-ga-shitai/'),
(77, 'The Strongest Female Masters, Who Are Trying to Raise Me Up, Are in Shambles Over Their Training Policy ', 'Read-Manga-6-125x180.jpg', 'E', '4', 'Non', 'https://www.mangaread.org/manga/the-strongest-female-masters-who-are-trying-to-raise-me-up-are-in-shambles-over-their-training-policy/'),
(78, 'Koko wa Ore ni Makasete Saki ni Ike to Itte kara 10 Nen ga Tattara Densetsu ni Natteita ', 'th-1777417530.jpg', 'F', '14', 'Non', 'https://www.mangatown.com/manga/koko_wa_ore_ni_makasete_saki_ni_ike_to_itte_kara_10_nen_ga_tattara_densetsu_ni_natteita/c014/2.html'),
(79, 'Tensei shichatta yo (Iya, Gomen) ', 'th-837810828.jpg', 'B', '37', 'N', 'https://www.japanread.cc/manga/tensei-shichatta-yo-iya-gomen/37'),
(80, 'Kanchigai no Atelier Meister', 'th-2162784377.jpg', 'B', '9', 'Non', 'https://www.mangaread.org/manga/kanchigai-no-atelier-meister/chapter-9/'),
(81, 'Shounin Yuusha wa Isekai wo Gyuujiru! – Saibai Skill de Nandemo Fuyashi Chaimasu', 'shounin-yuusha-wa-isekai-wo-gyuujiru-saibai-skill-de-nandemo-fuyashi-chaimasu-light-novel-38811-2344503869.jpg', 'C', '12', 'Non', 'https://www.japanread.cc/manga/shounin-yuusha-wa-isekai-wo-gyuujiru-saibai-skill-de-nandemo-fuyashi-chaimasu/12'),
(82, 'Tenkaichi - Nihon Saikyou Bugeisha Ketteisen', 'tenkaichi.jpg', 'A', '25', 'Non', 'https://mangapill.com/chapters/5769-10025000/tenkaichi-nihon-saikyou-bugeisha-ketteisen-chapter-25'),
(83, 'Juujika no Rokunin', 'Juujika.jpg', 'A', '117', 'Non', 'https://www.mangaread.org/manga/juujika-no-rokunin/chapter-117/'),
(84, 'Shuumatsu no Valkyrie ', 'Shuumatsu.jpg', 'A', '76', 'Non', 'https://www.japscan.lol/lecture-en-ligne/shuumatsu-no-valkyrie/76/1.html'),
(85, 'Demon’s Sword Master Of Excalibur School', 'demon.jpg', 'B', '7', 'Non', 'https://www.mangaread.org/manga/demons-sword-master-of-excalibur-school/chapter-7/'),
(86, 'Bijo To Kenja To Majin No Ken', 'Bijo.jpg', 'C', '10', 'Non', 'https://www.bentomanga.com/manga/bijo-to-kenja-to-majin-no-ken/chapter/10'),
(87, 'Isekai Shikkaku ', 'shikkaku.jpg', 'C', '3', 'Non', 'https://manga-scantrad.io/manga/isekai-shikkaku/ch-3/'),
(88, 'Monster no Goshujin-sama', 'Monster.jpg', 'A', '3', 'Non', 'https://www.bentomanga.com/manga/monster-no-goshujin-sama/chapter/3'),
(89, 'A Warrior Exiled by the Hero and His Lover', 'Warrior.jpg', 'A', '15', 'Non', 'https://www.bentomanga.com/manga/a-warrior-exiled-by-the-hero-and-his-lover/chapter/15'),
(90, 'Kamigami ni Sodaterare Shimo no, Saikyou to Naru ', 'Kamigami ni Sodaterare Shimo no, Saikyou to Naru.jpg', 'A', '2', 'Non', 'https://www.bentomanga.com/manga/kamigami-ni-sodaterare-shimo-no-saikyou-to-naru/chapter/28');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
