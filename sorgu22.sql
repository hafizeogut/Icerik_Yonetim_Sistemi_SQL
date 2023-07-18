/*"Images" ve "Videos" tablolarını "gallery_id" alanıyla birleştirir ve aktif kayıtları filtreler. Sonuç olarak, "Images" tablosundaki "img_url" ve
"Videos" tablosundaki "video_url" alanlarını getirir. Kayıtlar "rank" sütunlarına göre sıralanır.*/
SELECT Images.img_url, Videos.video_url
FROM Images
INNER JOIN Videos ON Images.gallery_id = Videos.gallery_id
WHERE Images.isActive = 1 AND Videos.isActive = 1
ORDER BY Images.rankk, Videos.rankk;