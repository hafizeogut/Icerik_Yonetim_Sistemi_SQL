/*Users tablosunda yer alan kullanıcıların kayıtlı oldukları kurs sayısını (tittle) ve kayıtlı oldukları kursların başlıklarını (description) getirir.*/
SELECT Users.user_name, 
  (SELECT COUNT(*)
   FROM Courses  
   WHERE Courses.id IN (SELECT id FROM Courses  WHERE Courses.id = Users.id)) AS tittle,
  (SELECT GROUP_CONCAT(Courses.tittle SEPARATOR ',')
   FROM Courses 
   WHERE Courses.id IN (SELECT id FROM Courses  WHERE Courses.id = Users.id)) AS description
FROM Users ;