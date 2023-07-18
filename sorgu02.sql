/* Images tablosundaki her bir resim için ilgili galeri bilgilerini getirir.
Sorgu sonucunda, her bir resmin ID'si, resim URL'si, galeri ID'si, galeri URL'si ve galeri adı gibi bilgiler yer alır.
Daha detaylı bir açıklama ile sorgunun çalışma mantığı şu şekildedir:
SELECT ifadesi ile ilgilenilen sütunlar belirtilir.
FROM ifadesi ile tablolar belirtilir (Images ve Galleries tabloları).
JOIN ifadesi ile JOIN işlemi yapılacak tablo ve sütunlar belirtilir. 
Images tablosundaki gallery_id sütunu ile Galleries tablosundaki id sütunu eşleştirilir.
ON ifadesi ile eşleştirme koşulu belirtilir.
Sorgu sonucunda elde edilen verilerin düzeni, SELECT ifadesinde belirtilen sıraya göre oluşturulur.
*/
SELECT i.id, i.img_url, g.id AS gallery_id, g.url AS gallery_url, g.gallery_name
FROM Images i
JOIN Galleries g ON i.gallery_id = g.id;