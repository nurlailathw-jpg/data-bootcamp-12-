```sql
SELECT 
    CustomerId, 
    FirstName, 
    LastName, 
    Country, 
    Email
FROM customers
WHERE Country IN ('USA', 'Canada');


---------------------------------------
JOIN column
SELECT 
    t.Name AS TrackName,
    al.Title AS AlbumTitle,
    ar.Name AS ArtistName
FROM tracks t
JOIN albums al ON t.AlbumId = al.AlbumId
JOIN artists ar ON al.ArtistId = ar.ArtistId
WHERE t.Name LIKE 'For%';



---------------------------------------



I have make a report every month.

Find top  customers with higgest total invoice.

SELECT
    c.FirstName,
    c.LastName,
    SUM(i.Total) AS TotalSpent
FROM customers AS c
JOIN invoices AS i
    ON c.CustomerId = i.CustomerId
GROUP BY
    c.CustomerId -- Group by CustomerId to ensure unique customers are counted
ORDER BY
    TotalSpent DESC
LIMIT 10;


SELECT
    c.FirstName,                            -- 1. Get customer's first name
    c.LastName,                             -- 2. Get customer's last name
    SUM(i.Total) AS TotalSpent              -- 3. Sum all invoice totals and rename column to 'TotalSpent'
FROM customers AS c                         -- 4. Start with the 'customers' table (use 'c' as nickname)
JOIN invoices AS i                          -- 5. Connect to the 'invoices' table (use 'i' as nickname)
    ON c.CustomerId = i.CustomerId          -- 6. Link them using 'CustomerId' (Primary Key = Foreign Key)
GROUP BY
    c.CustomerId                            -- 7. Group by each customer to calculate their own total sum
ORDER BY
    TotalSpent DESC                         -- 8. Sort the result by 'TotalSpent' from highest to lowest
LIMIT 10;                                   -- 9. Show only the top 10 rows

---------------------------------------






