DROP DATABASE IF EXISTS football_website;
CREATE DATABASE football_website CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `football_website` . `championnat`
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    logo VARCHAR(255) NOT NULL DEFAULT "placeholder.png",
    presentation TEXT NOT NULL,
    indice_uefa INT(11) NOT NULL,
    pays VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `football_website` . `equipe`
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    logo VARCHAR(255) NOT NULL DEFAULT "placeholder.png",
    presentation TEXT NOT NULL,
    pays VARCHAR(255) NOT NULL,
    championnat_id INT(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS `football_website` . `joueur`
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    prenom VARCHAR(255) NOT NULL,
    nom VARCHAR(255) NOT NULL,
    date_naissance DATETIME NOT NULL,
    age INT(11) NOT NULL,
    nationalite VARCHAR(255) NOT NULL,
    presentation TEXT NOT NULL,
    photo VARCHAR(255) NOT NULL DEFAULT "placeholder.png",
    equipe_id INT(11) NOT NULL
);


INSERT INTO `football_website` . `championnat` (nom, logo, presentation, indice_uefa, pays)

    VALUES
    (
    'ligue1',
    'ligue1.png',
    "Le Championnat de France de football, appelé Ligue 1 (ou Ligue 1 Uber Eats pour des raisons de sponsoring avec Uber EatsNote 3) est le championnat professionnel de football masculin de plus haut niveau de la Fédération française de football. Il regroupe les meilleurs clubs de France et de Monaco. Créé en 1932 sous le nom « Division nationale », il devient en 1972 « Division 1 » (D1) et reçoit en 2002 son nom actuel de « Ligue 1 » (L1). Organisé annuellement, de l'été au printemps suivant, par la Ligue de football professionnel, il oppose actuellement vingt clubs sur 38 journées (aller et retour) diffusées à la télévision par Canal+1 depuis 1984, et sur Prime Video depuis 2021. La première affiche diffusée sur cette chaîne a été un match entre le FC Nantes et l'AS Monaco.",
    5,
    'france'
    ),
    (
    'bundesliga',
    'bundesliga.png',
     "Le Championnat d'Allemagne de football est créé en 1903. Jusqu'en 1963, le statut des clubs est amateur et le championnat national consiste en une phase finale entre les différents champions régionaux. Le championnat professionnel à poule unique, la Bundesliga, est créé en 1963. Le Bayern Munich, vainqueur en 2021-2022, détient le record du nombre de victoires, avec 32 titres.",
     4,
     "allemagne"
     ),
     (
    'liga',
    'liga.png',
     "Le championnat d'Espagne de l'élite est la Primera División entre 1929 et 2008 puis Liga BBVA de 2008 à 2016 et LaLiga Santander depuis 2016. Dans le langage courant, le terme de « Liga » est souvent utilisé pour désigner la compétition, bien que liga signifie simplement « ligue » en espagnol. L'antichambre de cette division est le championnat d'Espagne de football de deuxième division. Le Real Madrid a remporté l'édition 2021-2022, portant son nombre de titre à 351.",
     2,
     "espagne"
     ),
     (
    'premier league',
    'premier_league.png',
     "Le championnat d'Angleterre de football est la plus importante compétition de football en Angleterre. Lancée en 1888 par la Football Association sous le nom de « Football League », la compétition laisse place en 1992 à la Premier League, transformée en Barclays Premier League de 2004 à 2016 avant de reprendre son appellation précédente.",
     1,
     "angleterre"
     ),
     (
    'serie a',
    'seriea.png',
     "Le Championnat d'Italie de football, dénommé Serie A est une compétition de football qui représente en Italie le sommet de la hiérarchie du football. La seconde division italienne est la Serie B. Ce championnat regroupe les vingt meilleures équipes italiennes. Elles se rencontrent chacune à deux reprises (un match à domicile et un match à l'extérieur). À la fin de la saison, les trois équipes totalisant le plus faible nombre de points sont reléguées (elles sont départagées à la différence de buts en cas d'égalité). Quant aux quatre premières, elles sont directement qualifiées pour la Ligue des champions. L'équipe en cinquième position est elle en Ligue Europa ainsi que le vainqueur de la Coupe d'Italie (s'il ne dispute pas la Ligue des Champions) et celle en 6e position sera au deuxième tour de qualification).",
     3,
     "italie"
     );

