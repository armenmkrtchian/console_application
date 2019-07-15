DROP TABLE customers;

CREATE TABLE `customers` (
  `customerNumber` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `contactLastName` varchar(50) NOT NULL,
  `contactFirstName` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postalCode` varchar(15) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `salesRepEmployeeNumber` int(11) DEFAULT NULL,
  `creditLimit` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`customerNumber`),
  KEY `salesRepEmployeeNumber` (`salesRepEmployeeNumber`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`salesRepEmployeeNumber`) REFERENCES `employees` (`employeeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO customers VALUES("103","Atelier graphique","Schmitt","Carine ","40.32.2555","54, rue Royale","","Nantes","","44000","France","1370","21000.00");
INSERT INTO customers VALUES("112","Signal Gift Stores","King","Jean","7025551838","8489 Strong St.","","Las Vegas","NV","83030","USA","1166","71800.00");
INSERT INTO customers VALUES("114","Australian Collectors, Co.","Ferguson","Peter","03 9520 4555","636 St Kilda Road","Level 3","Melbourne","Victoria","3004","Australia","1611","117300.00");
INSERT INTO customers VALUES("119","La Rochelle Gifts","Labrune","Janine ","40.67.8555","67, rue des Cinquante Otages","","Nantes","","44000","France","1370","118200.00");
INSERT INTO customers VALUES("121","Baane Mini Imports","Bergulfsen","Jonas ","07-98 9555","Erling Skakkes gate 78","","Stavern","","4110","Norway","1504","81700.00");
INSERT INTO customers VALUES("124","Mini Gifts Distributors Ltd.","Nelson","Susan","4155551450","5677 Strong St.","","San Rafael","CA","97562","USA","1165","210500.00");
INSERT INTO customers VALUES("125","Havel & Zbyszek Co","Piestrzeniewicz","Zbyszek ","(26) 642-7555","ul. Filtrowa 68","","Warszawa","","01-012","Poland","","0.00");
INSERT INTO customers VALUES("128","Blauer See Auto, Co.","Keitel","Roland","+49 69 66 90 2555","Lyonerstr. 34","","Frankfurt","","60528","Germany","1504","59700.00");
INSERT INTO customers VALUES("129","Mini Wheels Co.","Murphy","Julie","6505555787","5557 North Pendale Street","","San Francisco","CA","94217","USA","1165","64600.00");
INSERT INTO customers VALUES("131","Land of Toys Inc.","Lee","Kwai","2125557818","897 Long Airport Avenue","","NYC","NY","10022","USA","1323","114900.00");
INSERT INTO customers VALUES("141","Euro+ Shopping Channel","Freyre","Diego ","(91) 555 94 44","C/ Moralzarzal, 86","","Madrid","","28034","Spain","1370","227600.00");
INSERT INTO customers VALUES("144","Volvo Model Replicas, Co","Berglund","Christina ","0921-12 3555","Berguvsvägen  8","","Luleå","","S-958 22","Sweden","1504","53100.00");
INSERT INTO customers VALUES("145","Danish Wholesale Imports","Petersen","Jytte ","31 12 3555","Vinbæltet 34","","Kobenhavn","","1734","Denmark","1401","83400.00");
INSERT INTO customers VALUES("146","Saveley & Henriot, Co.","Saveley","Mary ","78.32.5555","2, rue du Commerce","","Lyon","","69004","France","1337","123900.00");
INSERT INTO customers VALUES("148","Dragon Souveniers, Ltd.","Natividad","Eric","+65 221 7555","Bronz Sok.","Bronz Apt. 3/6 Tesvikiye","Singapore","","079903","Singapore","1621","103800.00");
INSERT INTO customers VALUES("151","Muscle Machine Inc","Young","Jeff","2125557413","4092 Furth Circle","Suite 400","NYC","NY","10022","USA","1286","138500.00");
INSERT INTO customers VALUES("157","Diecast Classics Inc.","Leong","Kelvin","2155551555","7586 Pompton St.","","Allentown","PA","70267","USA","1216","100600.00");
INSERT INTO customers VALUES("161","Technics Stores Inc.","Hashimoto","Juri","6505556809","9408 Furth Circle","","Burlingame","CA","94217","USA","1165","84600.00");
INSERT INTO customers VALUES("166","Handji Gifts& Co","Victorino","Wendy","+65 224 1555","106 Linden Road Sandown","2nd Floor","Singapore","","069045","Singapore","1612","97900.00");
INSERT INTO customers VALUES("167","Herkku Gifts","Oeztan","Veysel","+47 2267 3215","Brehmen St. 121","PR 334 Sentrum","Bergen","","N 5804","Norway  ","1504","96800.00");
INSERT INTO customers VALUES("168","American Souvenirs Inc","Franco","Keith","2035557845","149 Spinnaker Dr.","Suite 101","New Haven","CT","97823","USA","1286","0.00");
INSERT INTO customers VALUES("169","Porto Imports Co.","de Castro","Isabel ","(1) 356-5555","Estrada da saúde n. 58","","Lisboa","","1756","Portugal","","0.00");
INSERT INTO customers VALUES("171","Daedalus Designs Imports","Rancé","Martine ","20.16.1555","184, chaussée de Tournai","","Lille","","59000","France","1370","82900.00");
INSERT INTO customers VALUES("172","La Corne D\'abondance, Co.","Bertrand","Marie","(1) 42.34.2555","265, boulevard Charonne","","Paris","","75012","France","1337","84300.00");
INSERT INTO customers VALUES("173","Cambridge Collectables Co.","Tseng","Jerry","6175555555","4658 Baden Av.","","Cambridge","MA","51247","USA","1188","43400.00");
INSERT INTO customers VALUES("175","Gift Depot Inc.","King","Julie","2035552570","25593 South Bay Ln.","","Bridgewater","CT","97562","USA","1323","84300.00");
INSERT INTO customers VALUES("177","Osaka Souveniers Co.","Kentary","Mory","+81 06 6342 5555","1-6-20 Dojima","","Kita-ku","Osaka"," 530-0003","Japan","1621","81200.00");
INSERT INTO customers VALUES("181","Vitachrome Inc.","Frick","Michael","2125551500","2678 Kingston Rd.","Suite 101","NYC","NY","10022","USA","1286","76400.00");
INSERT INTO customers VALUES("186","Toys of Finland, Co.","Karttunen","Matti","90-224 8555","Keskuskatu 45","","Helsinki","","21240","Finland","1501","96500.00");
INSERT INTO customers VALUES("187","AV Stores, Co.","Ashworth","Rachel","(171) 555-1555","Fauntleroy Circus","","Manchester","","EC2 5NT","UK","1501","136800.00");
INSERT INTO customers VALUES("189","Clover Collections, Co.","Cassidy","Dean","+353 1862 1555","25 Maiden Lane","Floor No. 4","Dublin","","2","Ireland","1504","69400.00");
INSERT INTO customers VALUES("198","Auto-Moto Classics Inc.","Taylor","Leslie","6175558428","16780 Pompton St.","","Brickhaven","MA","58339","USA","1216","23000.00");
INSERT INTO customers VALUES("201","UK Collectables, Ltd.","Devon","Elizabeth","(171) 555-2282","12, Berkeley Gardens Blvd","","Liverpool","","WX1 6LT","UK","1501","92700.00");
INSERT INTO customers VALUES("202","Canadian Gift Exchange Network","Tamuri","Yoshi ","(604) 555-3392","1900 Oak St.","","Vancouver","BC","V3F 2K1","Canada","1323","90300.00");
INSERT INTO customers VALUES("204","Online Mini Collectables","Barajas","Miguel","6175557555","7635 Spinnaker Dr.","","Brickhaven","MA","58339","USA","1188","68700.00");
INSERT INTO customers VALUES("205","Toys4GrownUps.com","Young","Julie","6265557265","78934 Hillside Dr.","","Pasadena","CA","90003","USA","1166","90700.00");
INSERT INTO customers VALUES("206","Asian Shopping Network, Co","Walker","Brydey","+612 9411 1555","Suntec Tower Three","8 Temasek","Singapore","","038988","Singapore","","0.00");
INSERT INTO customers VALUES("209","Mini Caravy","Citeaux","Frédérique ","88.60.1555","24, place Kléber","","Strasbourg","","67000","France","1370","53800.00");
INSERT INTO customers VALUES("211","King Kong Collectables, Co.","Gao","Mike","+852 2251 1555","Bank of China Tower","1 Garden Road","Central Hong Kong","","","Hong Kong","1621","58600.00");
INSERT INTO customers VALUES("216","Enaco Distributors","Saavedra","Eduardo ","(93) 203 4555","Rambla de Cataluña, 23","","Barcelona","","08022","Spain","1702","60300.00");
INSERT INTO customers VALUES("219","Boards & Toys Co.","Young","Mary","3105552373","4097 Douglas Av.","","Glendale","CA","92561","USA","1166","11000.00");
INSERT INTO customers VALUES("223","Natürlich Autos","Kloss","Horst ","0372-555188","Taucherstraße 10","","Cunewalde","","01307","Germany","","0.00");
INSERT INTO customers VALUES("227","Heintze Collectables","Ibsen","Palle","86 21 3555","Smagsloget 45","","Århus","","8200","Denmark","1401","120800.00");
INSERT INTO customers VALUES("233","Québec Home Shopping Network","Fresnière","Jean ","(514) 555-8054","43 rue St. Laurent","","Montréal","Québec","H1J 1C3","Canada","1286","48700.00");
INSERT INTO customers VALUES("237","ANG Resellers","Camino","Alejandra ","(91) 745 6555","Gran Vía, 1","","Madrid","","28001","Spain","","0.00");
INSERT INTO customers VALUES("239","Collectable Mini Designs Co.","Thompson","Valarie","7605558146","361 Furth Circle","","San Diego","CA","91217","USA","1166","105000.00");
INSERT INTO customers VALUES("240","giftsbymail.co.uk","Bennett","Helen ","(198) 555-8888","Garden House","Crowther Way 23","Cowes","Isle of Wight","PO31 7PJ","UK","1501","93900.00");
INSERT INTO customers VALUES("242","Alpha Cognac","Roulet","Annette ","61.77.6555","1 rue Alsace-Lorraine","","Toulouse","","31000","France","1370","61100.00");
INSERT INTO customers VALUES("247","Messner Shopping Network","Messner","Renate ","069-0555984","Magazinweg 7","","Frankfurt","","60528","Germany","","0.00");
INSERT INTO customers VALUES("249","Amica Models & Co.","Accorti","Paolo ","011-4988555","Via Monte Bianco 34","","Torino","","10100","Italy","1401","113000.00");
INSERT INTO customers VALUES("250","Lyon Souveniers","Da Silva","Daniel","+33 1 46 62 7555","27 rue du Colonel Pierre Avia","","Paris","","75508","France","1337","68100.00");
INSERT INTO customers VALUES("256","Auto Associés & Cie.","Tonini","Daniel ","30.59.8555","67, avenue de l\'Europe","","Versailles","","78000","France","1370","77900.00");
INSERT INTO customers VALUES("259","Toms Spezialitäten, Ltd","Pfalzheim","Henriette ","0221-5554327","Mehrheimerstr. 369","","Köln","","50739","Germany","1504","120400.00");
INSERT INTO customers VALUES("260","Royal Canadian Collectables, Ltd.","Lincoln","Elizabeth ","(604) 555-4555","23 Tsawassen Blvd.","","Tsawassen","BC","T2F 8M4","Canada","1323","89600.00");
INSERT INTO customers VALUES("273","Franken Gifts, Co","Franken","Peter ","089-0877555","Berliner Platz 43","","München","","80805","Germany","","0.00");
INSERT INTO customers VALUES("276","Anna\'s Decorations, Ltd","O\'Hara","Anna","02 9936 8555","201 Miller Street","Level 15","North Sydney","NSW","2060","Australia","1611","107800.00");
INSERT INTO customers VALUES("278","Rovelli Gifts","Rovelli","Giovanni ","035-640555","Via Ludovico il Moro 22","","Bergamo","","24100","Italy","1401","119600.00");
INSERT INTO customers VALUES("282","Souveniers And Things Co.","Huxley","Adrian","+61 2 9495 8555","Monitor Money Building","815 Pacific Hwy","Chatswood","NSW","2067","Australia","1611","93300.00");
INSERT INTO customers VALUES("286","Marta\'s Replicas Co.","Hernandez","Marta","6175558555","39323 Spinnaker Dr.","","Cambridge","MA","51247","USA","1216","123700.00");
INSERT INTO customers VALUES("293","BG&E Collectables","Harrison","Ed","+41 26 425 50 01","Rte des Arsenaux 41 ","","Fribourg","","1700","Switzerland","","0.00");
INSERT INTO customers VALUES("298","Vida Sport, Ltd","Holz","Mihael","0897-034555","Grenzacherweg 237","","Genève","","1203","Switzerland","1702","141300.00");
INSERT INTO customers VALUES("299","Norway Gifts By Mail, Co.","Klaeboe","Jan","+47 2212 1555","Drammensveien 126A","PB 211 Sentrum","Oslo","","N 0106","Norway  ","1504","95100.00");
INSERT INTO customers VALUES("303","Schuyler Imports","Schuyler","Bradley","+31 20 491 9555","Kingsfordweg 151","","Amsterdam","","1043 GR","Netherlands","","0.00");
INSERT INTO customers VALUES("307","Der Hund Imports","Andersen","Mel","030-0074555","Obere Str. 57","","Berlin","","12209","Germany","","0.00");
INSERT INTO customers VALUES("311","Oulu Toy Supplies, Inc.","Koskitalo","Pirkko","981-443655","Torikatu 38","","Oulu","","90110","Finland","1501","90500.00");
INSERT INTO customers VALUES("314","Petit Auto","Dewey","Catherine ","(02) 5554 67","Rue Joseph-Bens 532","","Bruxelles","","B-1180","Belgium","1401","79900.00");
INSERT INTO customers VALUES("319","Mini Classics","Frick","Steve","9145554562","3758 North Pendale Street","","White Plains","NY","24067","USA","1323","102700.00");
INSERT INTO customers VALUES("320","Mini Creations Ltd.","Huang","Wing","5085559555","4575 Hillside Dr.","","New Bedford","MA","50553","USA","1188","94500.00");
INSERT INTO customers VALUES("321","Corporate Gift Ideas Co.","Brown","Julie","6505551386","7734 Strong St.","","San Francisco","CA","94217","USA","1165","105000.00");
INSERT INTO customers VALUES("323","Down Under Souveniers, Inc","Graham","Mike","+64 9 312 5555","162-164 Grafton Road","Level 2","Auckland  ","","","New Zealand","1612","88000.00");
INSERT INTO customers VALUES("324","Stylish Desk Decors, Co.","Brown","Ann ","(171) 555-0297","35 King George","","London","","WX3 6FW","UK","1501","77000.00");
INSERT INTO customers VALUES("328","Tekni Collectables Inc.","Brown","William","2015559350","7476 Moss Rd.","","Newark","NJ","94019","USA","1323","43000.00");
INSERT INTO customers VALUES("333","Australian Gift Network, Co","Calaghan","Ben","61-7-3844-6555","31 Duncan St. West End","","South Brisbane","Queensland","4101","Australia","1611","51600.00");
INSERT INTO customers VALUES("334","Suominen Souveniers","Suominen","Kalle","+358 9 8045 555","Software Engineering Center","SEC Oy","Espoo","","FIN-02271","Finland","1501","98800.00");
INSERT INTO customers VALUES("335","Cramer Spezialitäten, Ltd","Cramer","Philip ","0555-09555","Maubelstr. 90","","Brandenburg","","14776","Germany","","0.00");
INSERT INTO customers VALUES("339","Classic Gift Ideas, Inc","Cervantes","Francisca","2155554695","782 First Street","","Philadelphia","PA","71270","USA","1188","81100.00");
INSERT INTO customers VALUES("344","CAF Imports","Fernandez","Jesus","+34 913 728 555","Merchants House","27-30 Merchant\'s Quay","Madrid","","28023","Spain","1702","59600.00");
INSERT INTO customers VALUES("347","Men \'R\' US Retailers, Ltd.","Chandler","Brian","2155554369","6047 Douglas Av.","","Los Angeles","CA","91003","USA","1166","57700.00");
INSERT INTO customers VALUES("348","Asian Treasures, Inc.","McKenna","Patricia ","2967 555","8 Johnstown Road","","Cork","Co. Cork","","Ireland","","0.00");
INSERT INTO customers VALUES("350","Marseille Mini Autos","Lebihan","Laurence ","91.24.4555","12, rue des Bouchers","","Marseille","","13008","France","1337","65000.00");
INSERT INTO customers VALUES("353","Reims Collectables","Henriot","Paul ","26.47.1555","59 rue de l\'Abbaye","","Reims","","51100","France","1337","81100.00");
INSERT INTO customers VALUES("356","SAR Distributors, Co","Kuger","Armand","+27 21 550 3555","1250 Pretorius Street","","Hatfield","Pretoria","0028","South Africa","","0.00");
INSERT INTO customers VALUES("357","GiftsForHim.com","MacKinlay","Wales","64-9-3763555","199 Great North Road","","Auckland","","","New Zealand","1612","77700.00");
INSERT INTO customers VALUES("361","Kommission Auto","Josephs","Karin","0251-555259","Luisenstr. 48","","Münster","","44087","Germany","","0.00");
INSERT INTO customers VALUES("362","Gifts4AllAges.com","Yoshido","Juri","6175559555","8616 Spinnaker Dr.","","Boston","MA","51003","USA","1216","41900.00");
INSERT INTO customers VALUES("363","Online Diecast Creations Co.","Young","Dorothy","6035558647","2304 Long Airport Avenue","","Nashua","NH","62005","USA","1216","114200.00");
INSERT INTO customers VALUES("369","Lisboa Souveniers, Inc","Rodriguez","Lino ","(1) 354-2555","Jardim das rosas n. 32","","Lisboa","","1675","Portugal","","0.00");
INSERT INTO customers VALUES("376","Precious Collectables","Urs","Braun","0452-076555","Hauptstr. 29","","Bern","","3012","Switzerland","1702","0.00");
INSERT INTO customers VALUES("379","Collectables For Less Inc.","Nelson","Allen","6175558555","7825 Douglas Av.","","Brickhaven","MA","58339","USA","1188","70700.00");
INSERT INTO customers VALUES("381","Royale Belge","Cartrain","Pascale ","(071) 23 67 2555","Boulevard Tirou, 255","","Charleroi","","B-6000","Belgium","1401","23500.00");
INSERT INTO customers VALUES("382","Salzburg Collectables","Pipps","Georg ","6562-9555","Geislweg 14","","Salzburg","","5020","Austria","1401","71700.00");
INSERT INTO customers VALUES("385","Cruz & Sons Co.","Cruz","Arnold","+63 2 555 3587","15 McCallum Street","NatWest Center #13-03","Makati City","","1227 MM","Philippines","1621","81500.00");
INSERT INTO customers VALUES("386","L\'ordine Souveniers","Moroni","Maurizio ","0522-556555","Strada Provinciale 124","","Reggio Emilia","","42100","Italy","1401","121400.00");
INSERT INTO customers VALUES("398","Tokyo Collectables, Ltd","Shimamura","Akiko","+81 3 3584 0555","2-2-8 Roppongi","","Minato-ku","Tokyo","106-0032","Japan","1621","94400.00");
INSERT INTO customers VALUES("406","Auto Canal+ Petit","Perrier","Dominique","(1) 47.55.6555","25, rue Lauriston","","Paris","","75016","France","1337","95000.00");
INSERT INTO customers VALUES("409","Stuttgart Collectable Exchange","Müller","Rita ","0711-555361","Adenauerallee 900","","Stuttgart","","70563","Germany","","0.00");
INSERT INTO customers VALUES("412","Extreme Desk Decorations, Ltd","McRoy","Sarah","04 499 9555","101 Lambton Quay","Level 11","Wellington","","","New Zealand","1612","86800.00");
INSERT INTO customers VALUES("415","Bavarian Collectables Imports, Co.","Donnermeyer","Michael"," +49 89 61 08 9555","Hansastr. 15","","Munich","","80686","Germany","1504","77000.00");
INSERT INTO customers VALUES("424","Classic Legends Inc.","Hernandez","Maria","2125558493","5905 Pompton St.","Suite 750","NYC","NY","10022","USA","1286","67500.00");
INSERT INTO customers VALUES("443","Feuer Online Stores, Inc","Feuer","Alexander ","0342-555176","Heerstr. 22","","Leipzig","","04179","Germany","","0.00");
INSERT INTO customers VALUES("447","Gift Ideas Corp.","Lewis","Dan","2035554407","2440 Pompton St.","","Glendale","CT","97561","USA","1323","49700.00");
INSERT INTO customers VALUES("448","Scandinavian Gift Ideas","Larsson","Martha","0695-34 6555","Åkergatan 24","","Bräcke","","S-844 67","Sweden","1504","116400.00");
INSERT INTO customers VALUES("450","The Sharp Gifts Warehouse","Frick","Sue","4085553659","3086 Ingle Ln.","","San Jose","CA","94217","USA","1165","77600.00");
INSERT INTO customers VALUES("452","Mini Auto Werke","Mendel","Roland ","7675-3555","Kirchgasse 6","","Graz","","8010","Austria","1401","45300.00");
INSERT INTO customers VALUES("455","Super Scale Inc.","Murphy","Leslie","2035559545","567 North Pendale Street","","New Haven","CT","97823","USA","1286","95400.00");
INSERT INTO customers VALUES("456","Microscale Inc.","Choi","Yu","2125551957","5290 North Pendale Street","Suite 200","NYC","NY","10022","USA","1286","39800.00");
INSERT INTO customers VALUES("458","Corrida Auto Replicas, Ltd","Sommer","Martín ","(91) 555 22 82","C/ Araquil, 67","","Madrid","","28023","Spain","1702","104600.00");
INSERT INTO customers VALUES("459","Warburg Exchange","Ottlieb","Sven ","0241-039123","Walserweg 21","","Aachen","","52066","Germany","","0.00");
INSERT INTO customers VALUES("462","FunGiftIdeas.com","Benitez","Violeta","5085552555","1785 First Street","","New Bedford","MA","50553","USA","1216","85800.00");
INSERT INTO customers VALUES("465","Anton Designs, Ltd.","Anton","Carmen","+34 913 728555","c/ Gobelas, 19-1 Urb. La Florida","","Madrid","","28023","Spain","","0.00");
INSERT INTO customers VALUES("471","Australian Collectables, Ltd","Clenahan","Sean","61-9-3844-6555","7 Allen Street","","Glen Waverly","Victoria","3150","Australia","1611","60300.00");
INSERT INTO customers VALUES("473","Frau da Collezione","Ricotti","Franco","+39 022515555","20093 Cologno Monzese","Alessandro Volta 16","Milan","","","Italy","1401","34800.00");
INSERT INTO customers VALUES("475","West Coast Collectables Co.","Thompson","Steve","3105553722","3675 Furth Circle","","Burbank","CA","94019","USA","1166","55400.00");
INSERT INTO customers VALUES("477","Mit Vergnügen & Co.","Moos","Hanna ","0621-08555","Forsterstr. 57","","Mannheim","","68306","Germany","","0.00");
INSERT INTO customers VALUES("480","Kremlin Collectables, Co.","Semenov","Alexander ","+7 812 293 0521","2 Pobedy Square","","Saint Petersburg","","196143","Russia","","0.00");
INSERT INTO customers VALUES("481","Raanan Stores, Inc","Altagar,G M","Raanan","+ 972 9 959 8555","3 Hagalim Blv.","","Herzlia","","47625","Israel","","0.00");
INSERT INTO customers VALUES("484","Iberia Gift Imports, Corp.","Roel","José Pedro ","(95) 555 82 82","C/ Romero, 33","","Sevilla","","41101","Spain","1702","65700.00");
INSERT INTO customers VALUES("486","Motor Mint Distributors Inc.","Salazar","Rosa","2155559857","11328 Douglas Av.","","Philadelphia","PA","71270","USA","1323","72600.00");
INSERT INTO customers VALUES("487","Signal Collectibles Ltd.","Taylor","Sue","4155554312","2793 Furth Circle","","Brisbane","CA","94217","USA","1165","60300.00");
INSERT INTO customers VALUES("489","Double Decker Gift Stores, Ltd","Smith","Thomas ","(171) 555-7555","120 Hanover Sq.","","London","","WA1 1DP","UK","1501","43300.00");
INSERT INTO customers VALUES("495","Diecast Collectables","Franco","Valarie","6175552555","6251 Ingle Ln.","","Boston","MA","51003","USA","1188","85100.00");
INSERT INTO customers VALUES("496","Kelly\'s Gift Shop","Snowden","Tony","+64 9 5555500","Arenales 1938 3\'A\'","","Auckland  ","","","New Zealand","1612","110000.00");



DROP TABLE offices;

CREATE TABLE `offices` (
  `officeCode` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `postalCode` varchar(15) NOT NULL,
  `territory` varchar(10) NOT NULL,
  PRIMARY KEY (`officeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO offices VALUES("1","San Francisco","+1 650 219 4782","100 Market Street","Suite 300","CA","USA","94080","NA");
INSERT INTO offices VALUES("2","Boston","+1 215 837 0825","1550 Court Place","Suite 102","MA","USA","02107","NA");
INSERT INTO offices VALUES("3","NYC","+1 212 555 3000","523 East 53rd Street","apt. 5A","NY","USA","10022","NA");
INSERT INTO offices VALUES("4","Paris","+33 14 723 4404","43 Rue Jouffroy D\'abbans","","","France","75017","EMEA");
INSERT INTO offices VALUES("5","Tokyo","+81 33 224 5000","4-1 Kioicho","","Chiyoda-Ku","Japan","102-8578","Japan");
INSERT INTO offices VALUES("6","Sydney","+61 2 9264 2451","5-11 Wentworth Avenue","Floor #2","","Australia","NSW 2010","APAC");
INSERT INTO offices VALUES("7","London","+44 20 7877 2041","25 Old Broad Street","Level 7","","UK","EC2N 1HN","EMEA");



DROP TABLE orders;

CREATE TABLE `orders` (
  `orderNumber` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `requiredDate` date NOT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `comments` text,
  `customerNumber` int(11) NOT NULL,
  PRIMARY KEY (`orderNumber`),
  KEY `customerNumber` (`customerNumber`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE payments;

CREATE TABLE `payments` (
  `customerNumber` int(11) NOT NULL,
  `checkNumber` varchar(50) NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`customerNumber`,`checkNumber`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO payments VALUES("103","HQ336336","2004-10-19","6066.78");
INSERT INTO payments VALUES("103","JM555205","2003-06-05","14571.44");
INSERT INTO payments VALUES("103","OM314933","2004-12-18","1676.14");
INSERT INTO payments VALUES("112","BO864823","2004-12-17","14191.12");
INSERT INTO payments VALUES("112","HQ55022","2003-06-06","32641.98");
INSERT INTO payments VALUES("112","ND748579","2004-08-20","33347.88");
INSERT INTO payments VALUES("114","GG31455","2003-05-20","45864.03");
INSERT INTO payments VALUES("114","MA765515","2004-12-15","82261.22");
INSERT INTO payments VALUES("114","NP603840","2003-05-31","7565.08");
INSERT INTO payments VALUES("114","NR27552","2004-03-10","44894.74");
INSERT INTO payments VALUES("119","DB933704","2004-11-14","19501.82");
INSERT INTO payments VALUES("119","LN373447","2004-08-08","47924.19");
INSERT INTO payments VALUES("119","NG94694","2005-02-22","49523.67");
INSERT INTO payments VALUES("121","DB889831","2003-02-16","50218.95");
INSERT INTO payments VALUES("121","FD317790","2003-10-28","1491.38");
INSERT INTO payments VALUES("121","KI831359","2004-11-04","17876.32");
INSERT INTO payments VALUES("121","MA302151","2004-11-28","34638.14");
INSERT INTO payments VALUES("124","AE215433","2005-03-05","101244.59");
INSERT INTO payments VALUES("124","BG255406","2004-08-28","85410.87");
INSERT INTO payments VALUES("124","CQ287967","2003-04-11","11044.30");
INSERT INTO payments VALUES("124","ET64396","2005-04-16","83598.04");
INSERT INTO payments VALUES("124","HI366474","2004-12-27","47142.70");
INSERT INTO payments VALUES("124","HR86578","2004-11-02","55639.66");
INSERT INTO payments VALUES("124","KI131716","2003-08-15","111654.40");
INSERT INTO payments VALUES("124","LF217299","2004-03-26","43369.30");
INSERT INTO payments VALUES("124","NT141748","2003-11-25","45084.38");
INSERT INTO payments VALUES("128","DI925118","2003-01-28","10549.01");
INSERT INTO payments VALUES("128","FA465482","2003-10-18","24101.81");
INSERT INTO payments VALUES("128","FH668230","2004-03-24","33820.62");
INSERT INTO payments VALUES("128","IP383901","2004-11-18","7466.32");
INSERT INTO payments VALUES("129","DM826140","2004-12-08","26248.78");
INSERT INTO payments VALUES("129","ID449593","2003-12-11","23923.93");
INSERT INTO payments VALUES("129","PI42991","2003-04-09","16537.85");
INSERT INTO payments VALUES("131","CL442705","2003-03-12","22292.62");
INSERT INTO payments VALUES("131","MA724562","2004-12-02","50025.35");
INSERT INTO payments VALUES("131","NB445135","2004-09-11","35321.97");
INSERT INTO payments VALUES("141","AU364101","2003-07-19","36251.03");
INSERT INTO payments VALUES("141","DB583216","2004-11-01","36140.38");
INSERT INTO payments VALUES("141","DL460618","2005-05-19","46895.48");
INSERT INTO payments VALUES("141","HJ32686","2004-01-30","59830.55");
INSERT INTO payments VALUES("141","ID10962","2004-12-31","116208.40");
INSERT INTO payments VALUES("141","IN446258","2005-03-25","65071.26");
INSERT INTO payments VALUES("141","JE105477","2005-03-18","120166.58");
INSERT INTO payments VALUES("141","JN355280","2003-10-26","49539.37");
INSERT INTO payments VALUES("141","JN722010","2003-02-25","40206.20");
INSERT INTO payments VALUES("141","KT52578","2003-12-09","63843.55");
INSERT INTO payments VALUES("141","MC46946","2004-07-09","35420.74");
INSERT INTO payments VALUES("141","MF629602","2004-08-16","20009.53");
INSERT INTO payments VALUES("141","NU627706","2004-05-17","26155.91");
INSERT INTO payments VALUES("144","IR846303","2004-12-12","36005.71");
INSERT INTO payments VALUES("144","LA685678","2003-04-09","7674.94");
INSERT INTO payments VALUES("145","CN328545","2004-07-03","4710.73");
INSERT INTO payments VALUES("145","ED39322","2004-04-26","28211.70");
INSERT INTO payments VALUES("145","HR182688","2004-12-01","20564.86");
INSERT INTO payments VALUES("145","JJ246391","2003-02-20","53959.21");
INSERT INTO payments VALUES("146","FP549817","2004-03-18","40978.53");
INSERT INTO payments VALUES("146","FU793410","2004-01-16","49614.72");
INSERT INTO payments VALUES("146","LJ160635","2003-12-10","39712.10");
INSERT INTO payments VALUES("148","BI507030","2003-04-22","44380.15");
INSERT INTO payments VALUES("148","DD635282","2004-08-11","2611.84");
INSERT INTO payments VALUES("148","KM172879","2003-12-26","105743.00");
INSERT INTO payments VALUES("148","ME497970","2005-03-27","3516.04");
INSERT INTO payments VALUES("151","BF686658","2003-12-22","58793.53");
INSERT INTO payments VALUES("151","GB852215","2004-07-26","20314.44");
INSERT INTO payments VALUES("151","IP568906","2003-06-18","58841.35");
INSERT INTO payments VALUES("151","KI884577","2004-12-14","39964.63");
INSERT INTO payments VALUES("157","HI618861","2004-11-19","35152.12");
INSERT INTO payments VALUES("157","NN711988","2004-09-07","63357.13");
INSERT INTO payments VALUES("161","BR352384","2004-11-14","2434.25");
INSERT INTO payments VALUES("161","BR478494","2003-11-18","50743.65");
INSERT INTO payments VALUES("161","KG644125","2005-02-02","12692.19");
INSERT INTO payments VALUES("161","NI908214","2003-08-05","38675.13");
INSERT INTO payments VALUES("166","BQ327613","2004-09-16","38785.48");
INSERT INTO payments VALUES("166","DC979307","2004-07-07","44160.92");
INSERT INTO payments VALUES("166","LA318629","2004-02-28","22474.17");
INSERT INTO payments VALUES("167","ED743615","2004-09-19","12538.01");
INSERT INTO payments VALUES("167","GN228846","2003-12-03","85024.46");
INSERT INTO payments VALUES("171","GB878038","2004-03-15","18997.89");
INSERT INTO payments VALUES("171","IL104425","2003-11-22","42783.81");
INSERT INTO payments VALUES("172","AD832091","2004-09-09","1960.80");
INSERT INTO payments VALUES("172","CE51751","2004-12-04","51209.58");
INSERT INTO payments VALUES("172","EH208589","2003-04-20","33383.14");
INSERT INTO payments VALUES("173","GP545698","2004-05-13","11843.45");
INSERT INTO payments VALUES("173","IG462397","2004-03-29","20355.24");
INSERT INTO payments VALUES("175","CITI3434344","2005-05-19","28500.78");
INSERT INTO payments VALUES("175","IO448913","2003-11-19","24879.08");
INSERT INTO payments VALUES("175","PI15215","2004-07-10","42044.77");
INSERT INTO payments VALUES("177","AU750837","2004-04-17","15183.63");
INSERT INTO payments VALUES("177","CI381435","2004-01-19","47177.59");
INSERT INTO payments VALUES("181","CM564612","2004-04-25","22602.36");
INSERT INTO payments VALUES("181","GQ132144","2003-01-30","5494.78");
INSERT INTO payments VALUES("181","OH367219","2004-11-16","44400.50");
INSERT INTO payments VALUES("186","AE192287","2005-03-10","23602.90");
INSERT INTO payments VALUES("186","AK412714","2003-10-27","37602.48");
INSERT INTO payments VALUES("186","KA602407","2004-10-21","34341.08");
INSERT INTO payments VALUES("187","AM968797","2004-11-03","52825.29");
INSERT INTO payments VALUES("187","BQ39062","2004-12-08","47159.11");
INSERT INTO payments VALUES("187","KL124726","2003-03-27","48425.69");
INSERT INTO payments VALUES("189","BO711618","2004-10-03","17359.53");
INSERT INTO payments VALUES("189","NM916675","2004-03-01","32538.74");
INSERT INTO payments VALUES("198","FI192930","2004-12-06","9658.74");
INSERT INTO payments VALUES("198","HQ920205","2003-07-06","6036.96");
INSERT INTO payments VALUES("198","IS946883","2004-09-21","5858.56");
INSERT INTO payments VALUES("201","DP677013","2003-10-20","23908.24");
INSERT INTO payments VALUES("201","OO846801","2004-06-15","37258.94");
INSERT INTO payments VALUES("202","HI358554","2003-12-18","36527.61");
INSERT INTO payments VALUES("202","IQ627690","2004-11-08","33594.58");
INSERT INTO payments VALUES("204","GC697638","2004-08-13","51152.86");
INSERT INTO payments VALUES("204","IS150005","2004-09-24","4424.40");
INSERT INTO payments VALUES("205","GL756480","2003-12-04","3879.96");
INSERT INTO payments VALUES("205","LL562733","2003-09-05","50342.74");
INSERT INTO payments VALUES("205","NM739638","2005-02-06","39580.60");
INSERT INTO payments VALUES("209","BOAF82044","2005-05-03","35157.75");
INSERT INTO payments VALUES("209","ED520529","2004-06-21","4632.31");
INSERT INTO payments VALUES("209","PH785937","2004-05-04","36069.26");
INSERT INTO payments VALUES("211","BJ535230","2003-12-09","45480.79");
INSERT INTO payments VALUES("216","BG407567","2003-05-09","3101.40");
INSERT INTO payments VALUES("216","ML780814","2004-12-06","24945.21");
INSERT INTO payments VALUES("216","MM342086","2003-12-14","40473.86");
INSERT INTO payments VALUES("219","BN17870","2005-03-02","3452.75");
INSERT INTO payments VALUES("219","BR941480","2003-10-18","4465.85");
INSERT INTO payments VALUES("227","MQ413968","2003-10-31","36164.46");
INSERT INTO payments VALUES("227","NU21326","2004-11-02","53745.34");
INSERT INTO payments VALUES("233","BOFA23232","2005-05-20","29070.38");
INSERT INTO payments VALUES("233","II180006","2004-07-01","22997.45");
INSERT INTO payments VALUES("233","JG981190","2003-11-18","16909.84");
INSERT INTO payments VALUES("239","NQ865547","2004-03-15","80375.24");
INSERT INTO payments VALUES("240","IF245157","2004-11-16","46788.14");
INSERT INTO payments VALUES("240","JO719695","2004-03-28","24995.61");
INSERT INTO payments VALUES("242","AF40894","2003-11-22","33818.34");
INSERT INTO payments VALUES("242","HR224331","2005-06-03","12432.32");
INSERT INTO payments VALUES("242","KI744716","2003-07-21","14232.70");
INSERT INTO payments VALUES("249","IJ399820","2004-09-19","33924.24");
INSERT INTO payments VALUES("249","NE404084","2004-09-04","48298.99");
INSERT INTO payments VALUES("250","EQ12267","2005-05-17","17928.09");
INSERT INTO payments VALUES("250","HD284647","2004-12-30","26311.63");
INSERT INTO payments VALUES("250","HN114306","2003-07-18","23419.47");
INSERT INTO payments VALUES("256","EP227123","2004-02-10","5759.42");
INSERT INTO payments VALUES("256","HE84936","2004-10-22","53116.99");
INSERT INTO payments VALUES("259","EU280955","2004-11-06","61234.67");
INSERT INTO payments VALUES("259","GB361972","2003-12-07","27988.47");
INSERT INTO payments VALUES("260","IO164641","2004-08-30","37527.58");
INSERT INTO payments VALUES("260","NH776924","2004-04-24","29284.42");
INSERT INTO payments VALUES("276","EM979878","2005-02-09","27083.78");
INSERT INTO payments VALUES("276","KM841847","2003-11-13","38547.19");
INSERT INTO payments VALUES("276","LE432182","2003-09-28","41554.73");
INSERT INTO payments VALUES("276","OJ819725","2005-04-30","29848.52");
INSERT INTO payments VALUES("278","BJ483870","2004-12-05","37654.09");
INSERT INTO payments VALUES("278","GP636783","2003-03-02","52151.81");
INSERT INTO payments VALUES("278","NI983021","2003-11-24","37723.79");
INSERT INTO payments VALUES("282","IA793562","2003-08-03","24013.52");
INSERT INTO payments VALUES("282","JT819493","2004-08-02","35806.73");
INSERT INTO payments VALUES("282","OD327378","2005-01-03","31835.36");
INSERT INTO payments VALUES("286","DR578578","2004-10-28","47411.33");
INSERT INTO payments VALUES("286","KH910279","2004-09-05","43134.04");
INSERT INTO payments VALUES("298","AJ574927","2004-03-13","47375.92");
INSERT INTO payments VALUES("298","LF501133","2004-09-18","61402.00");
INSERT INTO payments VALUES("299","AD304085","2003-10-24","36798.88");
INSERT INTO payments VALUES("299","NR157385","2004-09-05","32260.16");
INSERT INTO payments VALUES("311","DG336041","2005-02-15","46770.52");
INSERT INTO payments VALUES("311","FA728475","2003-10-06","32723.04");
INSERT INTO payments VALUES("311","NQ966143","2004-04-25","16212.59");
INSERT INTO payments VALUES("314","LQ244073","2004-08-09","45352.47");
INSERT INTO payments VALUES("314","MD809704","2004-03-03","16901.38");
INSERT INTO payments VALUES("319","HL685576","2004-11-06","42339.76");
INSERT INTO payments VALUES("319","OM548174","2003-12-07","36092.40");
INSERT INTO payments VALUES("320","GJ597719","2005-01-18","8307.28");
INSERT INTO payments VALUES("320","HO576374","2003-08-20","41016.75");
INSERT INTO payments VALUES("320","MU817160","2003-11-24","52548.49");
INSERT INTO payments VALUES("321","DJ15149","2003-11-03","85559.12");
INSERT INTO payments VALUES("321","LA556321","2005-03-15","46781.66");
INSERT INTO payments VALUES("323","AL493079","2005-05-23","75020.13");
INSERT INTO payments VALUES("323","ES347491","2004-06-24","37281.36");
INSERT INTO payments VALUES("323","HG738664","2003-07-05","2880.00");
INSERT INTO payments VALUES("323","PQ803830","2004-12-24","39440.59");
INSERT INTO payments VALUES("324","DQ409197","2004-12-13","13671.82");
INSERT INTO payments VALUES("324","FP443161","2003-07-07","29429.14");
INSERT INTO payments VALUES("324","HB150714","2003-11-23","37455.77");
INSERT INTO payments VALUES("328","EN930356","2004-04-16","7178.66");
INSERT INTO payments VALUES("328","NR631421","2004-05-30","31102.85");
INSERT INTO payments VALUES("333","HL209210","2003-11-15","23936.53");
INSERT INTO payments VALUES("333","JK479662","2003-10-17","9821.32");
INSERT INTO payments VALUES("333","NF959653","2005-03-01","21432.31");
INSERT INTO payments VALUES("334","CS435306","2005-01-27","45785.34");
INSERT INTO payments VALUES("334","HH517378","2003-08-16","29716.86");
INSERT INTO payments VALUES("334","LF737277","2004-05-22","28394.54");
INSERT INTO payments VALUES("339","AP286625","2004-10-24","23333.06");
INSERT INTO payments VALUES("339","DA98827","2003-11-28","34606.28");
INSERT INTO payments VALUES("344","AF246722","2003-11-24","31428.21");
INSERT INTO payments VALUES("344","NJ906924","2004-04-02","15322.93");
INSERT INTO payments VALUES("347","DG700707","2004-01-18","21053.69");
INSERT INTO payments VALUES("347","LG808674","2003-10-24","20452.50");
INSERT INTO payments VALUES("350","BQ602907","2004-12-11","18888.31");
INSERT INTO payments VALUES("350","CI471510","2003-05-25","50824.66");
INSERT INTO payments VALUES("350","OB648482","2005-01-29","1834.56");
INSERT INTO payments VALUES("353","CO351193","2005-01-10","49705.52");
INSERT INTO payments VALUES("353","ED878227","2003-07-21","13920.26");
INSERT INTO payments VALUES("353","GT878649","2003-05-21","16700.47");
INSERT INTO payments VALUES("353","HJ618252","2005-06-09","46656.94");
INSERT INTO payments VALUES("357","AG240323","2003-12-16","20220.04");
INSERT INTO payments VALUES("357","NB291497","2004-05-15","36442.34");
INSERT INTO payments VALUES("362","FP170292","2004-07-11","18473.71");
INSERT INTO payments VALUES("362","OG208861","2004-09-21","15059.76");
INSERT INTO payments VALUES("363","HL575273","2004-11-17","50799.69");
INSERT INTO payments VALUES("363","IS232033","2003-01-16","10223.83");
INSERT INTO payments VALUES("363","PN238558","2003-12-05","55425.77");
INSERT INTO payments VALUES("379","CA762595","2005-02-12","28322.83");
INSERT INTO payments VALUES("379","FR499138","2003-09-16","32680.31");
INSERT INTO payments VALUES("379","GB890854","2004-08-02","12530.51");
INSERT INTO payments VALUES("381","BC726082","2004-12-03","12081.52");
INSERT INTO payments VALUES("381","CC475233","2003-04-19","1627.56");
INSERT INTO payments VALUES("381","GB117430","2005-02-03","14379.90");
INSERT INTO payments VALUES("381","MS154481","2003-08-22","1128.20");
INSERT INTO payments VALUES("382","CC871084","2003-05-12","35826.33");
INSERT INTO payments VALUES("382","CT821147","2004-08-01","6419.84");
INSERT INTO payments VALUES("382","PH29054","2004-11-27","42813.83");
INSERT INTO payments VALUES("385","BN347084","2003-12-02","20644.24");
INSERT INTO payments VALUES("385","CP804873","2004-11-19","15822.84");
INSERT INTO payments VALUES("385","EK785462","2003-03-09","51001.22");
INSERT INTO payments VALUES("386","DO106109","2003-11-18","38524.29");
INSERT INTO payments VALUES("386","HG438769","2004-07-18","51619.02");
INSERT INTO payments VALUES("398","AJ478695","2005-02-14","33967.73");
INSERT INTO payments VALUES("398","DO787644","2004-06-21","22037.91");
INSERT INTO payments VALUES("398","JPMR4544","2005-05-18","615.45");
INSERT INTO payments VALUES("398","KB54275","2004-11-29","48927.64");
INSERT INTO payments VALUES("406","BJMPR4545","2005-04-23","12190.85");
INSERT INTO payments VALUES("406","HJ217687","2004-01-28","49165.16");
INSERT INTO payments VALUES("406","NA197101","2004-06-17","25080.96");
INSERT INTO payments VALUES("412","GH197075","2004-07-25","35034.57");
INSERT INTO payments VALUES("412","PJ434867","2004-04-14","31670.37");
INSERT INTO payments VALUES("415","ER54537","2004-09-28","31310.09");
INSERT INTO payments VALUES("424","KF480160","2004-12-07","25505.98");
INSERT INTO payments VALUES("424","LM271923","2003-04-16","21665.98");
INSERT INTO payments VALUES("424","OA595449","2003-10-31","22042.37");
INSERT INTO payments VALUES("447","AO757239","2003-09-15","6631.36");
INSERT INTO payments VALUES("447","ER615123","2003-06-25","17032.29");
INSERT INTO payments VALUES("447","OU516561","2004-12-17","26304.13");
INSERT INTO payments VALUES("448","FS299615","2005-04-18","27966.54");
INSERT INTO payments VALUES("448","KR822727","2004-09-30","48809.90");
INSERT INTO payments VALUES("450","EF485824","2004-06-21","59551.38");
INSERT INTO payments VALUES("452","ED473873","2003-11-15","27121.90");
INSERT INTO payments VALUES("452","FN640986","2003-11-20","15130.97");
INSERT INTO payments VALUES("452","HG635467","2005-05-03","8807.12");
INSERT INTO payments VALUES("455","HA777606","2003-12-05","38139.18");
INSERT INTO payments VALUES("455","IR662429","2004-05-12","32239.47");
INSERT INTO payments VALUES("456","GJ715659","2004-11-13","27550.51");
INSERT INTO payments VALUES("456","MO743231","2004-04-30","1679.92");
INSERT INTO payments VALUES("458","DD995006","2004-11-15","33145.56");
INSERT INTO payments VALUES("458","NA377824","2004-02-06","22162.61");
INSERT INTO payments VALUES("458","OO606861","2003-06-13","57131.92");
INSERT INTO payments VALUES("462","ED203908","2005-04-15","30293.77");
INSERT INTO payments VALUES("462","GC60330","2003-11-08","9977.85");
INSERT INTO payments VALUES("462","PE176846","2004-11-27","48355.87");
INSERT INTO payments VALUES("471","AB661578","2004-07-28","9415.13");
INSERT INTO payments VALUES("471","CO645196","2003-12-10","35505.63");
INSERT INTO payments VALUES("473","LL427009","2004-02-17","7612.06");
INSERT INTO payments VALUES("473","PC688499","2003-10-27","17746.26");
INSERT INTO payments VALUES("475","JP113227","2003-12-09","7678.25");
INSERT INTO payments VALUES("475","PB951268","2004-02-13","36070.47");
INSERT INTO payments VALUES("484","GK294076","2004-10-26","3474.66");
INSERT INTO payments VALUES("484","JH546765","2003-11-29","47513.19");
INSERT INTO payments VALUES("486","BL66528","2004-04-14","5899.38");
INSERT INTO payments VALUES("486","HS86661","2004-11-23","45994.07");
INSERT INTO payments VALUES("486","JB117768","2003-03-20","25833.14");
INSERT INTO payments VALUES("487","AH612904","2003-09-28","29997.09");
INSERT INTO payments VALUES("487","PT550181","2004-02-29","12573.28");
INSERT INTO payments VALUES("489","OC773849","2003-12-04","22275.73");
INSERT INTO payments VALUES("489","PO860906","2004-01-31","7310.42");
INSERT INTO payments VALUES("495","BH167026","2003-12-26","59265.14");
INSERT INTO payments VALUES("495","FN155234","2004-05-14","6276.60");
INSERT INTO payments VALUES("496","EU531600","2005-05-25","30253.75");
INSERT INTO payments VALUES("496","MB342426","2003-07-16","32077.44");
INSERT INTO payments VALUES("496","MN89921","2004-12-31","52166.00");



DROP TABLE productlines;

CREATE TABLE `productlines` (
  `productLine` varchar(50) NOT NULL,
  `textDescription` varchar(4000) DEFAULT NULL,
  `htmlDescription` mediumtext,
  `image` mediumblob,
  PRIMARY KEY (`productLine`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO productlines VALUES("Classic Cars","Attention car enthusiasts: Make your wildest car ownership dreams come true. Whether you are looking for classic muscle cars, dream sports cars or movie-inspired miniatures, you will find great choices in this category. These replicas feature superb attention to detail and craftsmanship and offer features such as working steering system, opening forward compartment, opening rear trunk with removable spare wheel, 4-wheel independent spring suspension, and so on. The models range in size from 1:10 to 1:24 scale and include numerous limited edition and several out-of-production vehicles. All models include a certificate of authenticity from their manufacturers and come fully assembled and ready for display in the home or office.","","");
INSERT INTO productlines VALUES("Motorcycles","Our motorcycles are state of the art replicas of classic as well as contemporary motorcycle legends such as Harley Davidson, Ducati and Vespa. Models contain stunning details such as official logos, rotating wheels, working kickstand, front suspension, gear-shift lever, footbrake lever, and drive chain. Materials used include diecast and plastic. The models range in size from 1:10 to 1:50 scale and include numerous limited edition and several out-of-production vehicles. All models come fully assembled and ready for display in the home or office. Most include a certificate of authenticity.","","");
INSERT INTO productlines VALUES("Planes","Unique, diecast airplane and helicopter replicas suitable for collections, as well as home, office or classroom decorations. Models contain stunning details such as official logos and insignias, rotating jet engines and propellers, retractable wheels, and so on. Most come fully assembled and with a certificate of authenticity from their manufacturers.","","");
INSERT INTO productlines VALUES("Ships","The perfect holiday or anniversary gift for executives, clients, friends, and family. These handcrafted model ships are unique, stunning works of art that will be treasured for generations! They come fully assembled and ready for display in the home or office. We guarantee the highest quality, and best value.","","");
INSERT INTO productlines VALUES("Trains","Model trains are a rewarding hobby for enthusiasts of all ages. Whether you\'re looking for collectible wooden trains, electric streetcars or locomotives, you\'ll find a number of great choices for any budget within this category. The interactive aspect of trains makes toy trains perfect for young children. The wooden train sets are ideal for children under the age of 5.","","");
INSERT INTO productlines VALUES("Trucks and Buses","The Truck and Bus models are realistic replicas of buses and specialized trucks produced from the early 1920s to present. The models range in size from 1:12 to 1:50 scale and include numerous limited edition and several out-of-production vehicles. Materials used include tin, diecast and plastic. All models include a certificate of authenticity from their manufacturers and are a perfect ornament for the home and office.","","");
INSERT INTO productlines VALUES("Vintage Cars","Our Vintage Car models realistically portray automobiles produced from the early 1900s through the 1940s. Materials used include Bakelite, diecast, plastic and wood. Most of the replicas are in the 1:18 and 1:24 scale sizes, which provide the optimum in detail and accuracy. Prices range from $30.00 up to $180.00 for some special limited edition replicas. All models include a certificate of authenticity from their manufacturers and come fully assembled and ready for display in the home or office.","","");



DROP TABLE products;

CREATE TABLE `products` (
  `productCode` varchar(15) NOT NULL,
  `productName` varchar(70) NOT NULL,
  `productLine` varchar(50) NOT NULL,
  `productScale` varchar(10) NOT NULL,
  `productVendor` varchar(50) NOT NULL,
  `productDescription` text NOT NULL,
  `quantityInStock` smallint(6) NOT NULL,
  `buyPrice` decimal(10,2) NOT NULL,
  `MSRP` decimal(10,2) NOT NULL,
  PRIMARY KEY (`productCode`),
  KEY `productLine` (`productLine`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`productLine`) REFERENCES `productlines` (`productLine`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




