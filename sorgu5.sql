/*lides' ve 'Popups' tabloları arasında bir LEFT JOIN 
gerçekleştirerek, 'Slides' tablosundaki başlık, 
açıklama ve 'Popups' tablosundaki URL ve başlık bilgilerini birleştirerek, 
tüm galerilerin ve ilgili resimlerin listelenmesini sağlar.*/
SELECT Slides.tittle, Slides.description, Popups.url, Popups.tittle
FROM Slides
LEFT JOIN Popups ON Slides.id = Popups.id
ORDER BY Slides.tittle;