INSERT INTO `football_website` . `equipe` (nom, logo, presentation, pays, championnat_id)
    VALUES

    (
        "atletico madrid", 
        "atletico.png",
        "Le Club Atlético de Madrid S.A.D, plus couramment appelé Atlético de Madrid, Atlético ou Atleti, est un club de football espagnol basé à Madrid, qui dispute actuellement la Liga.Au niveau national, l’Atlético est sacré champion d’Espagne à onze reprises et a remporté dix Coupes du Roi, dont un doublé coupe-championnat en 1996. Au niveau européen, le club gagne la Coupe d'Europe des vainqueurs de coupe4 en 1962, la Coupe intercontinentale en 1975 et la Ligue Europa à trois reprises en 20105, en 2012 et en 2018, et trois éditions de la Supercoupe d'Europe en 2010, 2012 et 2018. Il atteint également la finale de la Ligue des champions de l'UEFA en 1974 , en 2014 et en 2016.",
        "espagne",
        3
    ),
    (
        "barcelone", 
        "barcelone.png",
        "Le Futbol Club Barcelona, communément appelé FC Barcelone (diminutif Barça), est un club de football espagnol fondé en 1899, basé à Barcelone, capitale de la Catalogne, et qui évolue dans le championnat d'Espagne. C'est la section football du club omnisports de même nom. Il a remporté au total vingt-six championnats, trente-et-une coupes d'Espagne, cinq Ligues des champions, quatre coupes des vainqueurs de coupe, trois coupes des villes de foires et trois coupes du monde des clubs.",
        "espagne",
        3
    ),
    (
        "bayern munich", 
        "bayern.png",
        "Le Bayern Munich (Fußball-Club Bayern München e.V.) est un club omnisports allemand fondé le 27 février 1900 et basé à Munich, en Bavière. L'équipe joue depuis 1965 en Bundesliga et est surnommée Rekordmeister (en français : « Détenteur du record de titres »)3, il est le club européen le plus titré du 21e siècle (2e au monde).",
        "allemagne",
        2
    ),
    (
        "chelsea", 
        "chelsea.png",
        "Chelsea Football Club (CFC) est un club de football professionnel anglais fondé le 10 mars 1905 à Londres. Son siège est situé dans le quartier de Fulham, au sein du borough de Hammersmith et Fulham, dans le sud-ouest de la capitale britannique. Il évolue actuellement en Premier League et a passé la majorité de son histoire dans la plus haute division du football anglais. Leur stade est Stamford Bridge, qui comprend 40 341 places6,7, et où le club évolue depuis sa fondation.",
        "angleterre",
        4
    ),
    (
        "manchester city", 
        "city.png",
        "Le Manchester City Football Club est un club de football anglais basé à Manchester et fondé en 1880 sous le nom de St. Mark's (West Gorton). Le club devint le Ardwick Association Football Club en 1887 avant de prendre son nom actuel en 1894. Surnommée City, The Citizens, ou encore, The Sky Blues (Les Bleu Ciel), l'équipe professionnelle évolue depuis 2003 à l'Etihad Stadium. Le derby mancunien l’oppose à l’autre grand club de la ville, Manchester United. Depuis le 1er juillet 2016, le club est entraîné par Pep Guardiola.",
        "angleterre",
        4
    ),
    (
        "borussia dortmund", 
        "dortmund.png",
        "Le BV Borussia 09 Dortmund, communément appelé Borussia Dortmund ou BVB, est un club de football allemand fondé le 19 décembre 1909 et basé à Dortmund. Le nom complet du club Ballspiel-Verein Borussia signifie en allemand ""association de jeu de balle Borussia"". Si sa section football est la plus célèbre, le BVB comprend aussi des équipes de handball3 et de tennis de table4. Bien que ""Borussia"" soit le nom latin de la Prusse, c'est au nom d'une brasserie locale qu'il était fait référence5. Le club évolue en 1. Bundesliga, la première division du football allemand.",
        "allemagne",
        2
    ),
    (
        "liverpool", 
        "liverpool.png",
        "Le Liverpool Football Club est un club de football anglais fondé le 13 août 1892 et basé à Liverpool, dans le Nord-Ouest de l'Angleterre. Ses joueurs (les « Reds ») évoluent depuis sa création au stade d'Anfield. Son emblème est le « Liver bird », un oiseau mythique, mi-cormoran mi-aigle. Le chant You'll Never Walk Alone, l'hymne et la devise du club, est mondialement connu. Le Liverpool FC possède l'un des plus beaux palmarès européens avec six Ligues des champions, trois Coupes de l'UEFA, quatre Supercoupes de l'UEFA, et une coupe du monde des clubs, et l'un des plus grands palmarès anglais avec dix-neuf championnats d'Angleterre, huit Coupes d'Angleterre, neuf Coupes de la Ligue et seize Community Shield.",
        "angleterre",
        4
    ),
    (
        "milan ac", 
        "milan.png",
        "L'Associazione Calcio Milan (association de football de Milan), connu sous le nom d'AC Milan5, est un club de football italien fondé le 16 décembre 1899 sous le nom initial de Milan Foot-Ball and Cricket Club6. L'équipe première, qui évolue en Serie A, est entraînée par Stefano Pioli. Le club possède également une section féminine évoluant en Série A.",
        "italie",
        5
    ),
    (
        "olympique lyonnais", 
        "ol.png",
        "L'Olympique lyonnais (OL) est un club de football français fondé en 1950 à Lyon. Le club, basé au Parc Olympique lyonnais à Décines-Charpieu, est présidé depuis juin 1987 par Jean-Michel Aulas.L'équipe masculine évolue depuis 1989 en Ligue 1 et est entraînée depuis mai 2021 par Peter Bosz. Le club possède également une section féminine évoluant en Division 1 et entraînée par Sonia Bompastor.",
        "france",
        1
    ),
    (
        "olympique de marseille", 
        "om.png",
        "L'Olympique de Marseille (OM) est un club de football français fondé en 1899 à Marseille par René Dufaure de Montmirail. Le club marseillais joue au stade de l'Huveaune de 1904 à 1937, date à laquelle est inauguré le stade Vélodrome. Auparavant, le club remporte sa première Coupe de France en 1924 et devient le tout premier club provincial à s'adjuger ce titre. L'OM est l'un des clubs qui a joué durant la saison inaugurale 1932-1933 et qui évolue encore en Ligue 1 aujourd'hui. Après un premier titre de champion de France en 1929, dans une compétition aujourd'hui disparue, le club phocéen remporte son premier championnat professionnel en 1937.",
        "france",
        1
    ),
    (
        "paris saint germain", 
        "psg.png",
        "Le Paris Saint-Germain Football Club, couramment abrégé en Paris Saint-Germain FC, Paris Saint-Germain, Paris SG, ou PSG, est un club de football français, basé à Saint-Germain-en-Laye et à Paris. C'est la section football du Paris Saint-Germain omnisports. Présent depuis la saison 1974-1975, le club s'entraîne au Camp des Loges à Saint-Germain-en-Laye et joue au Parc des Princes à Paris.",
        "france",
        1
    ),
    (
        "real madrid", 
        "real.png",
        "Le Real Madrid Club de Fútbol, plus connu sous le nom de Real Madrid ou simplement Real, est un club professionnel espagnol de football, basé à Madrid. Vainqueur de très nombreux titres nationaux et internationaux, il a reçu de la Fédération internationale de football association (FIFA) le titre honorifique de plus grand club du xxe siècle.",
        "espagne",
        3
    ),
    (
        "manchester united", 
        "united.png",
        "Le Manchester United Football Club est un club de football anglais basé dans le district de Trafford, à proximité de la ville de Manchester. Fondé en 1878 sous le nom de Newton Heath, Manchester United évolue à Old Trafford, son stade historique, qui tire son surnom de « Théâtre des rêves » des exploits réalisés au fil des années par le club mancunien.",
        "angleterre",
        4
    );



