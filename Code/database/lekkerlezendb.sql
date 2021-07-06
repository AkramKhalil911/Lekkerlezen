-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 05 mrt 2021 om 13:49
-- Serverversie: 10.4.14-MariaDB
-- PHP-versie: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lekkerlezendb`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `boeken`
--

CREATE TABLE `boeken` (
  `ID` int(16) NOT NULL,
  `Schrijver` varchar(50) DEFAULT NULL,
  `Bladzijdes` int(11) DEFAULT NULL,
  `Uitgever` varchar(50) DEFAULT NULL,
  `Jaar` int(11) DEFAULT NULL,
  `Titel` varchar(120) DEFAULT NULL,
  `ISBN` varchar(20) NOT NULL,
  `Samenvatting` varchar(750) DEFAULT NULL,
  `Image` varchar(20) DEFAULT NULL,
  `sales` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `boeken`
--

INSERT INTO `boeken` (`ID`, `Schrijver`, `Bladzijdes`, `Uitgever`, `Jaar`, `Titel`, `ISBN`, `Samenvatting`, `Image`, `sales`) VALUES
(1, 'Charles Dickens', 352, 'Routledge', 1860, 'A Tale of Two Cities', ' 9780415287609', 'A Tale of Two Cities beschrijft de situatie in de periode direct voorafgaand aan de Franse Revolutie, de demoralisering en onderdrukking van de Franse boeren door de oude aristocratie, maar vervolgens ook de wreedheid van de revolutionairen jegens die aristocratie direct na de revolutie.', 'top2.jpg', '200 Miljoen'),
(2, 'J.K. Rowling', 232, 'De Harmonie', 1997, 'harry potter en de steen der wijze', '9076174083', 'Het eerste boek uit de Harry Potter serie uit 1997 is ook de populairste, in totaal zijn er (naar schatting) 107 miljoen exemplaren verkocht van de Steen der Wijzen. Kijken we naar een top 20 lijst van best verkochte boeken, dan vinden we alle andere Harry Potter boeken ook terug', 'top4.jpg', '107 Miljoen'),
(3, 'J.R.R. Tolkien', 1216, 'Harper Collins Uk', 2004, 'The Lord of the Rings', '9780261103252', 'Voortzetting van het verhaal dat is begonnen in The Hobbit, alle drie de delen van het epische meesterwerk, The Lord of the Rings, in één paperback. Bevat de definitieve editie van de tekst, uitklapbare flappen met de originele tweekleurige kaarten en een herziene en uitgebreide index. Sauron, de Dark Lord, heeft alle Rings of Power bij hem verzameld - het middel waarmee hij van plan is Midden-aarde te regeren.', 'top3.jpg', '150 Miljoen'),
(4, 'Cao Xueqin', 2500, 'De Harmonie', 1850, 'Droom van de rode kamer', '9781616120351', 'De Chinese roman Droom van de roder kamer beschrijft de opkomst en ondergang van een familie ten tijde van de Qing dynastie. Het boek werd voor het eerst gepubliceerd in 1791, en is nog steeds populair. Hele studies worden er gewijd aan de het boek.', 'top6.jpg', '100 Miljoen'),
(5, 'Agatha Christie', 229, 'Collins Crime Club', 1939, 'Tien Kleine Negertje', '9789021825700', 'In een eenzaam huis op een eiland zijn tien mensen uitgenodigd door een gastheer die zelf niet verschijnt. Ze zijn volkomen van de bewoonde wereld afgesloten en aangewezen op elkaars gezelschap, terwijl ieder van hen steeds sterker wordt achtervolgd door de schaduwen uit het verleden.', 'top5.gif', '100 Miljoen'),
(6, 'Dan Brown', 489, 'Luitingh', 2003, 'Da Vinci Code', '9789024548002', 'De best verkochte thriller ooit is de Da Vinci Code van Dan Brown. Mede dankzij de gratis publiciteit door kritiek van zowel de Kerk als de Wetenschap vloog zijn spannende boek over de zoektocht naar de Heilige Graal als warme broodjes over de toonbank.', 'top5.jpg', '80 Miljoen'),
(7, 'Miguel de Cervantes', 1117, 'Verdussen', 1612, 'Don Quichot', '9789025306595', 'Miguel de Cervantes’ boek over de komische reisavonturen van een oude edelman die denkt dat hij een dolende ridder is, is een van de eerste geschreven romans in een moderne Europese taal. Don Quichot werd voor het eerst gepubliceerd in 1612.', 'top1.jpg', '500 Miljoen'),
(8, 'C.S Lewis', 110, 'Geoffrey Bles', 1950, 'De Kronieken van Narnia', '9789026611858', 'Peter, Susan, Edmund en Lucy gaan uit logeren in het geheimzinnige, grote huis van een oude professor. Als ze op de eerste dag samen het huis gaan verkennen, zien ze een grote oude kleerkast in een lege kamer. Lucy verstopt zich in de kleerkast. Tot haar schrik zit er helemaal geen achterkant in de kast.', 'top8.jpg', '85 Miljoen'),
(9, 'Antoine de Saint-Exupéry', 95, 'De Harmonie', 1943, 'De Kleine Prins', '9789061005438', 'Dit prachtige moderne sprookje, geschreven voor jong en oud en schitterend geïllustreerd door de auteur, wordt over de hele wereld tot de klassieken gerekend. De verteller, een piloot, verhaalt hoe hij na een noodlanding met zijn vliegtuig in de woestijn de kleine prins ontmoet.', 'top7.jpg', '80 Miljoen'),
(10, 'Napoleon Hill', 238, 'Lantaarn Publishers', 1937, 'Think and Grow Rich', '9789463542845', 'Auteur Napolean Hill wordt ook wel gezien als de ‘vader’ van de zelfhulp boeken. Hij bestudeerde succesvolle mensen en bedacht ‘de’ formule voor succes. De timing van het boek kon niet beter, Think and Grow Rich werd uitgebracht in 1937 op het hoogtepunt van de Grote Depressie.', 'top10.jpg', '70 Miljoen');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `boekenlijst`
--

CREATE TABLE `boekenlijst` (
  `id` int(11) NOT NULL,
  `titel` varchar(32) NOT NULL,
  `auteur` varchar(32) NOT NULL,
  `ISBN` varchar(32) NOT NULL,
  `genre` varchar(32) NOT NULL,
  `prijs` varchar(32) NOT NULL,
  `vorm` varchar(32) NOT NULL,
  `datum` datetime DEFAULT NULL,
  `samenvatting` varchar(2000) NOT NULL,
  `afbeelding` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `boekenlijst`
--

INSERT INTO `boekenlijst` (`id`, `titel`, `auteur`, `ISBN`, `genre`, `prijs`, `vorm`, `datum`, `samenvatting`, `afbeelding`) VALUES
(1, 'Al wat goud op de bergen is', 'C Pam Zhang', '9789056726829', 'Literaire fictie', '€ 23,99', 'Gebonden', '2021-02-18 00:00:00', 'Ba sterft gedurende de nacht, Ma was al verdwenen. De Chinees-Amerikaanse Lucy en Sam, twaalf en elf jaar, zijn plotseling alleen en op de vlucht. Ze laten het berooide, stoffige Amerikaanse mijnstadje achter zich en zwerven met het lichaam van hun vader door een meedogenloos landschap, bezaaid met gigantische buffelbotten, tijgerpootafdrukken en vol met onbetrouwbare bandieten, op zoek naar een plek om Ba te begraven en opnieuw te beginnen.', '9789056726829.jpg'),
(2, 'Een beloofd land', 'Barack Obama', '9789048840748', 'Literaire non-fictie', '€ 45,00', 'Gebonden', '2021-01-26 00:00:00', 'In dit boeiende, langverwachte eerste deel van zijn presidentiële memoires vertelt Barack Obama het verhaal van zijn onwaarschijnlijke odyssee van een jongeman die op zoek is naar zijn identiteit tot de leider van de vrije wereld. Hij schrijft in buitengewoon persoonlijke bewoordingen over de jaren waarin hij politiek werd gevormd en over de bepalende momenten in de eerste termijn van zijn historische presidentschap - een roerige periode vol dramatische veranderingen.', '9789048840748.jpg'),
(3, 'Het stemmetje in je hoofd', 'Ethan Kross', '9789044637052', 'Psychologie', '€ 21,99', 'Paperback', '2021-02-24 00:00:00', 'Als je een vreemde vertelt dat je in jezelf praat, dan vindt hij of zij je waarschijnlijk een beetje raar. Maar eigenlijk hebben we allemaal een innerlijke stem in ons hoofd. Als we met onszelf praten, hopen we onze innerlijke coach te bereiken, maar meestal worden we geconfronteerd met onze innerlijke criticus. Soms, als we iets moeilijks moeten doen, worden we door de innerlijke coach geholpen: focus. Je kunt het! Vaak genoeg worden we echter afgekraakt door onze innerlijke criticus: ik kan er niets van. Ze zullen me uitlachen.\r\nIn Het stemmetje in je hoofd verkent de gevierde psycholoog Ethan Kross de zwijgende gesprekken die we met onszelf hebben. Kross combineert baanbrekend gedrags- en hersenonderzoek met voorbeelden uit het gewone leven – van een honkbalpitcher die zijn taak vergeet tot een Harvard-student die een dubbelleven als spion leidt – en verklaart hoe we onze innerlijke stem kunnen benutten voor een gezonder, bevredigender en productiever leven.\r\nOp basis van diepgravend onderzoek en aangrijpende verhalen geeft Het stemmetje in je hoofd ons de instrumenten om het belangrijkste gesprek te voeren dat er is: het gesprek met onszelf.', '9789044637052.jpg'),
(4, 'Such a Fun Age', 'Kiley Reid', '9781526612168', 'Fiction', '€ 12,50', 'Paperback', '2020-01-01 00:00:00', 'Longlisted for the 2020 Booker Prize When Emira is apprehended at a supermarket for \'kidnapping\' the white child she\'s actually babysitting, it sets off an explosive chain of events. Her employer Alix, a feminist blogger with the best of intentions, resolves to make things right. But Emira herself is aimless, broke and wary of Alix\'s desire to help. When a surprising connection emerges between the two women, it sends them on a crash course that will upend everything they think they know - about themselves, each other, and the messy dynamics of privilege', '9781526612168.jpg'),
(5, 'Stoorzender', 'Arjen Lubach', '9789463810562', 'Moderne en hedendaagse fictie', '€ 20,99', 'Paperback', '2020-08-01 00:00:00', 'n Stoorzender doet Arjen Lubach verslag van twee jaar uit zijn bewogen bestaan. Vanuit zes verschillende plekken schrijft hij ongebruikelijk persoonlijk over Zondag met Lubach, muziek, comedy, politiek, het leven en de liefde.\r\nLos Angeles, Vlieland, New York, Friesland, Zweden en Amsterdam: vanuit die plekken schrijft Lubach, veertig geworden, mee met zijn leven in de afgelopen jaren. Een rollercoaster. Midden in het tv-seizoen van Zondag met Lubach, voor een ander intens genoeg om er verder niets meer bij te doen, reist hij af naar Hollywood om aan muziek te werken. ‘Een laatste poging om iets te worden wat ik niet ben.’ Hij blikt er ook terug op een eerder verblijf in de muziekscene van Los Angeles, een zwart hoofdstuk dat hij voor het eerst opent. Op Vlieland trekt hij zich terug om een solotheatershow te schrijven en uit te proberen, een romantische setting die zijn jeugdjaren oproept. New York: met onder meer zijn grote nieuwe liefde en de vrouw met wie hij het ooit eerder uitmaakte op het dak van een van de hoogste gebouwen in Manhattan bereidt hij zich voor op een optreden in niets minder dan de Late Night with Seth Meyers. Het verblijft inspireert Lubach tot reflecties op satire, ‘humoralisme’, verschillen tussen talkshows en satirische shows. Dan: Friesland, waar hij met zijn vriendin rust vindt, en terugdenkt aan de bron van zijn ‘ongeloof’. Ook in Zweden, zijn geliefde buitenland, hervindt hij zijn evenwicht, met veel openhartige herinneringen aan de 160 theatershows die hem zowel fysiek als mentaal uitputten. Tot slot: Amsterdam. Hij ruimt er zijn verleden op en trekt conclusies voor de toekomst. Maakt de balans op. Hoewel… ‘Dit is helemaal geen balans, denk ik. En dat hoeft ook niet. Wie een balans opmaakt en daarmee een gewicht toekent aan de ene kant, probeert uit te vinden wat het gewicht aan de andere kant zal zijn. En dat is nou net wat ik niet wil weten.’', '9789463810562.jpg'),
(6, 'Slachters en psychiaters', 'Arnon Grunberg', '9789038809342', 'Literaire non-fictie', '€ 24,50', 'Paperback', '2021-02-18 00:00:00', 'Ergens tijdens deze reis meende ik dat ik genoeg had van de oorlog. Nu besef ik dat de liefde niet is uitgedoofd. Ik houd van mijn geliefde, maar de oorlog is mijn vrouw.’ In 2006 begon Arnon Grunberg met zijn reis naar het Nederlandse leger in Afghanistan de reportagereeks ‘Grunberg onder de mensen’, gebaseerd op Maxim Gorki’s advies aan Isaak Babel om de schrijftafel te verlaten en zich onder de mensen te begeven. Dat resulteerde in de bundel Kamermeisjes en soldaten (2009). Ook daarna bleef Grunberg onvermoeibaar berichten over de mens en de politieke en sociale actualiteit. Van een roadtrip van Nijmegen door voormalige Sovjetstaten met bestemming Kabul in het gezelschap van een voormalige Afghaanse asielzoeker tot een verblijf bij een circus uit de Achterhoek. Van een onderzoek naar liefde en seks in de VS tot participerende journalistiek bij diverse slachterijen. Van een reis naar de bezette gebieden op de Westelijke Jordaanoever (waar Grunbergs zus woont) tot zijn vrijwillige opname in een psychiatrische kliniek in België. Slachters en psychiaters is een onverschrokken zoektocht naar de mens; de mens in oorlogstijd, de mens op vakantie, de mens in psychische nood. Grunberg schreef deze reportages om zijn eigen ervarings- en denkwereld én die van de lezer te vergroten, om waarheid en werkelijkheid in de periferie te vinden. Over Kamermeisjes en soldaten: ‘Een fenomeen’ – de Volkskrant ‘Weinig schrijvers durven zoveel risico’s te nemen voor hun schrijverschap. [...] De slimme schrijver dwingt je hier om met zijn priemende blik naar de mad world out there te kijken. Ooggetuige Grunberg kent de impact van zijn pen.’ – De Morgen ‘Eigenzinnig en tragikomisch’ – Vrij Nederland', '9789038809342.jpg'),
(7, 'Zo hadden we het niet bedoeld', 'Jesse Frederik', '9789083078915', 'Literaire non-fictie', '€ 22,50', 'Paperback', '2021-02-05 00:00:00', 'Tienduizenden families werden vermalen door de overheid. Relaties liepen op de klippen, banen raakten verloren, levens werden verwoest. In wat bekend kwam te staan als de toeslagenaffaire werden jaren aan kinderopvangtoeslagen teruggevorderd. Met desastreuze gevolgen. In een thriller van een reconstructie laat onderzoeksjournalist Jesse Frederik zien hoe de toeslagenaffaire tot stand kwam en tot de val van het kabinet kon leiden. De ontluisterende conclusie: vrijwel iedereen – ministers, Kamerleden, ambtenaren, journalisten – deed wat je van ze zou verwachten, en juist daardoor liep alles mis. Reacties: ‘Konden we Jesse Frederik maar klonen. Zoals Jesse hier het groepsdenken rondom politieke schandalen ontrafelt, is onnavolgbaar knap.’ – Joris Luyendijk ‘Dit boek laat zien wat er gebeurt als beelden en sentimenten het winnen van feiten en waarden, het collectieve geheugen sleets is en uitvoerbaarheid niet telt in de politiek. Dan verliest de burger die op de overheid is aangewezen.’ – Herman Tjeenk Willink', '9789083078915.jpg'),
(8, 'De Stem', 'Jessica Durlacher', '9789029541930', 'Literaire non-fictie', '€ 24,50', 'Gebonden', '2021-01-14 00:00:00', 'De Stem speelt zich af tegen de achtergrond van de grote gebeurtenissen die dit millennium inluidden – een rijke roman met een stuwende kracht, over familie, loyaliteit, en het grote offer dat engagement van mensen vraagt.\r\nEen vrome Somalische asielzoekster komt als oppas in dienst bij het gezin van Zelda en Bor, en ontpopt zich tot hun verbazing als een fenomenale zangeres. Haar naam is Amal. Ze is zo goed dat Zelda en Bor haar opgeven voor de populaire talentenshow De Stem. Tijdens haar spectaculaire eerste optreden verrast Amal het miljoenenpubliek met een dramatisch gebaar dat tot een vloedgolf van bedreigingen leidt. Het gezin voelt zich geroepen haar te beschermen en wordt zo meegesleurd in conflicten die hun veilige wereld voor altijd zullen veranderen.', '9789029541930.jpg'),
(9, 'Vrij van corona', 'Jaap Goudsmit', '9789083054278', 'Gezondheid', '€ 22,99', 'Paperback', '2021-02-02 00:00:00', 'Viroloog Jaap Goudsmit werd net als iedereen overvallen door het coronavirus. Hij beschrijft in dit boek wat een jaar onderzoek door duizenden onderzoekers overal ter wereld opleverde en hoe feit van fictie te onderscheiden. Hij stelt zich vragen die we allemaal hebben: waar komt het virus vandaan, verandert het virus tijdens zijn tocht over de wereld, waarom treft het virus kinderen vrijwel niet en ouderen zo zwaar, verspreidt het zich vooral zonder dat je er iets van merkt, wat is de oorzaak dat sommige mensen veel besmettelijker zijn dan anderen, hoe is het mogelijk dat zo snel goede vaccins zijn gemaakt, spelen het weer en het klimaat een rol bij de verspreiding en moeten we onze leefstijl veranderen om niet op de ic te belanden door dit virus of het volgende virus dat langskomt? Jaap Goudsmit laat zien dat de wetenschappelijke vooruitgang de kennis heeft geleverd om pandemieën het hoofd te bieden. De oorzaak was binnen een paar maanden aangewezen en gekarakteriseerd, virustesten werden binnen een paar maanden gemaakt, vaccins werden binnen het jaar getest en kwamen meteen beschikbaar. Volgens Goudsmit is er een nieuw tijdperk aangebroken: het immunoceen, het tijdperk waarin we wereldwijd in staat zijn ons te beschermen tegen aandoeningen die onze levensverwachting en onze kwaliteit van leven negatief beïnvloeden.', '9789083054278.jpg'),
(10, 'Gedachten over onze tijd', 'Tommy Wieringa', '9789403126319', 'Literaire fictie', '€ 11,99', 'Paperback', '2021-02-18 00:00:00', '‘Ons boerenland is morsdood. Nauwelijks meer insecten, nauwelijks meer vogels, nauwelijks meer bodemleven. Landdegradatie. Het komt nu aan op radicale dienstbaarheid aan de aarde, zonder hoop op dankbaarheid of begrip van je medemens.’ Tommy Wieringa is niet alleen bezorgd over het boerenland, hij schrijft met dezelfde urgentie over onze cultuur, onze democratie en onze intellectuele vrijheid. De actualiteit is de aanleiding om zijn pen te scherpen, maar steeds weet hij dieper te raken door brandende kwesties in hun historische context te zien en tegelijk een moreel appel te doen. Wieringa excelleert als columnist, zijn stukken geven een indringende analyse van de ontregelingen van onze tijd en zetten daarmee aan tot verder denken en het zoeken naar oplossingen.', '9789403126319.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(16) NOT NULL,
  `voornaam` varchar(16) DEFAULT NULL,
  `achternaam` varchar(16) DEFAULT NULL,
  `email` varchar(36) DEFAULT NULL,
  `telefoonnummer` int(20) DEFAULT NULL,
  `onderwerp` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `contact`
--

INSERT INTO `contact` (`id`, `voornaam`, `achternaam`, `email`, `telefoonnummer`, `onderwerp`) VALUES
(1, 'Jim', 'schokker', 'jimschokker12@gmail.com', 1342134, 'adfgafgsadfgadfgsdfg'),
(2, 'Jim', 'schokker', 'jimschokker12@gmail.com', 1342134, 'adfgafgsadfgadfgsdfg');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `boeken`
--
ALTER TABLE `boeken`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `boekenlijst`
--
ALTER TABLE `boekenlijst`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `boeken`
--
ALTER TABLE `boeken`
  MODIFY `ID` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `boekenlijst`
--
ALTER TABLE `boekenlijst`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
