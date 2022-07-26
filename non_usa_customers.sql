SELECT FirstName || ' '|| LastName as FullName,
 CustomerId, Country FROM customer 
WHERE Country NOT LIKE "USA"
