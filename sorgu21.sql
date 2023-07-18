/*"Users" ve "Courses" tablolarını kullanarak kullanıcı adı, kurs başlığı ve kurs etkinlik tarihini içeren 
kayıtları getirir. "Users" tablosundaki "isActive" ve "Courses" tablosundaki "isActive" alanlarına göre aktif 
kayıtları filtreler ve etkinlik tarihine göre sıralar.*/
SELECT Users.user_name, Courses.tittle, Courses.event_date
FROM Users
INNER JOIN Courses ON Users.id = Courses.id
WHERE Users.isActive = 1 AND Courses.isActive = 1
ORDER BY Courses.event_date DESC;