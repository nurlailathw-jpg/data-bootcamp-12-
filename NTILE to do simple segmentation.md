# NTILE to do simple segmentation
```sql
/*
Basic segmentation in SQL
NTILE()
  : GROUP BY Category group of Data 
  : คือ ฟังชันก์จับกลุ่มข้อมูล สามารถรับ number input ว่าจะเอากี่กลุ่มได้ 
Chalenge
  Segment 3 tracks into 3 buckets: large, medium, small files
  
*/
SELECT 
  name, 
  segment,
  -- if in SQL 
  CASE 
    WHEN segment = 1 THEN 'large'
    WHEN segment = 2 THEN 'medium'
    ELSE 'small'
  END  AS segment_name
FROM (
    SELECT 
  name, 
  bytes,
  Ntile(3) OVER(ORDER BY bytes DESC ) AS segment
    -- Ntile(3): Make 3 group, เอาสามกลุ่ม
    -- OVER(): Run whole colum
    -- AS segment: Make name by AS 
FROM  tracks
  )
  

```
