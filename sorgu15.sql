/*Product" ve "Product_images" tablolarını birleştirerek her bir ürünün adını, açıklamasını ve buna bağlı olarak
 kaç adet resme sahip olduğunu buldurur.*/
SELECT Product.tittle AS product_name, Product.description, COUNT(*) AS image_count
FROM Product
INNER JOIN Product_images ON Product.id = Product_images.product_id
GROUP BY Product.id, Product.tittle, Product.description
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;