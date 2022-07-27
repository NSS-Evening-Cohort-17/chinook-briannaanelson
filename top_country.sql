SELECT
    BillingCountry,
    MAX(Sales)
FROM
(
SELECT 
    SUM(Total) Sales,
    BillingCountry
FROM Invoice 
GROUP BY BillingCountry 
)
