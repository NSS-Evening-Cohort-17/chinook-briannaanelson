SELECT 
    EmployeeName,
    MAX(TotalSales)
FROM(
SELECT 
    e.FirstName || ' ' || e.LastName as EmployeeName,
    ROUND(SUM(Total), 2) as TotalSales
FROM Invoice i
    JOIN Customer c 
        ON i.CustomerId = c.CustomerId
    JOIN Employee e 
        ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId
)

