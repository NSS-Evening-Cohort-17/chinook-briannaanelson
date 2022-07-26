SELECT 
    e.FirstName || ' ' || e.LastName as "Employee Name",
    ROUND(SUM(Total), 2)
FROM Invoice i
    JOIN Customer c 
        ON i.CustomerId = c.CustomerId
    JOIN Employee e 
        ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId

