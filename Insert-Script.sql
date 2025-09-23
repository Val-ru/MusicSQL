insert into performer(performer_name)
values 
('Eminem'),
('L. Gaga'),
('Gudkov'),
('Kirkorov');

insert into album (album_name, year_created) 
values
('Recovery', 2010),
('Stupid love', 2020),
('Mama', 2000),
('Chicken', 2025),
('Refil', 2005),
('Gaga album', 2009);

insert into collection(name, year_created)
values
('AAA', 2010),
('bbb', 2020),
('CcC', 2000),
('AbcD', 2025);

insert into musicalgenre(genre_name)
values
('Rap'),
('Pop'),
('Classic'),
('Hardcore');

insert into track (track_name, duration, album_id)
values 
('Rap God', 300, 1),
('Ga', 200, 6),
('Kirk', 150, 3),
('Carry', 190, 4),
('My darling', 250, 5),
('Abracadabra', 290, 2);

insert into performergenre (genre_id, performer_id)
values
(1, 1),
(2, 2),
(3, 3),
(4, 4);

insert into albumperformer (album_id, performer_id)
values 
(1, 1),
(2, 2),
(3, 4),
(4, 3),
(5, 1),
(6, 2);

insert into trackcollection (track_id, collection_id)
values 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 1),
(6, 2);