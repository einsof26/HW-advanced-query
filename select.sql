SELECT  g.genre_name, COUNT(singer_name)   FROM singers s  
JOIN singersgenres s2  ON s.singer_id = s2.singer_id  
JOIN genres g ON g.genre_id = s2.genre_id 
GROUP BY g.genre_name


SELECT COUNT(track_name) FROM tracks t 
JOIN albums a ON t.album_id = a.album_id 
WHERE a.release_year BETWEEN 2019 AND 2020


SELECT AVG(track_duration), album_name FROM tracks t 
JOIN albums a ON t.album_id = a.album_id 
GROUP BY a.album_name 
ORDER BY AVG(t.track_duration)


SELECT  singer_name, a.release_year  FROM singers s 
JOIN singersalbums s2  ON s.singer_id = s2.singer_id 
JOIN albums a ON a.album_id = s2.album_id 
WHERE a.release_year != 2020


SELECT DISTINCT  collection_name FROM collections c 
JOIN collectionstracks c2 ON c.collection_id = c2.collection_id 
JOIN tracks t ON t.track_id = c2.track_id 
JOIN albums a ON a.album_id = t.album_id 
JOIN singersalbums s ON s.album_id = t.album_id 
JOIN singers s2 ON s2.singer_id = s.singer_id 
WHERE s2.singer_name = 'Цой'


SELECT album_name FROM albums a 
JOIN singersalbums s ON s.album_id = a.album_id 
JOIN singers s2 ON s2.singer_id = s.singer_id 
JOIN singersgenres s3 ON s3.singer_id = s2.singer_id 
GROUP BY a.album_name 
HAVING  COUNT(s3.genre_id) > 1


SELECT track_name, c.collection_id  FROM tracks t 
LEFT JOIN collectionstracks c ON c.track_id = t.track_id  
GROUP BY t.track_name, c.track_id, c.collection_id 
HAVING  c.track_id IS NULL


SELECT singer_name FROM singers s 
JOIN singersalbums s2 ON s2.singer_id = s.singer_id 
JOIN albums a ON a.album_id = s2.album_id 
JOIN tracks t ON t.album_id = a.album_id 
WHERE t.track_duration = (SELECT MIN(track_duration) FROM tracks t2)


SELECT album_name, COUNT(a.album_id)  FROM albums a 
JOIN tracks t ON t.album_id = a.album_id 
GROUP BY a.album_name 
HAVING COUNT(t.track_id) = (SELECT  COUNT(track_id)  FROM albums a 
JOIN tracks t ON t.album_id = a.album_id 
GROUP BY a.album_name 
ORDER BY count(t.track_id)
LIMIT 1)

SELECT album_name, COUNT(a.album_id)  FROM albums a 
JOIN tracks t ON t.album_id = a.album_id 
GROUP BY a.album_name
HAVING COUNT(t.track_id) = (SELECT MIN(AA) FROM (SELECT 
COUNT(a.album_id) AA FROM albums a GROUP BY a.album_name  ) M
)




 
