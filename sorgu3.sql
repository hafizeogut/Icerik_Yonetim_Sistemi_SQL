/*"Product" tablosu ile "Product_Images" tablosu arasındaki ilişkiyi kullanarak,
 her bir ürünün ilgili resimlerini eşleştirir.
 Bu sayede, her bir ürünün birden fazla resmi olduğunda,bu resimlere kolaylıkla erişebiliriz. Sorgu sonucunda, 
 her bir ürünün özellikleri ile ilişkili olan resimlerin detayları bir arada sunulur.*/
SELECT p.id, p.product_name, pi.image_url
FROM Product p
INNER JOIN Product_Images pi ON p.id = pi.product_id;