SELECT 
    ar.Name ArtistName,
    SUM(InvoiceLine.UnitPrice) Sales
FROM InvoiceLine
JOIN Invoice i
ON InvoiceLine.InvoiceId = i.InvoiceId
JOIN Track t 
ON InvoiceLine.TrackId = t.TrackId
JOIN Album a 
ON t.AlbumId = a.AlbumId
JOIN Artist ar 
ON a.ArtistId = ar.ArtistId
GROUP BY ArtistName
ORDER BY Sales DESC
LIMIT 3
