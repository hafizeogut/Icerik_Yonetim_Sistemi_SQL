/* "Referencess" tablosundaki belirli sütunlardaki verileri döndürmektedir. 
İç içe geçmiş bir sorgu kullanılarak, "Product" ve "Brands" tabloları ile birleştirme yapılmaktadır. 
"Brands" tablosundaki "user_name" değeri 'apple' olan kayıtların "Product" tablosundaki eşleşen "id" 
değerleri alınmaktadır. Ardından, bu eşleşen "id" değerlerine sahip olan "Referencess" tablosundaki 
kayıtlar seçilmektedir. Seçilen kayıtlar, "Referencess" tablosundaki 
belirli sütunlardaki verileri içermektedir.*/

SELECT Referencess.id, Referencess.url, Referencess.tittle, Referencess.description, Referencess.img_url, Referencess.rankk, Referencess.isActive
FROM Referencess
WHERE Referencess.id IN (
  SELECT Product.id
  FROM Product
  INNER JOIN Brands ON Product.id = Brands.id
  WHERE Brands.user_name = 'apple'
);