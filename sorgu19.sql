/*Belirli bir galeriye (Galleries.id = 1) ait galeri adını (gallery_name), o galeriye ait resim sayısını (image_count) ve resim URL'lerini
 (image_urls) döndürür. İç içe sorgular, her galeri için ilgili galeriye ait resim sayısını ve resim URL'lerini alır.*/
SELECT Galleries.gallery_name, 
  (SELECT COUNT(*)
   FROM Images
   WHERE Images.gallery_id = Galleries.id) AS image_count,
  (SELECT GROUP_CONCAT(Images.img_url SEPARATOR ',')
   FROM Images
   WHERE Images.gallery_id = Galleries.id) AS image_urls
FROM Galleries
WHERE Galleries.id = 1;