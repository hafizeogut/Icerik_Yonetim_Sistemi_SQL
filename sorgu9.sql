/*Galeri adları ve her galeriye ait resim sayısı:*/
SELECT Galleries.gallery_name, (
  SELECT COUNT(*)
  FROM Images
  WHERE Images.gallery_id = Galleries.id
) AS image_count
FROM Galleries;