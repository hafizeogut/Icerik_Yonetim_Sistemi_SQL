/* id değeri 1 olan kaydı günceller. İstenilen alanlara yeni değerler atanır. Örneğin, 
url, title, description, allowButton, animation_time, animation_type, rankk, isActive alanlarına 
yeni değerler verilmiştir.*/
UPDATE Slides
SET url = 'yeni_url', tittle = 'yeni_baslik', description = 'yeni_aciklama', allowButton = 0, animation_time = 5, animation_type = 'slide', rankk = 2, isActive = 0
WHERE id = 1;

SELECT * FROM Slides;