/*Bu sorgu, iç içe geçmiş bir şekilde videos tablosundan image_id 
ile eşleşen verileri alır, ardından bu verilerin images tablosundaki file_id ile eşleşen verilerini alır, 
devamında bu verilerin files tablosundaki gallery_id ile eşleşen verilerini alır ve son olarak 
bu verilerin galleries tablosundaki tüm bilgilerini getirir.*/
SELECT *
FROM galleries
WHERE id IN (
  SELECT id
  FROM files
  WHERE id IN (
    SELECT id
    FROM images
    WHERE id IN (
      SELECT id
      FROM videos
    )
  )
);