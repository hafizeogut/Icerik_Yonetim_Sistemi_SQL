/*Users tablosundaki verileri Brands tablosundaki verilerle birleştirir ve 
her iki tablodan da benzersiz satırları döndürür. */
SELECT id, user_name, full_name, email, isActive, createdAt
FROM Users
UNION
SELECT id, user_name, full_name, email, isActive, createdAt
FROM Brands;