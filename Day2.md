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

-- Make your query
SELECT 
	firstname,
    lastname,
    email
FROM customers
WHERE country IN ('USA', 'Canada', 'Norway') -- tuple 
	-- RUN WHERE CLAUSE BEFORE SELECT
  AND email LIKE '%microsoft.com'
  -- OR, AND: Is  twin divert to use?
  /* 	Semicolon (;) use when we have several queries, 
  		It's like.  pull stop in English
  			How to use (;) 
        	1. Putt, the end of the code, 
            2. Highlight only one query 
  */

---------------------------------------

-- Aggregate 
SELECT 
	SUM(total) AS totala_invioce,
    AVG(total) AS avg_invioce,
    MIN(total) as MIN_invoice ,
    MAX(total) as MAX_invoice,
    COUNT(*) as n_invoice -- COUNT all rows
FROM invoices

---------------------------------------

-- JOIN: artists, albums, tracks
SELECT *
FROM artists as t1 
	-- Can use either of like this name ..t1 or artalbums
JOIN albums as t2     
  ON t1.ArtistId = t2.ArtistId
JOIN tracks as t3 
  on t2.AlbumId = t3.AlbumId

Or -- Can use both of like this name ..t1 or artalbums
-- JOIN: artists, albums, tracks
SELECT *
FROM artists as ar
	-- Can use both of like this name ..t1 or artalbums
JOIN albums as al   
  ON ar.ArtistId = al.ArtistId
JOIN tracks as tr 
  ON al.AlbumId = tr.AlbumId


---------------------------------------

/* JOIN Table , Query several colualbums
	ar.Name as artist_name,
    al.Title as album_title,
    tr.Name as song_name, 
	-- So, we use to make nicke name firs!
*/
SELECT 
	ar.Name as artist_name,
    al.Title as album_title,
    tr.Name as song_name
FROM artists as ar
	-- Can use both of like this name ..t1 or artalbums
JOIN albums as al   ON ar.ArtistId = al.ArtistId
JOIN tracks as tr 	on al.AlbumId = tr.AlbumId
WHERE (tr.Milliseconds/ 60000.0) >= 5 

---------------------------------------

SQL Clause (Logical Order)
SELECT    -- [1] เลือกคอลัมน์ที่จะแสดง
FROM      -- [2] ระบุตารางตั้งต้น (ต้นทาง)
JOIN      -- [3] ผูกสะพานเชื่อมกับตารางอื่น (แปะกาวตามเส้น ER)
WHERE     -- [4] กรองข้อมูลดิบ "ก่อน" นำไปจัดกลุ่ม
GROUP BY  -- [5] จัดกลุ่มข้อมูล (เช่น รายคน, รายประเทศ)
HAVING    -- [6] กรองข้อมูล "หลัง" จากจัดกลุ่มเสร็จแล้ว
ORDER BY  -- [7] เรียงลำดับข้อมูล (จากมากไปน้อย หรือน้อยไปมาก)
LIMIT     -- [8] จำกัดจำนวนแถวที่จะแสดงผล



---------------------------------------


/* JOIN Table, Query several columns
	ar.Name as artist_name,
    al.Title as album_title,
    tr.Name as song_name, 
	-- So, we use to make nickname first!
*/
SELECT 
	ge.Name as genres,
    -- If not have ge.Name 
    -- result จะมีแค่ comalbum  > n_songs
    COUNT(*) AS n_songs
FROM artists as ar
	-- Can use both of like this name ..t1 or artalbums
JOIN albums as al   ON ar.ArtistId = al.ArtistId
JOIN tracks as tr 	ON al.AlbumId = tr.AlbumId
JOIN genres as ge ON ge.GenreId = tr.GenreId
WHERE ge.Name <> ('Blues') -- No apply ge.Name Blues
GROUP BY 1 -- ge.Name 
-- GROUP BY, ORDER BY  It's not necessary to use the column name, 
		-- so you can apply number position table. 
HAVING ge.Name LIKE 'A%' or ge. Name LIKE 'B%'
ORDER by 2 -- count(*) DESC 
	-- Order n_song column, from less to more
    -- How different between WHERE and HAVING
  		-- WHERE: Filter rows; WHERE is written before HAVING 
        -- HAVING: Filter GROUP BY
	



---------------------------------------
---------------------------------------




---------------------------------------




---------------------------------------


---------------------------------------




---------------------------------------




---------------------------------------



