SELECT Customer.FirstName, Customer.LastName, Invoice.Total, Employee.LastName, Employee.FirstName
FROM Employee
    JOIN Customer
    ON Employee.EmployeeId = Customer.SupportRepId
    JOIN Invoice 
    On Customer.CustomerId = Invoice.CustomerId

