/* Product_images tablosundaki her ürün için ilgili ürünün adını (tittle) ve bu ürüne ait olan resim
 sayısını (image_count) döndürür. İç içe sorgu, her ürün için ait olduğu product_id'ye göre resim sayısını hesaplar.*/
SELECT Product.tittle AS product_name, (
  SELECT COUNT(*) 
  FROM Product_images 
  WHERE Product_images.product_id = Product.id
) AS image_count
FROM Product;