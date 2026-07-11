# SQLite-
```sql
SELECT
    name AS song_name,
    milliseconds / 60000.0 AS minutes,
    ROUND(bytes/(1024*1024.0),2) AS mb
        --  ROUND Functions ; 2 : ทศนิยม 2 ตำแหน่ง
FROM tracks


/* Regular expression
GLOB sensitive case
*/
WHERE name LIKE'%k'
