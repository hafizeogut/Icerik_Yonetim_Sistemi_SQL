
INSERT INTO icerik_yonetim_sistemi.Settings (company_name, about_us, mission, vision, logo, phone_1, phone_2, fax_1, fax_2, email, Twitter, Facebook, Instagram, Linkedin, createdAt)
VALUES 
('Hepsiburada', 'Hepsiburada hakkında metin', 'Hepsiburada misyonu', 'Hepsiburada vizyonu', 'https://www.hepsiburada.com/logo.png', '+1 (123) 456-7890', '+1 (987) 654-3210', '+1 (555) 123-4567', '+1 (888) 999-0000', 'info@hepsiburada.com', 'https://twitter.com/hepsiburada', 'https://www.facebook.com/hepsiburada', 'https://www.instagram.com/hepsiburada', 'https://www.linkedin.com/company/hepsiburada', CURRENT_TIMESTAMP),
('Tesla', 'Tesla hakkında metin', 'Tesla misyonu', 'Tesla vizyonu', 'https://www.tesla.com/logo.png', '+1 (111) 222-3333', '+1 (444) 555-6666', '+1 (777) 888-9999', '+1 (000) 111-2222', 'info@tesla.com', 'https://twitter.com/tesla', 'https://www.facebook.com/tesla', 'https://www.instagram.com/tesla', 'https://www.linkedin.com/company/tesla', CURRENT_TIMESTAMP),
('Google', 'Google hakkında metin', 'Google misyonu', 'Google vizyonu', 'https://www.google.com/logo.png', '+1 (222) 333-4444', '+1 (555) 666-7777', '+1 (888) 999-0000', '+1 (111) 222-3333', 'info@google.com', 'https://twitter.com/google', 'https://www.facebook.com/google', 'https://www.instagram.com/google', 'https://www.linkedin.com/company/google', CURRENT_TIMESTAMP),
('Microsoft', 'Microsoft hakkında metin', 'Microsoft misyonu', 'Microsoft vizyonu', 'https://www.microsoft.com/logo.png', '+1 (333) 444-5555', '+1 (666) 777-8888', '+1 (999) 000-1111', '+1 (222) 333-4444', 'info@microsoft.com', 'https://twitter.com/microsoft', 'https://www.facebook.com/microsoft', 'https://www.instagram.com/microsoft', 'https://www.linkedin.com/company/microsoft', CURRENT_TIMESTAMP),
('Amazon', 'Amazon hakkında metin', 'Amazon misyonu', 'Amazon vizyonu', 'https://www.amazon.com/logo.png', '+1 (444) 555-6666', '+1 (777) 888-9999', '+1 (000) 111-2222', '+1 (333) 444-5555', 'info@amazon.com', 'https://twitter.com/amazon', 'https://www.facebook.com/amazon', 'https://www.instagram.com/amazon', 'https://www.linkedin.com/company/amazon', CURRENT_TIMESTAMP);
SELECT * FROM icerik_yonetim_sistemi.Settings;


INSERT INTO icerik_yonetim_sistemi.News (url, tittle, description, img_url, video_url, news_type, isActive, createdAt)
VALUES 
    ('https://www.haberturk.com', 'Spor Haberi 1', 'Bu bir spor haberidir.', 'https://www.haberturk.com/images/haber1.jpg', NULL, 'Spor', 1, CURRENT_TIMESTAMP),
    ('https://www.milliyet.com.tr', 'Ekonomi Haberi 1', 'Bu bir ekonomi haberidir.', 'https://www.milliyet.com.tr/images/haber1.jpg', NULL, 'Ekonomi', 1, CURRENT_TIMESTAMP),
    ('https://www.cnnturk.com', 'Politika Haberi 1', 'Bu bir politika haberidir.', 'https://www.cnnturk.com/images/haber1.jpg', NULL, 'Politika', 1, CURRENT_TIMESTAMP),
    ('https://www.ntv.com.tr', 'Sağlık Haberi 1', 'Bu bir sağlık haberidir.', 'https://www.ntv.com.tr/images/haber1.jpg', NULL, 'Sağlık', 1, CURRENT_TIMESTAMP),
    ('https://www.bbc.com', 'Teknoloji Haberi 1', 'Bu bir teknoloji haberidir.', 'https://www.bbc.com/images/haber1.jpg', NULL, 'Teknoloji', 1, CURRENT_TIMESTAMP);

