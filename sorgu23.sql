/*Brands ve Popups tablolarını birleştirir. Marka adı, tam adı, popup başlığı ve açıklamasını
 içeren sonuçları döndürür. Sadece etkin pop-upları içerir ve kullanıcı adına ve popup başlığına göre sıralanır.*/
SELECT b.user_name, b.full_name, p.tittle, p.description
FROM Brands b
INNER JOIN Popups p ON b.id = p.id
WHERE p.isActive = true
ORDER BY b.user_name, p.tittle;