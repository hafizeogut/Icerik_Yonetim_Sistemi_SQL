/*Courses tablosundaki ortanca id'ye sahip olan kaydı günceller. 
İstenilen alanlara yeni değerler atanır. Örneğin, url, title, description, 
img_url, rank, event_date, isActive alanlarına yeni değerler verilmiştir. 
WHERE ifadesinde ortanca id'yi belirlemek için alt sorgu kullanılmıştır.*/
UPDATE Courses
SET url = 'yeni_url', tittle = 'yeni_baslik', description = 'yeni_aciklama', img_url = 'yeni_img_url', rankk = 2, event_date = '2023-05-25', isActive = 1
WHERE id = (
    SELECT id
    FROM (
        SELECT id
        FROM Courses
        ORDER BY id
        LIMIT 1 OFFSET (SELECT COUNT(*) FROM Courses) / 2
    ) AS middle_record
);