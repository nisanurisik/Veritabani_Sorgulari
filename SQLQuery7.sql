USE Firma;

SELECT ad, soyad, maas
FROM calisanlar
WHERE calisan_birim_id IN (
    SELECT birim_id
    FROM birimler
    WHERE birim_ad IN ('Yazýlým', 'Donaným')
);

-- “Yazýlým” veya “Donaným” birimlerinde çalýþanlarýn ad, soyad ve maaþ bilgilerini listeler