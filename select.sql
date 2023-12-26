SELECT name, length
FROM tracks
ORDER BY length DESC
LIMIT 1;

SELECT name
FROM tracks
WHERE length = (
    SELECT MAX(length)
    FROM tracks
    WHERE length >= '3:30'
);


SELECT name
FROM collections
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
FROM artists
WHERE name NOT LIKE '% %';

SELECT name
FROM tracks
WHERE LOWER(name) LIKE '%мой%' OR LOWER(name) LIKE '%my%';

SELECT
  albums.name AS 'Album Name',
  SEC_TO_TIME(AVG(TIME_TO_SEC(tracks.length))) AS 'Average Length'
FROM
  albums
JOIN
  tracks ON albums.id = tracks.album_id
GROUP BY
  albums.name;


SELECT COUNT(*) AS track_count
FROM tracks
JOIN albums ON tracks.album_id = albums.id
WHERE albums.release_year BETWEEN 2019 AND 2020;




SELECT g.name, COUNT(ag.artist_id) AS number_of_artists
FROM genres AS g
JOIN artist_genre AS ag ON g.id = ag.genre_id
GROUP BY g.name;


SELECT COUNT(*)
FROM tracks
WHERE album_id IN (
  SELECT id
  FROM albums
  WHERE release_year BETWEEN 2019 AND 2020
);

SELECT collections.name
FROM collections
JOIN collection_track ON collections.id = collection_track.collection_id
JOIN tracks ON collection_track.track_id = tracks.id
JOIN albums ON tracks.album_id = albums.id
JOIN artist_album ON albums.id = artist_album.album_id
JOIN artists ON artist_album.artist_id = artists.id
WHERE artists.name = 'Queen';
