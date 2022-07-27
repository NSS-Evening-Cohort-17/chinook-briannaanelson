SELECT 
    SUM(Total),
    BillingCountry
FROM Invoice 
GROUP BY BillingCountry 