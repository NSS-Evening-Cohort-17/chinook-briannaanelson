SELECT
    MAX(Sales) MostSales,
    MediaTypeName

FROM
(
SELECT 
    SUM(InvoiceLine.UnitPrice) Sales,
    m.Name MediaTypeName
FROM InvoiceLine
JOIN Invoice i
ON InvoiceLine.InvoiceId = i.InvoiceId
JOIN Track t 
ON InvoiceLine.TrackId = t.TrackId
JOIN MediaType m 
ON t.MediaTypeId = m.MediaTypeId
GROUP BY t.MediaTypeId
)