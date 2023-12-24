
INSERT INTO artists (id, name) VALUES
(1, 'Queen'),
(2, 'The Beatles'),
(3, 'Ludovico Einaudi'),
(4, 'Imagine Dragons');


INSERT INTO genres (id, name) VALUES
(1, 'Rock'),
(2, 'Classic'),
(3, 'Pop');


INSERT INTO albums (id, name, release_year) VALUES
(1, 'A Night at the Opera', 1975),
(2, 'Divenire', 2006),
(3, 'Abbey Road', 1969);


INSERT INTO tracks (id, name, length) VALUES
(1, 'Bohemian Rhapsody', '5:55'),
(2, 'My Life Is Going On', '3:34'),
(3, 'Nuvole Bianche', '5:58'),
(4, 'Imagine', '3:11'),
(5, 'Come Together', '4:18'),
(6, 'Thunder', '3:07');


INSERT INTO collections (id, name, release_year) VALUES
(1, 'Best of Queen', 1981),
(2, 'Peaceful Piano', 2017),
(3, 'Greatest Hits', 2000),
(4, 'Pop Collection', 2019);


INSERT INTO artist_genre (artist_id, genre_id) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3);


INSERT INTO artist_album (artist_id, album_id) VALUES
(1, 1),
(3, 2),
(2, 3);


INSERT INTO collection_track (collection_id, track_id) VALUES
(1, 1),
(2, 3),
(3, 4),
(3, 5),
(4, 2),
(4, 6);

