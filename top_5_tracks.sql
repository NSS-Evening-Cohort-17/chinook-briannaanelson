SELECT 
    SUM(InvoiceLine.UnitPrice) Sales,
    t.Name TrackName
FROM InvoiceLine
JOIN Invoice i
ON InvoiceLine.InvoiceId = i.InvoiceId
JOIN Track t 
ON InvoiceLine.TrackId = t.TrackId
GROUP BY t.TrackId
ORDER BY Sales DESC
LIMIT 5