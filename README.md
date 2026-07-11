# SQLite-
```sql
-- Column connect
SELECT 
	firstname, 
    lastname,
    firstname || '   ' || lastname AS fullname,
    100 AS onehundret
FROM customers


-- ROUND Functions
SELECT
    name AS song_name,
    milliseconds / 60000.0 AS minutes,
    ROUND(bytes/(1024*1024.0),2) AS mb
        --  ROUND Functions ; 2 : ทศนิยม 2 ตำแหน่ง
FROM tracks



-- There is a difference  between GLOB and LIKE
- GLOB is case-sensitive
- LIKE is case-insensitive:  eg.WHERE name LIKE'%k'