SELECT * FROM icerik_yonetim_sistemi.News;


INSERT INTO icerik_yonetim_sistemi.Courses (url, tittle, description, img_url, rankk, event_date, isActive, createdAt)
VALUES
('https://www.orneksite.com/kurs1', 'Web Geliştirme Kursu', 'HTML, CSS ve JavaScript konularını kapsayan kapsamlı web geliştirme kursu.', 'https://www.orneksite.com/resimler/kurs1.jpg', 1, '2023-05-20', 1, NOW()),
('https://www.orneksite.com/kurs2', 'Dijital Pazarlama Temelleri', 'SEO, sosyal medya pazarlama ve e-posta pazarlama gibi dijital pazarlama temellerini öğrenin.', 'https://www.orneksite.com/resimler/kurs2.jpg', 2, '2023-05-21', 1, NOW()),
('https://www.orneksite.com/kurs3', 'Grafik Tasarım Uzmanlık Sınıfı', 'Grafik tasarım prensipleri ve Adobe Creative Suite hakkında ayrıntılı bir kurs.', 'https://www.orneksite.com/resimler/kurs3.jpg', 3, '2023-05-22', 0, NOW()),
('https://www.orneksite.com/kurs4', 'Veri Bilimi Başlangıç İçin', 'Python ve makine öğrenimi algoritmaları gibi veri bilimi kavramlarına giriş.', 'https://www.orneksite.com/resimler/kurs4.jpg', 4, '2023-05-23', 1, NOW()),
('https://www.orneksite.com/kurs5', 'Fotoğrafçılık Temel İlkeleri', 'Başlangıç seviyesi için temel fotoğrafçılık teknikleri ve kompozisyon ipuçları.', 'https://www.orneksite.com/resimler/kurs5.jpg', 5, '2023-05-24', 1, NOW());

SELECT * FROM icerik_yonetim_sistemi.Courses;


INSERT INTO icerik_yonetim_sistemi.Product (url, tittle, description, rankk, isActive, createdAt)
VALUES
('https://www.orneksite.com/telefon-samsung-galaxy-s21', 'Samsung Galaxy S21', 'Yüksek performanslı Samsung Galaxy S21 akıllı telefon.', 1, 1, NOW()),
('https://www.orneksite.com/laptop-lenovo-thinkpad', 'Lenovo ThinkPad', 'Lenovo ThinkPad serisi güçlü ve dayanıklı laptop bilgisayar.', 2, 1, NOW()),
('https://www.orneksite.com/kulaklik-sony-wh-1000xm4', 'Sony WH-1000XM4 Kablosuz Kulaklık', 'Sony WH-1000XM4 gürültü engelleme özellikli kablosuz kulaklık.', 3, 0, NOW()),
('https://www.orneksite.com/saat-apple-watch-series-6', 'Apple Watch Series 6', 'Apple Watch Series 6 akıllı saat, spor takibi ve sağlık özellikleri sunar.', 4, 1, NOW()),
('https://www.orneksite.com/oyun-konsolu-playstation-5', 'PlayStation 5', 'Yeni nesil oyun konsolu PlayStation 5 ile oyun deneyimini zirveye taşıyın.', 5, 1, NOW());

SELECT * FROM icerik_yonetim_sistemi.Product;


INSERT INTO icerik_yonetim_sistemi.Product_images (img_url, product_id, rankk, isActive, isCover, createdAt)
VALUES
('https://www.orneksite.com/images/telefon-samsung-galaxy-s21-1.jpg', 1, 1, 1, 1, NOW()),
('https://www.orneksite.com/images/telefon-samsung-galaxy-s21-2.jpg', 1, 2, 1, 0, NOW()),
('https://www.orneksite.com/images/laptop-lenovo-thinkpad-1.jpg', 2, 1, 1, 1, NOW()),
('https://www.orneksite.com/images/laptop-lenovo-thinkpad-2.jpg', 2, 2, 1, 0, NOW()),
('https://www.orneksite.com/images/oyun-konsolu-playstation-5-1.jpg', 5, 1, 1, 1, NOW());

