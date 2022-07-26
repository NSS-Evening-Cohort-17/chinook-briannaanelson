SELECT Employee.LastName, Employee.FirstName, InvoiceId From Employee
    JOIN Customer
    ON Employee.EmployeeId = Customer.SupportRepId
    JOIN Invoice
    ON Customer.CustomerId = Invoice.CustomerId
    ORDER BY Employee.LastName