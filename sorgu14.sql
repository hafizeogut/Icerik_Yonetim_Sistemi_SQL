/*Settings" tablosundaki en yüksek "id" değerine sahip olan kaydı ve aynı zamanda en yüksek "company_name" 
değerine sahip olan kaydı döndürür. */
SELECT company_name, about_us, mission, vision
FROM Settings
WHERE id IN (
  SELECT MAX(id)
  FROM Settings
  WHERE company_name = (
    SELECT MAX(company_name)
    FROM Settings
  )
);