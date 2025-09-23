create table if not exists MusicalGenre (
genre_id SERIAL primary key,
genre_name VARCHAR(60) not null
);
create table if not exists Performer (
performer_id SERIAL primary key,
performer_name VARCHAR(60) not null
);
create table if not exists Album (
album_id SERIAL primary key,
album_name VARCHAR(60) unique not null,
year_created numeric constraint creation_date check (year_created > 1950)
);
create table if not exists Collection (
collection_id SERIAL primary key,
name VARCHAR(60) not null,
year_created numeric constraint creation_date check (year_created > 1950)
);
create table if not exists Track (
track_id SERIAL primary key,
track_name VARCHAR(60) not null,
duration integer constraint duration_time check (duration > 60),
album_id integer references Album(album_id)
);
create table if not exists PerformerGenre (
genre_id integer references MusicalGenre(genre_id),
performer_id integer references Performer(performer_id),
constraint pk primary key (genre_id, performer_id)
);
create table if not exists AlbumPerformer (
album_id integer references Album(album_id),
performer_id integer references Performer(performer_id),
constraint pk2 primary key (album_id, performer_id)
);
create table if not exists TrackCollection (
track_id integer references Track(track_id),
collection_id integer references Collection(collection_id),
constraint pk3 primary key (track_id, collection_id)
);