SELECT * FROM icerik_yonetim_sistemi.Product_images;



INSERT INTO icerik_yonetim_sistemi.Referencess (url, tittle, description, img_url, rankk, isActive, createdAt)
VALUES
('https://www.apple.com', 'Apple', 'Teknoloji şirketi olan Apple hakkında açıklama.', 'https://www.apple.com/logo.png', 1, 1, NOW()),
('https://www.microsoft.com', 'Microsoft', 'Bilgisayar yazılımı ve teknoloji şirketi olan Microsoft hakkında açıklama.', 'https://www.microsoft.com/logo.png', 2, 1, NOW()),
('https://www.coca-cola.com', 'Coca-Cola', 'Dünyaca ünlü içecek markası olan Coca-Cola hakkında açıklama.', 'https://www.coca-cola.com/logo.png', 3, 1, NOW()),
('https://www.google.com', 'Google', 'Arama motoru ve teknoloji şirketi olan Google hakkında açıklama.', 'https://www.google.com/logo.png', 4, 1, NOW()),
('https://www.nike.com', 'Nike', 'Spor giyim ve ayakkabı markası olan Nike hakkında açıklama.', 'https://www.nike.com/logo.png', 5, 1, NOW());

SELECT * FROM icerik_yonetim_sistemi.Referencess;


INSERT INTO icerik_yonetim_sistemi.Users (user_name, full_name, email, isActive, createdAt)
VALUES
('john_doe', 'John Doe', 'john.doe@example.com', 1, NOW()),
('jane_smith', 'Jane Smith', 'jane.smith@example.com', 1, NOW()),
('michael_brown', 'Michael Brown', 'michael.brown@example.com', 1, NOW()),
('emily_davis', 'Emily Davis', 'emily.davis@example.com', 1, NOW()),
('david_jones', 'David Jones', 'david.jones@example.com', 1, NOW());

SELECT * FROM icerik_yonetim_sistemi.Users;

INSERT INTO icerik_yonetim_sistemi.Members (users_id)
VALUES
(1),
(2),
(3),
(4),
(5);
SELECT * FROM icerik_yonetim_sistemi.Members;


INSERT INTO icerik_yonetim_sistemi.Slides (url, tittle, description, allowButton, animation_time, animation_type, rankk, isActive)
VALUES
('https://www.ornek.com/slide1', 'Web Sitemize Hoş Geldiniz', 'Harika ürün ve hizmetlerimizi keşfedin.', true, 500, 'fade', 1, true),
('https://www.ornek.com/slide2', 'Yeni Koleksiyon Şimdi Mevcut', 'Trendy ve şık ürünlerimizle en son koleksiyonumuzu keşfedin.', false, 1000, 'slide', 2, true),
('https://www.ornek.com/slide3', 'Özel İndirim: %50 İndirim', 'Sınırlı süreli indirimimizi kaçırmayın. Hemen alışveriş yapın ve tasarruf edin!', true, 750, 'fade', 3, true),
('https://www.ornek.com/slide4', 'Ödül Programımıza Katılın', 'Bugün kaydolun ve özel avantajlar ve ödüllerden faydalanın.', true, 500, 'fade', 4, true),
('https://www.ornek.com/slide5', 'Blogumuzda İlham Alın', 'İlham, ipuçları ve trendler için blogumuzu okuyun.', false, 1000, 'slide', 5, true);

SELECT * FROM icerik_yonetim_sistemi.Slides;


INSERT INTO icerik_yonetim_sistemi.Popups (url, tittle, description, page, isActive)
VALUES
('https://www.ornek.com/popup1', 'Yeni Ürün Lansmanı', 'Yeni ürünümüzü keşfetmek için tıklayın!', 'Anasayfa', true),
('https://www.ornek.com/popup2', 'Özel İndirim Fırsatı', 'Sadece bugüne özel %20 indirim!', 'Ürünler', true),
('https://www.ornek.com/popup3', 'Abone Olun, İndirim Kazanın', 'Haber bültenimize abone olarak %10 indirim kazanın!', 'Blog', true),
('https://www.ornek.com/popup4', 'Siparişlerde Ücretsiz Kargo', 'Tüm siparişlerinizde ücretsiz kargo avantajı!', 'Sepet', true),
('https://www.ornek.com/popup5', 'Yeni Sezon İndirimleri', 'Yeni sezon ürünlerinde %50 indirim fırsatı!', 'Kampanyalar', true);

