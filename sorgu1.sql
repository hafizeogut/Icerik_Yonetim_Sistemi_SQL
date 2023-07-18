/*Galeri ID'sine göre tüm galeri ve ilgili resimlerin listelenmesi:*/
SELECT g.id, g.url, g.gallery_name, i.img_url
FROM galleries g
JOIN images i ON g.id = i.gallery_id;