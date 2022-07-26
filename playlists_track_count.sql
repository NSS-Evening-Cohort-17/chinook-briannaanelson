SELECT 
    COUNT(a.TrackId) AS "# of Tracks",
    p.Name AS "Playlist Name"
FROM PlaylistTrack a
JOIN Playlist p
ON a.PlaylistId = p.PlaylistId
GROUP BY a.PlaylistId