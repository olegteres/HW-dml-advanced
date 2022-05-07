create table if not exists genre (
	id serial primary key,
	name varchar(40) not null
);

create table if not exists singer (
	id serial primary key,
	name varchar(40) not null,
	genre_id integer references genre(id)
);

create table if not exists album (
	id serial primary key,
	name varchar(40) not null,
	release_year integer,
	singer_id integer references singer(id)
);

create table if not exists collection (
	id serial primary key,
	name varchar(40) not null,
	release_year integer
);

create table if not exists track (
	id serial primary key,
	name varchar(40) not null,
	length_seconds integer,
	collection_id integer references collection(id),
	album_id integer not null references album(id)
);

create table if not exists genre_singer (
	genre_id integer references genre(id),
	singer_id integer references singer(id),
	constraint genre_singer_pk primary key (genre_id, singer_id)
);

create table if not exists singer_album (
	album_id integer references album(id),
	singer_id integer references singer(id),
	constraint singer_album_pk primary key (singer_id, album_id)
);
	
create table if not exists collection_track (
	collection_id integer references collection(id),
	track_id integer references track(id),
	constraint collection_track_pk primary key (collection_id, track_id)
);