USE Firma;

SELECT c.ad, c.soyad, c.maas
FROM calisanlar c
INNER JOIN (
    SELECT calisan_birim_id, MAX(maas) as max_maas
    FROM calisanlar
    GROUP BY calisan_birim_id
) max_maas_tablosu ON c.calisan_birim_id = max_maas_tablosu.calisan_birim_id AND c.maas = max_maas_tablosu.max_maas;