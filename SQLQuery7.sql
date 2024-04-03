USE Firma;

SELECT ad, soyad, maas
FROM calisanlar
WHERE calisan_birim_id IN (
    SELECT birim_id
    FROM birimler
    WHERE birim_ad IN ('Yaz�l�m', 'Donan�m')
);

-- �Yaz�l�m� veya �Donan�m� birimlerinde �al��anlar�n ad, soyad ve maa� bilgilerini listeler