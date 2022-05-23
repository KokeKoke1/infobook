-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Maj 2022, 01:43
-- Wersja serwera: 10.4.16-MariaDB
-- Wersja PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `posts`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `postlike`
--

CREATE TABLE `postlike` (
  `ID` int(11) NOT NULL,
  `ID_POST` int(11) NOT NULL,
  `ID_USER` int(11) NOT NULL,
  `LIKED` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `postlike`
--

INSERT INTO `postlike` (`ID`, `ID_POST`, `ID_USER`, `LIKED`) VALUES
(2, 2, 2, 1),
(15, 1, 1, 1),
(18, 4, 1, 1),
(20, 3, 1, 1),
(23, 8, 1, 1),
(25, 9, 1, 1),
(26, 10, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `ID` int(11) NOT NULL,
  `ID_USER` int(11) NOT NULL,
  `DATA` varchar(55) NOT NULL,
  `TEXT` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`ID`, `ID_USER`, `DATA`, `TEXT`) VALUES
(1, 1, '8 godzin temu', 'Kapitan Ameryka (ang. Captain America), właściwie Steven „Steve” Rogers – fikcyjna postać (superbohater) znana z licznych serii komiksowych wydawanych przez Marvel Comics, oraz różnych adaptacji, bazujących na komiksowych publikacjach. Twórcami postaci byli Jack Kirby i Joe Simon. Zadebiutował on w komiksie Captain America Comics #1 z 1941 roku[1].\r\n'),
(2, 2, '5 godzin temu', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur aperiam, mollitia ea sint assumenda nihil esse eligendi rerum. Rerum nihil perferendis hic quae sunt perspiciatis suscipit asperiores quaerat veniam, consequatur dolor iure error laudantium dicta explicabo blanditiis ipsa aperiam natus laborum illum beatae vitae fugit saepe. Tempore, assumenda? Repudiandae illo pariatur cumque vero minus est fugiat sunt, sed, voluptatibus quasi reiciendis nostrum molestiae dicta voluptas, nam quibusdam autem asperiores aspernatur in aut omnis beatae. Libero expedita odio earum quas nesciunt eius laboriosam. Adipisci odio, recusandae ipsa consequuntur distinctio in, maxime optio harum pariatur, id voluptas iusto? Velit harum non laboriosam.'),
(3, 3, '5 godzin temu', 'Daredevil to pochodzący z Hell’s Kitchen w Nowym Jorku, niewidomy od dzieciństwa mściciel, który nocami walczy z przestępczością na ulicach metropolii w kostiumie diabła.<img src=\"https://waskiel.pl/wp-content/uploads/2017/09/jak-zrobic-dobre-zdjecie-ustawienia-aparatu.jpg\">'),
(4, 2, '2 lata temu', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur aperiam, mollitia ea sint assumenda nihil esse eligendi rerum. Rerum nihil perferendis hic quae sunt perspiciatis suscipit asperiores quaerat veniam, consequatur dolor iure error laudantium dicta explicabo blanditiis ipsa aperiam natus laborum illum beatae vitae fugit saepe. Tempore, assumenda? Repudiandae illo pariatur cumque vero minus est fugiat sunt, sed, voluptatibus quasi reiciendis nostrum molestiae dicta voluptas, nam quibusdam autem asperiores aspernatur in aut omnis beatae. Libero expedita odio earum quas nesciunt eius laboriosam. Adipisci odio, recusandae ipsa consequuntur distinctio in, maxime optio harum pariatur, id voluptas iusto? Velit harum non laboriosam.'),
(5, 1, '1 rok temu', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur aperiam, mollitia ea sint assumenda nihil esse eligendi rerum. Rerum nihil perferendis hic quae sunt perspiciatis suscipit asperiores quaerat veniam, consequatur dolor iure error laudantium dicta explicabo blanditiis ipsa aperiam natus laborum illum beatae vitae fugit saepe. Tempore, assumenda? Repudiandae illo pariatur cumque vero minus est fugiat sunt, sed, voluptatibus quasi reiciendis nostrum molestiae dicta voluptas, nam quibusdam autem asperiores aspernatur in aut omnis beatae. Libero expedita odio earum quas nesciunt eius laboriosam. Adipisci odio, recusandae ipsa consequuntur distinctio in, maxime optio harum pariatur, id voluptas iusto? Velit harum non laboriosam.'),
(6, 3, '5 godzin temu', 'Marvel Comics – amerykańskie wydawnictwo komiksowe należące do Marvel Entertainment, jednej z filii The Walt Disney Company. Wydawnictwo wydaje komiksy o przygodach takich bohaterów jak: Kapitan Ameryka, Iron Man, Spider-Man, Hulk, Punisher, Daredevil, Fantastyczna Czwórka, Avengers, Blade czy grupa X-Men.\r\n\r\nW Polsce tłumaczenia komiksów Marvela ukazują się od 1990 roku nakładem różnych wydawnictw (pierwszym z nich była oficyna TM-Semic[1]) – początkowo w formie zeszytowych wydań kioskowych, a obecnie najczęściej w dystrybucji kioskowej i księgarskiej jako tomy zbiorcze zawierające po kilka numerów komiksów[2][3]. Jedną z popularniejszych serii w Polsce jest Marvel Classic przedstawiające polskim czytelnikom ikoniczne tytuły.[4]\r\n\r\nObecnie bohaterowie ci są coraz bardziej popularni dzięki częstym kinowym i telewizyjnym ekranizacjom komiksów, określanych wspólną nazwą Marvel Cinematic Universe (pol. Filmowe Universum Marvela).\r\n\r\nOd 2006 roku Hasbro Entertainment posiada prawa do produkowania i dystrybucji zabawek z postaciami ze świata Marvela. Na podobnej zasadzie działa współpraca również z konkurencją obu firm (Marvel Comics i Hasbro) na linii DC Comics-Mattel.'),
(7, 2, '8 godzin temu', 'Spider-Man (ang. człowiek pająk), pełne imię i nazwisko: Peter Benjamin Parker – fikcyjna postać (superbohater) znany z komiksów wydawanych przez Marvel Comics. Została stworzona przez scenarzystę Stana Lee, rysownika Steve’a Ditko, a także Jacka Kirby’ego[1]. Postać ta po raz pierwszy pojawiła się w Amazing Fantasy (vol. 1) #15 z sierpnia 1962[1][2]. Inspirowany był m.in. występującą w pulp magazine’ach postacią pogromcy zbrodni o pseudonimie Spider, bohatera z komiksów Archie Comics o pseudonimie Fly, postacią Silver Spidera z lat pięćdziesiątych, a także złoczyńcą znanym jako Spider-Man, która pojawiła się jednorazowo w komiksie Whiz Comics (vol. 1) #89 o przygodach Kapitana Marvela (wydawanych wówczas przez wydawnictwo Fawcett Comics)[3][4].'),
(8, 2, '2 lata temu', '<iframe id=\"player-iframe\" class=\"embed-responsive-item\" type=\"text/html\" src=\"http://www.youtube.com/embed/6Qm7pHtPNmc?enablejsapi=1&amp;origin=http://www.watchframebyframe.com\" frameborder=\"0\"></iframe>\r\nW założeniu miał być uosobieniem patriotyzmu i potęgi militarnej USA[1]. Postać z początku była wykorzystywana do celów propagandowych (na okładce komiksu, w którym zadebiutował, uderza pięścią w twarz Adolfa Hitlera)[1]. Jego towarzyszem jest James „Bucky” Barnes, oryginalnie nastoletni pomocnik superbohatera, który później sam stał się superbohaterem o pseudonimie Zimowy Żołnierz.'),
(9, 3, '12 godzin temu', 'Daredevil (prawdziwe nazwisko Matt Michael Murdock[1]) – fikcyjna postać (superbohater) z komiksów wydawnictwa Marvel Comics oraz różnego rodzaju adaptacji. Został stworzony przez Stana Lee i Billa Everetta[2]. Po raz pierwszy pojawił się w Daredevil Vol. 1 #1 z kwietnia 1964 roku[1]. Twórcy chcieli stworzyć koncepcję superbohatera, który podobnie jak Fantastyczna Czwórka, czy też Spider-Man nie był pozbawiony pewnych wad[2]. W przypadku tej postaci „wadą” miała być niemożność widzenia, aczkolwiek z początku Lee obawiał się negatywnej reakcji osób niewidomych, co jak później się okazało bezpodstawne, gdyż z czasem zaczął otrzymywać od organizacji charytatywnych listy, w których wyrażano się pozytywnie o tym pomyśle[2]. Marvelowskiego Daredevila nie należy mylić z postacią komiksową o tej samej nazwie, która ukazywała się w komiksach wydawanych przez Lev Gleason Publications w latach 40. i 50. XX wieku[2].'),
(10, 3, '1 dzien temu', 'Muzyka: sanah, Jakub Galiński<br>\r\nSłowa: sanah<br>kolońska i szlugi\r\n<iframe id=\"player-iframe\" class=\"embed-responsive-item\" type=\"text/html\" src=\"http://www.youtube.com/embed/eL-Wyc08Ktc?enablejsapi=1&amp;origin=http://www.watchframebyframe.com\" frameborder=\"0\"></iframe>');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(28) NOT NULL,
  `PASSWORD` varchar(66) NOT NULL,
  `AVATAR` varchar(5555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`ID`, `NAME`, `PASSWORD`, `AVATAR`) VALUES
(1, 'Adam Rutkowski', 'xd', 'https://avatarfiles.alphacoders.com/271/thumb-271030.jpg'),
(2, 'Artur Nowak', 'x', 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/7959eaa6-5390-47f6-8d5f-86afc4577958/dcfie4l-6318f442-944d-45d8-9302-8b18ea40670e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzc5NTllYWE2LTUzOTAtNDdmNi04ZDVmLTg2YWZjNDU3Nzk1OFwvZGNmaWU0bC02MzE4ZjQ0Mi05NDRkLTQ1ZDgtOTMwMi04YjE4ZWE0MDY3MGUuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.iXdbi55XWDlA_CdIRMWrEz-m7oTqJFvok1HxFpasmT0'),
(3, 'Tomasz Konewka', 'x', 'https://i.pinimg.com/236x/e3/31/57/e33157ea21bd33ddea822beb78f6df16.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `postlike`
--
ALTER TABLE `postlike`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `postlike`
--
ALTER TABLE `postlike`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
