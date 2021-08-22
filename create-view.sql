CREATE View rock AS 
SELECT * From track 
Where genre_id IN ( 
    SELECT genre_id FROM genre Where name = 'Rock'
);

Create View classical_count AS 
Select COUNT(*) 
From track t 
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON p.playlist_id = p.playlist_id
WHERE p.name - 'Classical'; 



