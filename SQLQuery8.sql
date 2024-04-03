SELECT ad, soyad, maas
FROM calisanlar
WHERE maas = (
    SELECT MAX(maas)
    FROM calisanlar
);

--Maaşı en yüksek olan çalışanların ad, soyad ve maaş bilgilerini listeler