-- Название и продолжительность самого длительного трека.
select track_name, duration from track
order by duration desc
limit 1;

-- Название треков, продолжительность которых не менее 3,5 минут.
select track_name from track
where duration >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select name from collection
where year_created between 2018 and 2020;

-- Исполнители, чьё имя состоит из одного слова
select performer_name from performer
where performer_name not like '% %';

-- Название треков, которые содержат слово «мой» или «my».
select track_name from track 
where track_name ilike 'my %' 
or track_name ilike '% my'
or track_name ilike '% my %'
or track_name ilike 'my'
or track_name ilike 'мой %'
or track_name ilike '% мой'
or track_name ilike '% мой %'
or track_name ilike 'мой';

-- Количество исполнителей в каждом жанре
select genre_name, count(performer_id) performer_q from musicalgenre m
left join performergenre pg on m.genre_id = pg.genre_id
group by genre_name;

--Количество треков, вошедших в альбомы 2019–2020 годов.
select album_name, count(track_id) track_q from album a
left join track t on a.album_id = t.album_id
where year_created between 2019 and 2020
group by album_name;

--Средняя продолжительность треков по каждому альбому.
select album_name, avg(duration) from album a
left join track t on a.album_id = t.album_id
group by album_name;

--Все исполнители, которые не выпустили альбомы в 2020 году.
select performer_name from performer p
left join albumperformer ap on p.performer_id = ap.performer_id
left join album a on ap.album_id = a.album_id
where year_created != 2020
--where year_created not between 2020 and 2020
group by performer_name;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select name col_name from collection c
left join trackcollection tc on c.collection_id = tc.collection_id
left join track t on tc.track_id = t.track_id 
left join album a on t.album_id = a.album_id
left join albumperformer ap on a.album_id = ap.album_id
left join performer p on ap.performer_id = p.performer_id 
where performer_name ilike 'Eminem'
group by name
