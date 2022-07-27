SELECT
    TrackName,
    MAX(Sales)
FROM
(
SELECT 
    SUM(InvoiceLine.UnitPrice) Sales,
    t.Name TrackName,
    i.InvoiceDate
FROM InvoiceLine
JOIN Invoice i
ON InvoiceLine.InvoiceId = i.InvoiceId
JOIN Track t 
ON InvoiceLine.TrackId = t.TrackId
WHERE i.InvoiceDate LIKE "2013%"
GROUP BY InvoiceLine.InvoiceId
)