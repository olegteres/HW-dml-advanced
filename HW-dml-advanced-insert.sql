insert into genre(id, name)
	values
	(default, 'Pop'),
	(default, 'Rock'),
	(default, 'Rap'),
	(default, 'Disco'),
	(default, 'Classic');
	
insert into singer(id, name, genre_id)
	values
	(default, 'Elvis Presley', 1),
	(default, 'Philipp Kirkorov', 1),
	(default, 'Led Zeppelin', 2),
	(default, 'Aerosmith', 2),
	(default, 'Eminem', 3),
	(default, 'Snoop Dog', 3),
	(default, 'ABBA', 4),
	(default, 'Bee Gees', 4),
	(default, 'Ludwig van Beethoven', 5),
	(default, 'Frederic Chopin', 5);
	
insert into album(id, name, release_year, singer_id)
	values
	(default, 'Love Me Baby', 2017, 1),
	(default, 'Mood Is Black', 2017, 2),
	(default, 'Whole Lotta Love', 2018, 3),
	(default, 'Dream On', 2018, 4),
	(default, 'Recovery', 2018, 5),
	(default, 'Shake Your Ass', 2019, 6),
	(default, 'Dansing Queen', 2019, 7),
	(default, 'Staying Alive', 2020, 8),
	(default, 'Symphony ?2', 2020, 9),
	(default, 'Four seasons', 2020, 10);
	
insert into collection (id, name, release_year)
	values
	(default, 'Best Of Elvis Presley', 2017),
	(default, 'Best Of Philipp Kirkorov', 2018),
	(default, 'Best Of Led Zeppelin', 2018),
	(default, 'Best Of Aerosmith', 2019),
	(default, 'Best Of ABBA', 2020),
	(default, 'Best Of Bee Gees', 2020),
	(default, 'Best Of Ludwig van Beethoven', 2021),
	(default, 'Best Of Frederic Chopin', 2021);

insert into track (id, name, length_seconds, collection_id, album_id)
	values
	(default, 'My Way', 215, 1, 1),
	(default, 'My Love', 193, 2, 2),
	(default, 'Immigrant Song', 230, 3, 3),
	(default, 'Crazy', 194, 4, 4),
	(default, 'My Big Friend', 223, null, 5),
	(default, 'Smoking Weed', 202, null, 6),
	(default, 'Money Money Money', 280, 5, 7),
	(default, 'How Deep Is Your Love', 187, 6, 8),
	(default, 'Moonlight Sonata', 237, 7, 9),
	(default, 'Nocturne', 218, 8, 10),
	(default, 'My Jailhouse Rock', 208, 1, 1),
	(default, 'Stairway To Heaven', 211, 3, 3),
	(default, 'Lose Yourself', 184, null, 5),
	(default, 'Gimme Gimme Gimme', 262, 5, 7),
	(default, 'My Polonaise', 191, 8, 10);

insert into genre_singer (genre_singer_pk, genre_id, singer_id)
	values
	(default, 1, 1),
	(default, 1, 2),
	(default, 2, 1),
	(default, 2, 2),
	(default, 3, 1),
	(default, 3, 2),
	(default, 4, 1),
	(default, 4, 2),
	(default, 5, 1),
	(default, 5, 2);

insert into singer_album (singer_album_pk, singer_id, album_id)
	values
	(default, 1, 1),
	(default, 2, 2),
	(default, 3, 3),
	(default, 4, 4),
	(default, 5, 5),
	(default, 6, 6),
	(default, 7, 7),
	(default, 8, 8),
	(default, 9, 9),
	(default, 10, 10);
	
insert into collection_track (collection_track_pk, collection_id, track_id)
	values
	(default, 1, 1),
	(default, 2, 2),
	(default, 3, 3),
	(default, 4, 4),
	(default, 5, 7),
	(default, 6, 8),
	(default, 7, 9),
	(default, 8, 10),
	(default, 1, 11),
	(default, 3, 12),
	(default, 5, 14),
	(default, 8, 15);