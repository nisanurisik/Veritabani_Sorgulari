
SELECT c.ad, c.soyad, u.unvan_calisan
FROM calisanlar c
INNER JOIN unvan u ON c.calisan_id = u.unvan_calisan_id
WHERE u.unvan_calisan IN ('Y�netici', 'M�d�r');