/* "Product" tablosunda belirli bir ürünün tüm kapak resimlerine 
sahip olup olmadığını kontrol etmek için yazılmıştır. 
Sorgunun amacı, belirli bir ürün ID'sine sahip olan tüm kapak 
resimlerinin "Product_images" tablosunda olduğunu doğrulamaktır.*/
SELECT Product.tittle AS product_name
FROM Product
WHERE Product.id = ALL (
  SELECT Product_images.product_id
  FROM Product_images
  WHERE Product_images.isCover = 1
);