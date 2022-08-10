INSERT INTO public.albums (album_id,album_name,release_year) VALUES
	 (10,'Группа крови',1988),
	 (11,'Ночь',1986),
	 (20,'Речной трамвайчик',2001),
	 (30,'Mamma',1984),
	 (31,'Passione',1985),
	 (40,'La Boheme',1966),
	 (41,'Duos',2008),
	 (50,'Атланты',1987),
	 (60,'Жить в кайф',2013),
	 (70,'Hardwired',2016),
	 (80,'Проклятье морей',2019);

INSERT INTO public.collections (collection_name,collection_year) VALUES
	 ('Рок_1',1986),
	 ('Рок_2',1988),
	 ('Хард_рок_1',2016),
	 ('Хард_рок_2',2019),
	 ('Барды',2008),
	 ('Опера',1985),
	 ('Современная_музыка',2013),
	 ('Поп_1',2001);

INSERT INTO public.collectionstracks (collection_id,track_id) VALUES
	 (1,111),
	 (2,101),
	 (2,111),
	 (3,702),
	 (4,703),
	 (4,801),
	 (4,802),
	 (5,401),
	 (5,411),
	 (5,501),
	 (6,301),
	 (6,302),
	 (7,601),
	 (8,201),
	 (8,202);

INSERT INTO public.genres (genre_id,genre_name) VALUES
	 (5,'Хард-рок'),
	 (0,'Советский рок'),
	 (1,'Советский поп'),
	 (2,'Опера'),
	 (3,'Барды'),
	 (4,'Современная музыка');

INSERT INTO public.singers (singer_id,singer_name) VALUES
	 (2,'Пугачева Алла Bor'),
	 (1,'Цой'),
	 (4,'Азнавур'),
	 (5,'Городницкий'),
	 (6,'Корж'),
	 (7,'Металлика'),
	 (8,'Ария'),
	 (3,'Паваротти Лучано');

INSERT INTO public.singersalbums (singer_id,album_id) VALUES
	 (1,10),
	 (1,11),
	 (2,20),
	 (3,30),
	 (3,31),
	 (4,40),
	 (4,41),
	 (5,50),
	 (6,60),
	 (7,70),
	 (8,80);

INSERT INTO public.singersgenres (singer_id,genre_id) VALUES
	 (1,0),
	 (2,1),
	 (3,2),
	 (4,3),
	 (5,3),
	 (6,4),
	 (7,5),
	 (8,5),
	 (1,5);

INSERT INTO public.tracks (track_id,track_name,track_duration,album_id) VALUES
	 (202,'Миллениум',3,20),
	 (411,'Toi et moi',3,40),
	 (702,'Hardwired',3,70),
	 (301,'Passione',3,30),
	 (401,'Reste',1,40),
	 (801,'Варяг',6,80),
	 (802,'Трудно быть богом',6.4,80),
	 (101,'Группа крови',4.5,10),
	 (111,'Видели ночь',3.6,11),
	 (302,'Mamma',3.2,30),
	 (601,'Здровый сон',5.9,60),
	 (703,'Helpless',4.7,70),
	 (201,'Ухожу',4.1,20),
	 (501,'Снег',3.9,50),
	 (701,'Dream no my',6.1,70),
	 (704,'Nothing else matters',5,70);

