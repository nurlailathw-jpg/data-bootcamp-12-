# SQLite-
```sql
-- Column connect
SELECT 
	firstname, 
    lastname,
    firstname || '   ' || lastname AS fullname,
    100 AS onehundret
FROM customers
------------------------------------------------------------------------------------------------

-- ROUND Functions
SELECT
    name AS song_name,
    milliseconds / 60000.0 AS minutes,
    ROUND(bytes/(1024*1024.0),2) AS mb
        --  ROUND Functions ; 2 : ทศนิยม 2 ตำแหน่ง
FROM tracks
------------------------------------------------------------------------------------------------


SELECT 
	name AS song_name,
    ROUND(bytes/(1024*1024.0),2) AS mb 
    	-- ROUND Fuctions ; 2 : ทศนิยม 2 ตำแหน่ง
FROM tracks
/*
LIKE is sensitive case ไม่สนเคส
LIKE is pattern matching 
*/

------------------------------------------------------------------------------------------------

-- There is a difference  between GLOB and LIKE
- GLOB is case-sensitive
- LIKE is case-insensitive:  eg.WHERE name LIKE'%k'





------------------------------------------------------------------------------------------------

/*
-- Subquerys (SELECT ON SELECT) 
  -- Subquerys เทียบเท่ากับการใช้ Common Table Expression = With 
     Common Table is common use for big data.

    -- Concept nsested query
        -- SELECT ... (SELECT ....) 
          -- SELECT :Inner
          -- (SELECT ....) : Outer
*/

SELECT * FROM  customers
)
SELECT firstname , country 
FROM (
SELECT * FROM  customers  
)
WHERE country = 'USA'


--------------------------------------------------


WITH all_customers AS ( 
    SELECT * FROM customers
)
  -- WITH clause: Make Variable
  
SELECT `FirstName`, `Country`
FROM all_customers
WHERE `Country` = 'United Kingdom'


----------------------------------------------
FROM
SELECT * FROM invoices
WHERE invoicedate >=  '2029-01-01' AND invoicedate <='2009-10-31 08:0:00';
 -- SQLite,  Not have text but have date , so just structure on iso

-- ; Is make transection 1 2 ...

SELECT * FROM customers 
WHERE `Country` = 'USA';


TO





-- Let's make variable !

WITH invoice_2009 AS (
  SELECT * FROM invoices
  WHERE invoicedate >=  '2009-01-01' AND invoicedate <='2009-12-31';
), usa_usacustomers AS (
  SELECT * FROM customers 
WHERE `Country` = 'USA';
)
  

 -- SQLite,  Not have text but have date , so just structure on iso

-- ; Is make transection 1 2 ...










------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------
