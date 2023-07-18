/*Galleries,Vidoes,Images,Files ve senden Galeri adları ve her galeriye ait
resim sayısı,dosya sayısı,video sayısını veren sorgu*/
SELECT Galleries.gallery_name, COUNT(DISTINCT Images.id) AS image_count, COUNT(DISTINCT Files.id) AS file_count, COUNT(DISTINCT Videos.id) AS video_count
FROM Galleries
LEFT JOIN Images ON Galleries.id = Images.id
LEFT JOIN Files ON Galleries.id = Files.id
LEFT JOIN Videos ON Galleries.id = Videos.id
GROUP BY Galleries.gallery_name;