-- Название и продолжительность самого длительного трека.
select track_name, duration from track
order by duration desc
limit 1

-- Название треков, продолжительность которых не менее 3,5 минут.
select track_name from track
where duration > 210

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select name from collection
where year_created between 2018 and 2020

-- Исполнители, чьё имя состоит из одного слова
select performer_name from performer
where performer_name not like '% %'

-- Название треков, которые содержат слово «мой» или «my».
select track_name from track 
where track_name like '%my%' or '%мой%'