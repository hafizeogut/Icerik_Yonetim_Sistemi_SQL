/*SelectBrandsByUserName adında bir stored procedure oluşturur. Procedure, UserName adında bir giriş parametresi alır ve
 Brands tablosundan user_name değeri bu parametreye eşit olan markaları döndürür.*/
DELIMITER //  
CREATE PROCEDURE SelectBrandsByUserName (IN UserName VARCHAR(30))
/*"SelectBrandsByUserName" adında bir stored procedure oluşturuldu.
"UserName" parametresini alır ve bu parametreye sahip kullanıcı adına sahip markaları Brands tablosundan seçer.*/


BEGIN
    SELECT *
    FROM Brands
    WHERE user_name = UserName;
END //
DELIMITER ;

/*user_name değeri "apple" olan markaları elde edebilirsiniz.*/
CALL SelectBrandsByUserName('apple');