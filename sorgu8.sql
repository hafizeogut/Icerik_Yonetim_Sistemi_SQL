/*Belirli bir tarih aralığındaki galeri kayıtlarını getir 
(örneğin 2023-01-01 tarihinden sonraki kayıtlar):*/
SELECT * FROM Galleries WHERE createdAt > '2023-01-01';