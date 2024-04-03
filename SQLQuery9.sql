SELECT u.unvan_calisan AS Unvan, COUNT(c.calisan_id) AS Calisan_Sayisi
FROM unvan u
INNER JOIN calisanlar c ON u.unvan_calisan_id = c.calisan_id
GROUP BY u.unvan_calisan
HAVING COUNT(c.calisan_id) > 1;

-- Birden fazla çalışana ait olan unvanların isimlerini ve o unvan altında çalışanların sayısını listeler