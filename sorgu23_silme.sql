/*Slides tablosundaki son satırı siler. id sütununu kullanarak tablodaki en büyük id değerini bulur ve bu değere
 sahip olan satırı siler.*/
DELETE FROM Slides WHERE id = (SELECT MAX(id) FROM (SELECT * FROM Slides) AS subquery);
SELECT * FROM icerik_yonetim_sistemi.slides;