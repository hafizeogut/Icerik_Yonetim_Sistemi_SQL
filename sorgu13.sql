/*Users tablosunda yer alan kullanıcıların, Settings tablosunda eşleşen email adreslerine sahip olup olmadığını kontrol eder.
 Eğer eşleşen bir email adresi varsa, ilgili kullanıcının kullanıcı adı,tam adı ve email bilgilerini döndürür.*/
SELECT Users.user_name, Users.full_name, Users.email
FROM Users
WHERE EXISTS (
  SELECT 1
  FROM Settings
  WHERE Settings.email = Users.email
);