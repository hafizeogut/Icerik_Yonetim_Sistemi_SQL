/*'Settings', 'News' ve 'Courses' tabloları arasında birleştirme (join) işlemi yaparak, 
her bir tablodan ilgili sütunları seçer. Sorgunun amacı, her bir ayar, 
haber ve kursun başlığını birlikte getirmektir.*/
SELECT Settings.company_name, News.tittle, Courses.tittle
FROM ((Settings
INNER JOIN News ON Settings.id = News.id)
INNER JOIN Courses ON Settings.id = Courses.id);