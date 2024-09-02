create schema homelibrary;
use homelibrary;
create table authors
(
authorid int auto_increment primary key,
authorname varchar(255),
birthdate date,
nationality varchar(255),
gender varchar(10)
);
create table publishers
(
publisherid int auto_increment primary key,
publishername varchar(255),
phonenumber varchar(255),
address varchar(255),
district varchar(255),
city varchar(255)
);
create table translators
(
translatorid int auto_increment primary key,
translatorname varchar(255),
birthdate date
);
create table books
(
bookid int,
title varchar(255),
authorid int,
publisherid int,
publishdate date,
translatorid int,
quantity int,
unique (bookid, authorid, translatorid),
foreign key (authorid) references authors(authorid),
foreign key (publisherid) references publishers(publisherid),
foreign key (translatorid) references translators(translatorid)
)
;
insert into authors (authorname, birthdate, nationality, gender)
values 
('Mehmet Rauf', '1875-08-12', 'Turkish', 'M'),
('Fyodor Dostoyevski', '1821-11-11', 'Russian', 'M'),
('Gustave Flaubert', '1821-12-12', 'French', 'M'),
('F.Scott Fitzgerald', '1896-09-24', 'American', 'M'),
('Brian Boone', null, null, 'M'),
('Berna Aslıhan', null, 'Turkish', 'F'),
('Clarie Messud', '1966-10-08', 'American', 'F'),
('Marc Shonbrun', null, 'American', 'M'),
('Judith Ivory', null, 'American', 'F'),
('Samantha Grace', null, null, null),
('Paula Hawkins', '1972-08-26',	'British', 'F'),
('Wolf Dorn', '1969-04-20', 'German', 'M'),
('Kimberley Freeman', null, null, 'F'),
('D.H.Lawrance', '1885-09-11', 'British', 'M'),
('Elizabeth Gilbert', '1969-07-18', 'American', 'F'),
('Türkan Turan', null, 'Azerbaijani', 'F'),
('Şehnaz Haşimoğlu', null, 'Turkish', 'F'),
('Gülşen Haşimoğlu', null, 'Turkish', 'F'),
('Fatih Murat Arsal', '1968-12-26', 'Turkish','M'),
('Elif Yağmur Urfalıoğlu', null, 'Turkish', 'F'),
('Henning Mankell', '1948-02-03', 'Sweedish', 'M'),
('Sarah Jio', '1978-02-18', 'American', 'F'),
('Dilara Büyük', '1994-05-18', 'Turkish', 'F'),
('Sandy Tolan', '1956-01-15', 'American', 'M'),
('Öykü Odabaş Kanneci', '1979-04-01', 'Turkish', 'F'),
('Ahmet Altan', '1950-03-02', 'Turkish', 'M'),
('Gülseren Budayıcıoğlu', '1947-01-01', 'Turkish', 'F'),
('Hikmet Anıl Öztekin', '1986-01-01', 'Turkish', 'M'),
('Ahmet Ümit', '1960-09-30', 'Turkish', 'M'),
('Dan Brown', '1964-06-22', 'American', 'M'),
('Roger Jon Ellory', '1965-06-20', 'British', 'M'),
('Marybeth Mayhew Whalen', '1970-01-01', 'American', 'F'),
('Clara Sanchez', '1955-03-01', 'Spanish', 'F'),
('Işıl Parlakyıldız', null, 'Turkish', 'F'),
('Sinem İşler', null, 'Turkish', 'F'),
('Sharon J. Bolton', '1960-05-27', 'British', 'F'),
('Ntozake Shange', '1948-10-18', 'American', 'F'),
('Ifa Bayeza', '1958-01-01', 'American', 'F'),
('Pink Freud', null, 'Turkish', 'F'),
('James Patterson', '1947-03-22', 'American', 'M'),
('B.A.Paris', '1958-01-01', 'British', 'F'),
('Chloe Esposito', null, null, 'F'),
('Zülfü Livaneli', '1946-09-11', 'Turkish', 'M'),
('Scott Nicholson', '1963-01-01', 'American', 'M'),
('Gizem Bilici', null, 'Turkish', 'F'),
('Arthur Conan Doyle', '1859-05-22', 'British', 'M'),
('Canan Tan', '1951-01-01', 'Turkish', 'F'),
('Kate Eberlen', '1958-01-01', null, 'F'),
('Erika Mitchell James', '1963-03-07', 'British', 'F'),
('Laura Elvebak', null, 'American', 'F'),
('Judith Mcnaught', '1944-05-10', 'American', 'F'),
('Joanne Ellies', null, null, 'F'),
('Laura Landon', null, null, 'F'),
('Maryann Miller', '1943-07-04', null, null),
('Sinan Akyüz', '1972-04-01', 'Turkish', 'M'),
('George Woods', '1926-01-26', 'American', 'M'),
('Robert Turner', null, null, 'M'),
('Miranda Dickinson', '1973-01-01', 'British', 'F')
;
insert into publishers (publishername, phonenumber, address, district, city)
values 
('Sonsuz Kitap', '0212 222 72 35', 'Gürsel Mah. Alaybey Sk. No;7/1', 'Kağıthane', 'İstanbul'),
('Türkiye İş Bankası Kültür Yayınları', '0212 252 39 91', 'İstiklal Caddesi, Meşelik Sokak No:2/4', 'Beyoğlu', 'İstanbul'),
('Say Yayınları', '0212 674 9354', 'Ankara Caddesi, No:22/12,', 'Sirkeci', 'İstanbul'),
('Mendirek Yayınları', '0212 540 1061', 'Yenimahalle, Sel Sk. No:8/2','Küçükçekmece','İstanbul'),
('Martı Yayıncılık', '0212 483 27 37', 'Maltepe Mh. Davutpaşa Cd. Yılanlı Ayazma Sk. No:8', 'Zeytinburnu', 'İstanbul'),
('Koridor Yayıncılık', '0212 546 86 32', 'Telsiz Mh. 85. Sk. No:100', 'Zeytinburnu', 'İstanbul'),
('Aspendos Yayıncılık', '0212 220 61 88', 'Gürsel Mh. İcabet Sk. No:4/B', 'Kağıthane', 'İstanbul'),
('İthaki', '0216 348 36 97', 'Bahariye Cd. Dr.İhsan Ünlüer Sk. Ersoy Apt. A Blok, No:16/15', 'Kadıköy', 'İstanbul'),
('Pegasus Yayıncılık', '0212 244 23 50', 'Gümüşsuyu Mh. Osmanlı Sk. Alara Han No:27/9', 'Taksim', 'İstanbul'),
('Arkadya Yayınları', '0212 544 41 41', 'Maltepe Mh. Davutpaşa Cd. MB İş Merkezi No:14 Kat:1 D:1', 'Taksim', 'İstanbul'),
('Doğan Egmont Yayıncılık', '0212 373 77 00', '19 Mayıs Cd. Golden Plaza No:3, Kat:10', 'Şişli', 'İstanbul'),
('Dokuz Yayıncılık', '0212 640 00 35', 'Kartaltepe Mh. 49.Sk. No:10/A', 'Bayrampaşa', 'İstanbul'),
('Ephesus Yayınları', '0216 550 55 44', 'Moda Cd. Uşaklıgil Apt. No:108, D:3', 'Kadıköy', 'İstanbul'),
('Eftalya Kitap', '0212 506 13 84', 'İzzettin Çalışlar Cd. Şair Orhan Veli Sk. No:4 D:4', 'Bahçelievler', 'İstanbul'),
('Ayrıksı Kitap', null, 'Küçükbakkalköy Mh., Flora Residence No:1 Kat:28', 'Ataşehir', 'İstanbul'),
('Pena Yayınları', '0212 368 83 00', 'Halaskargazi Cd. No:51', 'Şişli', 'İstanbul'),
('Müptela Yayınları', '0216 348 36 97', 'Caferağa Mh. Moda Cd. Neşe Sk. 1907 Apt. No:31', 'Kadıköy', 'İstanbul'),
('Postiga Yayınları', '0212 613 68 94', 'Maltepe Mh. Litros Yolu Fatih San. Sit. No:12/74', 'Topkapı', 'İstanbul'),
('Can Yayınları', '0212 252 56 75', 'Hayriye Cd. No:2', 'Galatasaray', 'İstanbul'),
('Remzi Kitapevi', '0212 282 20 80', 'Akmerkez E3-14', 'Etiler', 'İstanbul'),
('Yakamoz Kitap', '0212 222 72 25', 'Gürsel Mh. Alaybey Sk., No:7/1', 'Kağıthane', 'İstanbul'),
('Yapı Kredi Yayınları', '0212 252 47 00', 'İstiklal Cd. No:161', 'Beyoğlu', 'İstanbul'),
('Odtü Yayıncılık', '0312 210 38 70', 'İnönü Bulv. ODTÜ Yerleşkesi', null, 'Ankara'),
('İnkılâp Kitabevi', '0212 496 11 11', 'Çobançeşme Mh. Sanayi Cd. Altay Sk. No:8', 'Yenibosna', 'İstanbul'),
('Eksik Parça Yayınları', '0212 272 45 46', 'Gülbahar Mh. Elif Sk. No:4/A', 'Mecidiyeköy', 'İstanbul'),
('Papillon Yayınları', '0212 321 48 17', 'Deniz Köşkler Mh. Dr.Sadık Ahmet Cd. Reyhan Sk. No:5/A', 'Avcılar', 'İstanbul'),
('Okuyanus', '0212 272 20 85', 'Fulya Mh. Mehmetçik Cd. Eser Apt. A Blok No:30 D:5-6', 'Şişli', 'İstanbul'),
('Esa Yayınları', null, null, null, null),
('Pagoda Yayınları', null, 'Ortabayır Mh. Sair Çelebi Sk. No:1/3', 'Kağıthane', 'İstanbul'),
('Gönül Yayıncılık', '0312 343 92 27', 'Ergenekon Mh. Nişantaşı Sk. No:3/A', 'Yenimahalle', 'Ankara'),
('Altın Kitaplar', '0212 513 63 65', 'Matbaacılar Sitesi No:83', 'Bağcılar', 'İstanbul'),
('Epsilon', '0212 252 38 21', 'Osmanlı Sk. Osmanlı İş Merkezi No:18/4', 'Taksim', 'İstanbul'),
('Alfa', '0212 511 97 23', 'Alemdar Mh. Ticarethane Sk. No:15', 'Çağaloğlu', 'İstanbul'),
('Kalipso Yayınları', '0262 324 89 34', 'Ömerağa Mh. Abdurrahman Yüksel Cd. No:9/1', null, 'Kocaeli'),
('İndigo Kitap', '0212 438 17 83', 'Oruçreis Mh. Tekstilkent Cd. No:10 D:Z07', 'Esenler', 'İstanbul')   
;
insert into translators (translatorname)
values 
('Erdener Tunalı'),
('Fadime Kâhya'),
('Funda Sezer'),
('Derya Engin'),
('Ender Nail'),
('Burcu Denizci'),
('Aslıhan Kuzucan'),
('Tuna Alemdar'),
('Duygu Parsadan'),
('Meriç Selvi'),
('Gamze Bulut'),
('Zeynep Kumruluoğlu'),
('Elâ Yıldırım'),
('Fatma Zeynep Öztürk'),
('Engin Wang'),
('Sezer Soner'),
('Mehmet Gürsel'),
('Cem Yurttaş'),
('Deniz Torcu'),
('Barış Sever'),
('Uğur Mehter'),
('Tülin Penso'),
('Solina Silahlı'),
('Nazlı Tüzener Tokan'),
('Berna Kahraman'),
('Hatice Yıldız'),
('Seçil Şen'),
('Sevinç Seyla Tezcan'),
('Ayşe Gümüş'),
('Duygu Uğur'),
('Aysun Karpuzoğlu'),
('Merve Altıparmak'),
('Yasemin Ertuğrul'),
('Nihan Giray'),
('Esra Yüksel')
;
insert into books (bookid, title, authorid, publisherid, publishdate, translatorid, quantity)
values
(1,'Eylül', 1, 1, '2009-06-01', null, 1),
(2, 'Ölü Evinden Anılar', 2, 1, '2010-01-01', 1, 1),
(3, 'Madam Bovary', 3, 1, '2009-05-01', 1, 1),
(4, 'Muhteşem Gatsby', 4, 2, '2023-12-01', 2, 1),
(5, 'Müzik Teorisi 101', 5, 3, '2022-01-01', 3, 1),
(5, 'Müzik Teorisi 101', 5, 3, '2022-01-01', 4, 1),
(6, 'İki Deli Bir Aşk', 7, 4, '2017-09-01', null, 1),
(7, 'Üç Oda Bir Yalnızlık', 8, 5, '2014-04-01', 4, 1),
(8, 'Teklif', 9, 6, null, 5, 1),
(9, 'Aşka Karşı Koyma', 10, 7, '2014-04-01', 6, 1),
(10, 'Trendeki Kız', 11, 8, '2015-03-01', 7, 1),
(11, 'Şizofren', 12, 9, '2013-02-01', 8, 1),
(12, 'Kor Adası', 13, 10, '2018-01-01', 9, 1),
(13, "Lady Chatterley'in aşığı", 13, 5, '2019-11-01', 10, 1),
(14, 'Ye, Dua Et, Sev', 15, 9, '2010-10-01', 11, 1),
(14, 'Ye, Dua Et, Sev', 15, 9, '2010-10-01', 12, 1),
(15, "Sara'nın Gözleri", 16, 11, '2021-02-01', null, 1),
(16, 'Kuma', 17, 12, '2017-02-01', null, 1),
(16, 'Kuma', 18, 12, '2017-02-01', null, 1),
(17, 'Anlaşma', 19, 13, '2014-01-01', null, 1),
(18, 'Seni Bana Vermişler', 20, 14, '2016-07-01', null, 1),
(19, 'Karanlık Yüz', 21, 15, '2021-10-01', 13, 1),
(20, 'Kelebek Adası', 22, 16, '2016-11-01', 14, 1),
(21, 'Melek Büyüsü', 23, 17, '2018-05-01', null, 1),
(22, 'Limon Ağacı', 24, 9, '2008-11-01', 15, 1),
(23, 'Yeşil Deniz Kabuğu', 22, 16, '2016-03-01', 14, 1),
(24, 'İntikamın Sırrı', 25, 18, '2014-12-01', null, 1),
(25, 'Kılıç Yarası Gibi', 26, 19, '1998-08-01', null, 1),
(26, 'Günahın Üç Rengi', 27, 20, '2016-03-01', null, 1),
(27, 'Eyvallah', 28, 21, '2015-06-01', null, 1),
(28, 'Bir Aşk Masalı', 29, 22, '2022-10-01', null, 1),
(29, 'Dijital Kale', 30, 23, '2008-11-01', 16, 1),
(30, 'Meleklere İnanmak', 31, 24, null, 17, 1),
(31, 'Örümceğin Mesajı', 32, 25, '2017-08-01', 18, 1),
(32, 'Limon Yapraklarının Kokusu', 33, 9, '2013-02-01', 19, 1),
(33, 'Köle', 33, 17, null, null, 1),
(34, 'Bana Ait', 35, 26, '2016-02-01', null, 1),
(35, 'Kan Hasadı', 36, 9, '2013-09-01', 20, 1),
(36, 'Biraz Şarkı Biraz Gözyaşı', 37, 5, '2018-03-01', 21, 1),
(36, 'Biraz Şarkı Biraz Gözyaşı', 38, 5, '2018-03-01', 21, 1),
(37, 'Sorun Bendeymiş', 39, 27, '2013-09-01', null, 1),
(38, 'Sahil Yolu', 40, 28, null, 22, 1),
(39, 'Terapist', 41, 11, '2022-06-01', 23, 1),
(40, 'Sorun Bende Değil, Sende', 39, 27, '2012-03-01', null, 1),
(41, 'Çılgın', 42, 11, '2017-01-01', 24, 1),
(42, 'Serenad', 43, 24, '2021-01-01', null, 1),
(43, 'Psikopat', 44, 29, '2021-01-01', 25, 1),
(44, 'Ansızın Seven Ben', 45, 21, '2017-01-01', null, 1),
(45, 'Sherlock Holmes Baskervillerin Köpeği & Zümrüt Taç', 46, 30, '2020-01-01', 26, 1),
(42, 'Yüreğim Seni Çok Sevdi', 47, 31, '2007-03-01', null, 1),
(43, 'Özledim Seni', 48, 16, '2017-02-01', 27, 1),
(44, 'Zümrüt Şelaleleri', 13, 10, '2019-01-01', 9, 1),
(45, 'Özgürlüğün Elli Tonu', 49, 9, '2012-11-01', 28, 1),
(46, 'Karanlığın Elli Tonu', 49, 9, null, 28, 1),
(47, 'Öfke', 50, 29, '2021-01-01', 29, 1),
(48, 'Sen Gelmeden Önce', 51, 32, '2014-05-01', 30, 1),
(49, 'Dehşetin Sonu', 52, 29, '2018-01-01', 31, 1),
(50, 'Sessiz İntikam', 53, 7, '2014-01-01', 32, 1),
(51, 'Muhbir', 54, 29, '2021-01-01', 33, 1),
(52, 'Aşk Başka Evde', 55, 33, '2020-09-01', null, 1),
(53, 'Mart Menekşeleri', 22, 10, null, 34, 1),
(54, 'Sıra Kimde', 56, 34, null, null, 1),
(55, 'İhanet', 57, 34, null, null, 1),
(56, 'Kendime Yeni Bir Ben Lazım', 58, 35, '2015-07-01', 35, 1) 