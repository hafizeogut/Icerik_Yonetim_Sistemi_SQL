
INSERT INTO Slides (url, tittle, description, allowButton, animation_time, animation_type, rankk, isActive, createdAt)
VALUES 
('https://www.example.com/slide1', 'Summer Sale', 'Don''t miss our amazing summer sale!', 1, 3, 'fade', 1, 1, CURRENT_TIMESTAMP),
('https://www.example.com/slide2', 'New Collection', 'Discover our latest collection for the season.', 1, 2, 'slide', 2, 1, CURRENT_TIMESTAMP),
('https://www.example.com/slide3', 'Limited Time Offer', 'Hurry up! Limited time offer on selected items.', 0, 4, 'fade', 3, 1, CURRENT_TIMESTAMP);
SELECT * FROM icerik_yonetim_sistemi.slides;