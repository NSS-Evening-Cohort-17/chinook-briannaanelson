SELECT 
    e.FirstName || ' ' || e.LastName as EmployeeName,
    COUNT(c.CustomerId)
FROM Employee e
LEFT JOIN Customer c
ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId
