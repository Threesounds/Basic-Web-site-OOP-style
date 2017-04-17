-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2017 at 08:09 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `korisnici`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentari`
--

CREATE TABLE `komentari` (
  `id` int(11) NOT NULL,
  `comment_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(50) NOT NULL,
  `blog_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentari`
--

INSERT INTO `komentari` (`id`, `comment_name`, `comment`, `login`, `blog_id`) VALUES
(1000, 'Malina', 'Divan grad', '12', 10),
(1001, 'Malina', 'Divan grad', '12', 10),
(1002, 'Malina', 'Divan grad', '12', 10),
(1003, 'Malina', 'Divan grad', '12', 10),
(1004, 'Malina', 'Divan grad', '12', 10),
(1005, 'Brat', 'Pancevooo!!!', '13', 12),
(1006, 'Brat', 'Pancevooo!!!', '13', 12),
(1007, 'Brat', 'Pancevooo!!!', '13', 12),
(1008, 'Brat', 'Pancevooo!!!', '13', 12),
(1019, 'Malina', 'Grad je predivan...u potpisu malina', '12', 2),
(1022, 'Trifun', 'To je nas grad, prelep i neponovljiv *-*', '14', 2),
(1023, 'Teški slučaj', 'Jeri zna neko dokle radi gracka apoteka?', '15', 2),
(1024, 'Малина', 'Богата историја нема шта', '12', 3),
(1025, 'Malina', 'Ovo su poprilično stari podaci, današnja situacija nije tako sjajna sa ovim fabrikama', '12', 4),
(1027, 'Hans Müllberger', 'Unsere Panchowa ist der herrlichsten Stadt des Serbiens', '12', 5),
(1028, 'Eva Panchowka', 'Stimmt!!!', '12', 5),
(1030, 'Trifun', 'Slažem se u potpunosti. Tesla je najočigledniji primer. Kakve su to sijalice samo bile ehhhhh.', '14', 4),
(1031, 'Trifun', 'Pozdravljam industrijalizaciju ali zar su morali viševekovni manastir Vojlovicu da okruže rafinerijom? Uopšte teška industrija je preblizu gradu i to se oseti. Poznati smo po tome.', '14', 3),
(1035, 'Trifun', 'Slažete li se samnom?', '14', 3),
(1036, 'Brat', 'E brate na pogrešnom si mestu!', '13', 2),
(1037, 'Brat', 'Super, odnesite industriju odavde i možemo i mi da se selimo, osim Aviva skoro ništa drugo i ne radi!', '13', 3),
(1038, 'Danilo', 'U proleće je to posebno lepo mesto, šetnja kraj Tamiša, narodna bašta, ma milina.', '16', 2);

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `username`, `password`, `email`) VALUES
(12, 'malina', 'malina1234', 'malina@gmail.com'),
(13, 'Brat', 'brat1234', 'brat@gmail.com'),
(14, 'Trifun', 'trifun1234', 'trifun@gmail.com'),
(15, 'teÅ¡ki sluÄaj', 'teski1234', 'teski@gmail.com'),
(16, 'Danilo', 'danilo1234', 'danilo@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tekst`
--

CREATE TABLE `tekst` (
  `id` int(11) NOT NULL,
  `tekst` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `aside` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tekst`
--

INSERT INTO `tekst` (`id`, `tekst`, `aside`) VALUES
(2, '<figure></figure>\r\n  <figcaption class="fig">Pančevo iz vazduha<img src="Panĉevo,_Danubo_kaj_Tamiŝ_1.jpg" alt="" width="330" height="248" class="sli"/></figcaption>\r\n  <p><strong>Панчево (мађ. Pancsova, нем. Pantschowa, свк. Pánčevo) је град који се налази у Аутономној Покрајини Војводини, у Републици Србији. Налази се на обалама Тамиша и Дунава, у јужном делу Баната и оно је административно седиште града Панчева, као и Јужнобанатског управног округа</strong>.</p>\r\n<p>\r\n  Панчево је четврти град у Војводини по броју становника. Према коначним резултатима пописа становништва из 2011. године, у Панчеву живи 76.203 становника, а на територији града Панчева 123.414 становника.</p>\r\n<p>Град је познат по још неким називима на другим језицима:мађ. Pancsova, тур. Pançova, нем. Pantschowa, рум. Panciova, свк. Pánčevo.\r\nНазив Панчева је словенског порекла. Његов корен је старословенска реч пачина/панчина, која означава стајаћу воду које је некада у овом делу Баната много било. Назални глас н који се у налази у називима Панчево, Панчова, Панчал итд. сведочи о великој старини овог назива места.\r\nЗбог честих промена господара (Римљани, Келти, Хуни, Авари, Словени, Мађари, Татари, Турци, Немци) често се мења и назив овог стратегијско важног места:<br>\r\nПануцеа/Паноча - називи који се налазе у једном списку утврђења из доба владавине великог мађарског везира Гезе I\r\nБансиф - назив који потиче од арапског географа Абу Абдулаха Мухамеда ел Идрисија, који га 1153. године наводи у свом делу „Познавање Балканског полуострва”<br>\r\nПанука - назив који спомиње Анонимус, нотар краља Беле бугарског војводе Глада од стране Ападове војске и приморала га да ту склопи мир<br>\r\nПанчал - назив који наводи Матија Талоци, капетан Београда и велики жупан Ковинске жупаније, у једном свом писму од 1430. године<br>\r\nПансег - назив који спомиње француски племић Бертрандон де ла Брокијер у свом извештају краљу Филипу Добром<br>\r\nПајчова - назив који се налази у рукопису арапског писца Мехмеда Сипахи Заде, написаном 1605. година а носи назив „Најјаснији путеви за познавање земаља и градова”<br>\r\nПанзова - назив који потиче од турског путописца Евлије Челебије када је 1660. године пропутовао кроз Панчево.<br>\r\nЧомва - назив који је дао генерал Флоримунд Мерси након протеривања Турака 1716. године.<br>\r\nПанчова - назив за време владавине Аустријанаца и Мађара.</p>\r\n<h3>Насеља Панчева</h3>\r\n	<table width="200" border="2" cellpadding="5" cellspacing="5" class="tabela"><tr><th>Месне заједнице Панчева:</th></tr>\r\n<tr><th>МЗ Војловица:</th>\r\n	<td>Војловица</td></tr>\r\n	<tr><th>МЗ Горњи Град:</th>\r\n	<td>Бела Стена,</td>\r\n	<td class="tde">Горњи град,</td>\r\n	<td>Караула,</td>\r\n	<td>Скробара.</td></tr>\r\n	<tr><th>MЗ Котеж:</th>\r\n	<td>Котеж 1,</td>\r\n	<td>Котеж 2</td></tr>\r\n	<tr><th class="the">МЗ Младост:</th>\r\n	<td>Кудељарски насип,</td>\r\n	<td>Миса,</td>\r\n	<td>Младост.</td></tr>\r\n	<tr><th>МЗ Стари Тамиш:</th>\r\n	<td>Стари Тамиш</td></tr>\r\n	<tr><th>МЗ Стрелиште:</th>\r\n	<td>Стрелиште</td></tr>\r\n	<tr><th>МЗ Тесла:</th>\r\n	<td>Тесла</td></tr>\r\n	<tr><th>МЗ Центар:</th>\r\n	<td>Доњи град</td>\r\n	<td>Зеленгора</td>\r\n	<td>Мали Лондон</td>\r\n	<td>Пепељара</td>\r\n	<td>Содара</td>\r\n	<td>Топола</td>\r\n	<td>Утвина колонија</td>\r\n	<td>Центар</td></tr>\r\n		</table>', '<iframe src="https://www.youtube.com/embed/IyrDwnOSKzU" width="330" height="200" frameborder="0" class="vid1" allowfullscreen></iframe>\r\n  <img src="351px-Znamenitosti_Pančeva.jpg" width="330" height="479" alt=""/>'),
(3, ' <img src="img/uspenska-crkva-pancevo.jpg" alt="" width="280" height="400" class="kirche"/>\r\n<h3>Средњи век</h3>\r\n<p>У средњем веку Панчево је припадало ковинској жупанији.</p>\r\n<h3>Хабзбуршка монархија</h3>\r\n<h4>Тамишки банат</h4>\r\n<p>Панчево 1718. године\r\nАустријски гроф Клаудије Флоримунд Мерси 1716. године ослобађа Панчево од владавине Турака и тада му даје име Чомва. Потписивањем Пожаревачког мира 1718. године између Османског царства са једне и Хабзбуршке монархије и Венеције са друге стране, формира се хабзбуршка покрајина Тамишки Банат. Покрајина је била подељена на 11 дистрикта, главни град покрајине је био Темишвар, а званични језик је био немачки језик.<br>\r\nПанчево је било главно место у једном од дистрикта Тамишког Баната. С\'обзиром на ту чињеницу, велики број људи се настанио у Панчеву. Прво су се населили Срби из околине Темишвара 1720. године. Њихове куће од дрвета, које су стајале у неправилним улицама, су се налазиле северно од панчевачке тврђаве, а место у којем су живели су назвали Горња варош.<br> 1722. године је почело насељавање Немаца из Франачке на територије Баната. Немци су добили територију јужно од тврђаве, коју су 1723. године назвали Немачко Панчево (Доња варош). За разлику од кућа из Горње вароши, зидови кућа из Немачког Панчева су се правили од плетара, а кровови од трске.<br>\r\nУ овом периоду је Панчево веома напредовало. 1718. године је у Панчеву подигнута солара, док су 1719. године установљења бродарско и поштанско звање. Индустријалац Абрахам Кепиш, Јеврејин из Пожуна, добија дозволу 1722. године да сагради пивару, која је исте године почела са радом. Она и данас представља једну од најстаријих пивара овога краја. Међутим, у овом периоду је Панчево задесило много недаћа. Јак оркан је 26. маја 1733. године направио огромну штету на приватним и државним зградама; почетком јануара 1737. године избила је јака епидемија која је децимирала становништво, а у мају исте године велики пожар је захватио Доњу варош.\r\nВелику штету је Панчево претрпело за време рата између Аустрије и Турске који је трајао годину дана. Ратна узнемиреност је почела у Панчеву 28. септембра 1738. године, када се кроз насеље пронела вест да су Турци код Оршаве прешли Дунав и са великом војском стигли до Нове Паланке и тамо победили цесарску војску. Након четири недеље, Панчево је из стратегијских разлога предат Турцима, који ће владати овом територијом 10 месеци. У том периоду су вођене две битке - у првој бици код Гроцке су Турци изашли као победници, док су у другој бици код Панчево Турци потучени од стране Аустријанаца. Док су се повлачили, Турци су спалили варош и веома оштетили тврђаву. Потписивањем Београдског мира 18. септембра 1739. године званично се завршио рат између Аустрије и Турске. Овим миром је Аустрија била у обавези да поруши све тврђаве на левој обали Дунава, што значи да је исте године почело рушење панчевачке тврђаве. (Почетком септембра 2013. године је у градском парку пронађен гранични камен од тврђаве.</p>\r\n<h3>Војна крајина</h3>\r\n<p>Да би се очувала гранична територија од упада Турака, кријумчарења и уношења заразних болести из турских крајева, Хабзбуршка монархија је територију Војне крајине проширила и на Банат. Уређење банатске Војне крајине је трајао од 1764. до 1768. године.</p>\r\n<h3>Аустроугарска монархија</h3>\r\n<p>1848/49 Панчево је много страдало током револуције. 1873. постало је муниципални град. У другој половини тог века почиње у Панчеву у већој мери насељавање Мађара. 8. новембра 1918. ушла је у Панчево српска војска.</p>\r\n <img src="pancevo_11.jpg" width="620" height="523" alt=""/>', '<iframe src="https://www.youtube.com/embed/IyrDwnOSKzU" width="330" height="200" frameborder="0" class="vid1" allowfullscreen></iframe>\r\n  <img src="img/351px-Znamenitosti_Pančeva.jpg" width="330" height="479" alt=""/>'),
(4, '<h1>Остали податци</h1>\r\n<h3>Географија</h3>\r\n<p>Панчево се налази на 77 метара надморске висине, и то на координатама 44°54′ северно и 20°40′ источно. Налази се 18km североисточно од Београда, главног града Републике Србије, на ушћу Тамиша у Дунав. Територија Панчева се сматра једном од најтоплијих подручја Војводине, са просечном годишњом температуром од 11,3 °C и са више од 100 сунчаних сата током године. Просечна годишња вредност за релативну влажност ваздуха је 77%. Падавине су највеће на крају пролећа, почетком лета, крајем јесени и почетком зиме. Просечна количина падавина током године износи око 643mm.<br>\r\nПанчево припада простору умерено континенталне климе, са четири годишња доба, коју карактеришу дуга и топла лета и јесени, благе зиме и кратка пролећа. Посебну специфичност климе представља кошава, јак и сув ветар који траје и до три недеље. Поред кошаве, доста су заступљени и југозападни, западни и северни ветрови. Број ветровитих дана током године је 45, а највећа влажност ваздуха је током месеци са најнижом температуром (новембар, децембар, јануар и фебруар).</p>\r\n<h3>Демографија</h3>\r\n<p>Према попису из 2011. године, у Панчеву живи 63078 пунолетних становника, а просечна старост становништва износи 41,5 година (40,0 код мушкараца и 42,8 код жена). Ово насеље је углавном насељено Србима, а примећен је пад у броју становника.</p>\r\n<h3>Привреда</h3>\r\n<p><h4>Привреда до 1919. године</h4>\r\nСтановништво Панчева бави се претежно ратарством, али је врло лепо заступљен занат и трговина, нарочито стоком и храном. Индустрија је такође знатна, нарочито свиларска. У Панчеву су две православне цркве; старија (Вазнесенска) са темплом, коју је радио Константин Данил, и нова (Успенска) у византијском стилу, са сликарским и орнаменталним радовима Уроша Предића, Ст. Алексића и Марковића. У Панчеву има гимназија, трговачка академија, мушка и женска грађанска школа и аеродром интернационалног друштва за ваздушни саобраћај.\r\n<h4>Привреда од 1920. до 1991. године</h4>\r\nНакон Првог светског рата, панчевачка индустрија доживљава своју другу младост и постаје један од индустријских гиганата бивших Југославија. Отварају се многобројне фабрике које запошљавају на десетине хиљада радника из Панчева, Београда и околних места из скоро целог јужног Баната. Неке од најважнијих су:\r\nРафинерија нафте −(РНП) Почела да ради 1968.<br>\r\nАзотара − Фабрика за производњу вештачког ђубрива. Почела да ради 1962.<br>\r\nПетрохемија − Фабрика за прераду сировог бензина и производњу пластичних маса. Почела да ради 1977.<br>\r\nУтва − Фабрика за производњу лаких авиона, камиона и приколица за камионе, делова за моторна возила и сервисирање и оправка моторних возила. Основана 1937. године<br>\r\nПивара - Основана 1722. године<br>\r\nИСП Стаклара − фабрика за производњу свих врста стакла, основана 1932. године<br>\r\nТесла − Фабрика сијалица, основана 1931. године<br>\r\nФабрика грађевинске столарије − основана 1934. године<br>\r\nФабрика скроба − основана 1937. године<br>\r\nФабрика обуће − основана 1955. године<br>\r\nТРО Тргопродукт − Бавила се пословима у области трговине на велико и мало мешовитом робом<br>\r\nПекара − Снабдевала цело Панчево и околна места<br>\r\nТехногас − Производила и снабдевала индустрију широким асортиманом гасова<br>\r\nПлинара − Производила и снабдевала панчевачка домаћинства лож уљем, пропан−бутаном, бензином<br>\r\nСвилара − Производња свиле, одмотавање свилених чаура<br>\r\nКрзнара − Прерада коже, основана 1953.<br>\r\nКудељара − Прерада кудеље<br>\r\nГај − Индустрија намештаја<br>\r\nЈРБ Бродоремонт − Бавило се поправком бродова, шлепова и свиме што плови по води<br>\r\nЛука Дунав − Основан 1947. године<br>\r\nПИК Тамиш − Пољопривредни комбинат са широким асортиманом производа за прехрану<br>\r\nАТП − Предузеће за превоз путника и робе<br>\r\nПривредна Банка Панчево − Основана 1869. године<br>\r\nПошта − Бавила се услугама грађана од писама, телеграма телефона преко наплате разних дажбина до банкарских услуга<br>\r\nГИК Конструктор − Грађевинско предузеће<br>\r\nТрудбеник − Предионица предива<br>\r\nБанаћанка − Производња одеће<br>\r\nШИК − Прерада дрвета<br>\r\nЕлектродистрибуција<br>\r\nМинел<br>\r\nРО Стандард − Комунални послови<br>\r\nНа десетине занатско−услужних радњи, приватних радионица, пекара, обућара, сајџија, златара, шнајдера.<br>\r\nПостојала су два хотела Слобода (Трубач) и Тамиш, велики број угоститељских радњи<br>\r\nИнфраструктурне организације као што су општина, суд, банке, болница и здравствене амбуланте, полиција, ватрогасци, робне куће, библиотеке, музеји, галерија, биоскопи и позориште, дом културе, разна друштва као што су риболовачко, стрељачко (1813), извиђачи, Црвени крст.</p>', '<iframe width="330" height="200" src="https://www.youtube.com/embed/IyrDwnOSKzU" frameborder="0" allowfullscreen></iframe>\r\n  <img src="mapa.jpg" width="330" height="200" alt=""/>\r\n '),
(5, '<h1>VIDEO PANČEVO</h1><iframe width="600" height="300" src="https://www.youtube.com/embed/3vp2yoFnuYQ" frameborder="0" allowfullscreen></iframe>\r\n<iframe width="600" height="315" src="https://www.youtube.com/embed/3j_CurCrudw" frameborder="0" allowfullscreen></iframe>\r\n<iframe width="600" height="315" src="https://www.youtube.com/embed/29UD5p7sPm4" frameborder="0" allowfullscreen></iframe>', '<iframe width="330" height="200" src="https://www.youtube.com/embed/IyrDwnOSKzU" frameborder="0" allowfullscreen></iframe><iframe width="330" height="200" src="https://www.youtube.com/embed/xbvTCjVjy74" frameborder="0" allowfullscreen></iframe>\r\n<iframe width="330" height="200" src="https://www.youtube.com/embed/MhsUrOw8XTM" frameborder="0" allowfullscreen></iframe>\r\n<iframe width="330" height="200" src="https://www.youtube.com/embed/jkFmDPjNUXQ" frameborder="0" allowfullscreen></iframe>\r\n<iframe width="330" height="200" src="https://www.youtube.com/embed/uK_8qirY5tc" frameborder="0" allowfullscreen></iframe>'),
(6, '<h1>Поставите питање</h1>\r\n  <fieldset class="фиелд"><legend >Поља за унос</legend><input type="text" autofocus required class="input" title="Име" value="Име:">\r\n  <input type="text" autofocus required class="input" title="Презиме" value="Презиме:">\r\n  &nbsp;&nbsp;\r\n  <input type="email" autofocus required class="input" title="E mail" value="E mail:"><textarea rows="8" autofocus required class="input">Унесите поруку:</textarea><input type="submit" autofocus class="submit" value="Пошаљи"></fieldset>', '<iframe width="330" height="200" src="https://www.youtube.com/embed/IyrDwnOSKzU" frameborder="0" allowfullscreen></iframe>\r\n<img src="img/330px-Plan_Pančeva_18._vek.jpg" width="330" height="323" alt=""/>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komentari`
--
ALTER TABLE `komentari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tekst`
--
ALTER TABLE `tekst`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komentari`
--
ALTER TABLE `komentari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1039;
--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tekst`
--
ALTER TABLE `tekst`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