INSERT INTO `football_website` . `joueur` (prenom, nom, date_naissance, age, nationalite, presentation, photo, equipe_id)
    VALUES
    (
        "karim",
        "benzema",
        "1987-12-19",
        34,
        "français",
        "Karim Benzema, surnommé KB9 ou El Nueve en Espagne, né le 19 décembre 1987 à Lyon, est un footballeur international français évoluant au poste d'avant-centre au Real  Madrid.Natif de Lyon, il intègre le centre de formation de l'Olympique lyonnais à l'âge de dix ans et signe son premier contrat professionnel en 2005.",
        "benzema.png",
        12
    ),
    (
        "maxence",
        "caqueret",
        "2000-02-15",
        22,
        "français",
        "Maxence Caqueret, né le 15 février 2000 à Vénissieux, est un footballeur français qui évolue au poste de milieu de terrain à l'Olympique lyonnais.",
        "caqueret.png",
        9
    ),
    (
        "rúben",
        "dias",
        "1997-05-14",
        25,
        "portugais",
        "Rúben Dias, de son nom complet Rúben Santos Gato Alves Dias, né le 14 mai 1997 à Amadora au Portugal, est un footballeur international portugais, évoluant actuellement à Manchester City au poste de défenseur central.",
        "dias.png",
        5
    ),
    (
        "joão",
        "félix",
        "1999-11-10",
        22,
        "portugais",
        "João Félix Sequeira, né le 10 novembre 1999 à Viseu (Portugal), est un footballeur international portugais qui évolue au poste de milieu offensif ou d'attaquant de soutien au sein de l'Atlético de Madrid. Il est considéré, depuis son éclosion au Benfica Lisbonne au cours de la saison 2018-2019, comme un grand espoir du football mondial.",
        "felix.png",
        1
    ),
    (
        "pablo martín páez",
        "gavi",
        "2004-08-05",
        18,
        "espagnol",
        "Pablo Martín Páez Gavira, dit Gavi, né le 5 août 2004 à Los Palacios y Villafranca (province de Séville, Espagne), est un footballeur international espagnol qui évolue actuellement au poste de milieu de terrain au FC Barcelone.",
        "gavi.png",
        2
    ),
    (
        "antoine",
        "griezmann",
        "1991-03-21",
        31,
        "français",
        "Antoine Griezmann, né le 21 mars 1991 à Mâcon, est un footballeur international français évoluant au poste d'attaquant ou milieu offensif à l'Atlético de Madrid, en prêt du FC Barcelone. Recruté par la Real Sociedad à l'âge de quatorze ans, il fait ses débuts dans le championnat d'Espagne en 2009-2010. Il est ensuite recruté par l'Atlético de Madrid et devient un des plus brillants acteurs de la Liga dont il sera désigné meilleur joueur du championnat en 2016.",
        "griezmann.png",
        1
    ),
    (
        "erling",
        "haaland",
        "2000-07-21",
        22,
        "norvégien",
        "Erling Braut Haaland, né le 21 juillet 2000 à Leeds dans le Yorkshire de l'Ouest, en Angleterre, est un footballeur international norvégien, évoluant au poste d'attaquant à Manchester City. Fils du footballeur Alf-Inge Håland, Erling Håland est formé au Bryne FK, avec qui il fait ses débuts professionnels en 2016. Lors de la saison suivante, il rejoint le Molde FK où, après une année d'adaptation, il découvre la Ligue Europa. En janvier 2019, il rejoint le club autrichien du RB Salzbourg.",
        "haaland.png",
        5
    ),
    (
        "pierre",
        "kalulu",
        "2000-06-05",
        22,
        "français",
        "Pierre Kalulu, né le 5 juin 2000 à Lyon, est un footballeur français d'origine congolaise (RDC). Pouvant évoluer au poste de défenseur central ou d'arrière droit, il joue à l'AC Milan depuis 2020.",
        "kalulu.png",
        8
    ),
    (
        "joshua",
        "kimmich",
        "1995-02-08",
        27,
        "allemand",
        "Joshua Kimmich, né le 8 février 1995 à Rottweil en Allemagne, est un footballeur international allemand qui évolue au poste de milieu de terrain ou de défenseur latéral au Bayern Munich.",
        "kimmich.png",
        3
    ),
    (
        "kylian",
        "mbappé",
        "1998-12-20",
        23,
        "français",
        "Kylian Mbappé, né le 20 décembre 1998 à Paris, est un footballeur international français qui évolue au poste d'attaquant au Paris Saint-Germain, en Ligue 1. Vainqueur du championnat de France en 2017 avec l'AS Monaco, il est transféré au Paris Saint-Germain le 31 août 2017. Le soir même, il marque son premier but en équipe de France.",
        "mbappe.png",
        11
    ),
    (
        "edouard",
        "mendy",
        "1992-03-01",
        30,
        "français",
        "Édouard Mendy, né le 1er mars 1992 à Montivilliers en France, est un footballeur international sénégalais qui évolue au poste de gardien de but au Chelsea FC.",
        "mendy.png",
        4
    ),
    (
        "luka",
        "modric",
        "1985-09-09",
        36,
        "croate",
        "Luka Modrić, né le 9 septembre 1985 à Zadar en Yougoslavie (aujourd'hui en Croatie), est un footballeur international croate. Il évolue au poste de milieu de terrain au Real Madrid. Il est, avec Davor Šuker et Bernard Vukas, considéré comme l'un des plus grands joueurs croates de l'histoire.",
        "modric.png",
        12
    ),
    (
        "dimitri",
        "payet",
        "1987-03-29",
        35,
        "français",
        "Dimitri Payet, né le 29 mars 1987 à Saint-Pierre sur l'île de La Réunion, est un footballeur international français qui évolue au poste de milieu offensif à l'Olympique de Marseille.",
        "payet.png",
        10
    ),
    (
        "Gerard",
        "piqué",
        "1987-02-02",
        35,
        "espagnol",
        "Gerard Piqué Bernabéu, né le 2 février 1987 à Barcelone (Catalogne, Espagne), est un footballeur international espagnol. Il évolue au sein du FC Barcelone à partir de 2008 au poste de défenseur central. Il débute avec l'équipe d'Espagne en 2009.",
        "pique.png",
        2
    ),
    (
        "marco",
        "reus",
        "1989-05-31",
        33,
        "allemand",
        "Marco Reus, né le 31 mai 1989 à Dortmund (Allemagne), est un footballeur international allemand. Il évolue au poste de milieu offensif, d'attaquant et d'ailier au Borussia Dortmund.",
        "reus.png",
        6
    ),
    (
        "cristiano",
        "ronaldo",
        "1985-02-25",
        37,
        "portugais",
        "Cristiano Ronaldo dos Santos Aveiro, couramment appelé Cristiano Ronaldo ou Ronaldo et surnommé CR7, né le 5 février 1985 à Funchal, est un footballeur international portugais qui évolue au poste d'attaquant à Manchester United.",
        "ronaldo.png",
        13
    ),
    (
        "fikayo",
        "tomori",
        "1997-12-19",
        24,
        "anglais",
        "Oluwafikayomi Oluwadamilola « Fikayo » Tomori, né le 19 décembre 1997 à Calgary (Canada), est un footballeur international anglais qui évolue au poste de défenseur à l'AC Milan.",
        "tomori.png",
        13
    ),
    (
        "virgil",
        "van dijk",
        "1991-07-08",
        31,
        "néerlandais",
        "Virgil van Dijk, né le 8 juillet 1991 à Bréda aux Pays-Bas, est un footballeur international néerlandais qui évolue au poste de défenseur central au Liverpool FC.",
        "vandijk.png",
        7
    )