SELECT * FROM icerik_yonetim_sistemi.Popups;


INSERT INTO icerik_yonetim_sistemi.Brands (user_name, full_name, email, isActive)
VALUES
  ('apple', 'Apple Inc.', 'info@apple.com', true),
  ('google', 'Google LLC', 'info@google.com', true),
  ('amazon', 'Amazon.com, Inc.', 'info@amazon.com', true),
  ('microsoft', 'Microsoft Corporation', 'info@microsoft.com', true),
  ('coca-cola', 'The Coca-Cola Company', 'info@coca-cola.com', true);

SELECT * FROM icerik_yonetim_sistemi.Brands;


INSERT INTO Galleries (url, gallery_name, gallery_type, folder_name, isActive, createdAt)
VALUES
  ('https://www.example.com/galeri1', 'Doğa Fotoğrafları', 'Doğa', 'doğa-fotoğrafları', 1, CURRENT_TIMESTAMP),
  ('https://www.example.com/galeri2', 'Şehir Manzaraları', 'Şehir', 'şehir-manzaraları', 1, CURRENT_TIMESTAMP),
  ('https://www.example.com/galeri3', 'Sanat Sergisi', 'Sanat', 'sanat-sergisi', 1, CURRENT_TIMESTAMP),
  ('https://www.example.com/galeri4', 'Etkinlik Fotoğrafları', 'Etkinlik', 'etkinlik-fotoğrafları', 1, CURRENT_TIMESTAMP),
  ('https://www.example.com/galeri5', 'Yemek Tarifleri', 'Yemek', 'yemek-tarifleri', 1, CURRENT_TIMESTAMP);
  
SELECT * FROM icerik_yonetim_sistemi.Galleries;


INSERT INTO Images (img_url, gallery_id, rankk, isActive, createdAt)
VALUES
  ('https://example.com/images/image1.jpg', 1, 1, 1, CURRENT_TIMESTAMP),
  ('https://example.com/images/image2.jpg', 1, 2, 1, CURRENT_TIMESTAMP),
  ('https://example.com/images/image3.jpg', 2, 1, 1, CURRENT_TIMESTAMP),
  ('https://example.com/images/image4.jpg', 2, 2, 1, CURRENT_TIMESTAMP),
  ('https://example.com/images/image5.jpg', 3, 1, 1, CURRENT_TIMESTAMP);
  
SELECT * FROM icerik_yonetim_sistemi.Images;
  
  
INSERT INTO Videos (video_url, gallery_id, rankk, isActive, createdAt)
VALUES
  ('https://example.com/videos/video1.mp4', 1, 1, 1, CURRENT_TIMESTAMP),
  ('https://example.com/videos/video2.mp4', 1, 2, 1, CURRENT_TIMESTAMP),
  ('https://example.com/videos/video3.mp4', 2, 1, 1, CURRENT_TIMESTAMP),
  ('https://example.com/videos/video4.mp4', 2, 2, 1, CURRENT_TIMESTAMP),
  ('https://example.com/videos/video5.mp4', 3, 1, 1, CURRENT_TIMESTAMP);

SELECT * FROM icerik_yonetim_sistemi.Videos;


INSERT INTO Files (file_url, gallery_id, rankk, isActive, createdAt)
VALUES
  ('https://example.com/files/file1.pdf', 1, 1, 1, CURRENT_TIMESTAMP),
  ('https://example.com/files/file2.pdf', 1, 2, 1, CURRENT_TIMESTAMP),
  ('https://example.com/files/file3.pdf', 2, 1, 1, CURRENT_TIMESTAMP),
  ('https://example.com/files/file4settings.pdf', 2, 2, 1, CURRENT_TIMESTAMP),
  ('https://example.com/files/file5.pdf', 3, 1, 1, CURRENT_TIMESTAMP);

SELECT * FROM icerik_yonetim_sistemi.Files;