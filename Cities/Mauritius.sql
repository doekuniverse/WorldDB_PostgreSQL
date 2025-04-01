-- SQL Script to insert a representative sample of significant cities and towns for Mauritius (MU).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Mauritius (MU).

-- NOTE: This list includes the capital, designated cities/towns, and significant villages/centers.
-- Listing every single locality is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Mauritius (MU) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Designated Cities / Major Towns
('Port Louis', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '11328'), -- National Capital
('Beau Bassin-Rose Hill', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '71504'), -- Designated City (Often treated as two towns)
('Vacoas-Phoenix', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '73401'), -- Designated City (Often treated as two towns)
('Curepipe', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '74213'), -- Designated City
('Quatre Bornes', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '72201'), -- Designated City

-- Other Significant Towns / Villages / District Centers (Sample)
('Mahébourg', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '50802'), -- Grand Port District (Historic town)
('Centre de Flacq', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '41501'), -- Flacq District Capital/Center
('Triolet', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '21401'), -- Pamplemousses District (Large village)
('Goodlands', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '30401'), -- Rivière du Rempart District
('Bel Air Rivière Sèche', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '40801'), -- Flacq District
('Saint Pierre', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '81406'), -- Moka District Capital
('Bambous', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '90203'), -- Black River District
('Le Hochet', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '21101'), -- Pamplemousses District
('Chemin Grenier', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '61301'), -- Savanne District Capital
('Rivière du Rempart', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '30501'), -- Rivière du Rempart District Capital
('Grand Baie', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '30510'), -- Rivière du Rempart District (Major tourist hub)
('Flic-en-Flac', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '90501'), -- Black River District (Major tourist hub)
('Rose Belle', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '51801'), -- Grand Port District
('Surinam', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '60901'), -- Savanne District
('Souillac', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '60801'), -- Savanne District (Coastal village)
('Plaine Magnien', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '51501'), -- Grand Port District (Near airport)
('Port Mathurin', (SELECT id FROM world_countries WHERE iso_code_2 = 'MU'), '00000'); -- Capital of Rodrigues Island (Outer island)

-- End of Mauritius locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Mauritius ==
-- ====================================
--
-- Descripción General:
-- La República de Mauricio (Mauritius) es un país insular ubicado en el Océano
-- Índico, al este de Madagascar y al sureste del continente africano. El país
-- incluye la isla principal de Mauricio, así como las islas de Rodrigues, Agaléga
-- y San Brandón (Cargados Carajos). Las islas son de origen volcánico y están
-- rodeadas por arrecifes de coral. Mauricio es conocido por sus playas, lagunas,
-- paisajes montañosos y su sociedad multicultural y multiétnica.
--
-- Ciudades Principales:
-- * Port Louis: La capital y ciudad más grande, principal puerto y centro económico.
-- * Beau Bassin-Rose Hill, Vacoas-Phoenix, Curepipe, Quatre Bornes: Son las otras
--   ciudades designadas oficialmente, formando una gran conurbación urbana en la
--   meseta central.
-- * Mahébourg: Antiguo puerto y centro histórico en el sureste.
-- * Centre de Flacq: Principal centro comercial en el este.
-- * Triolet y Goodlands: Grandes pueblos en el norte.
-- * Grand Baie y Flic-en-Flac: Principales centros turísticos costeros.
-- * Port Mathurin: Es la capital de la isla autónoma de Rodrigues.
--
-- Un Poco de Historia:
-- La isla principal estaba deshabitada hasta la llegada de los neerlandeses a
-- principios del siglo XVII (la nombraron en honor al Príncipe Mauricio de Nassau),
-- aunque es posible que marineros árabes y malayos la conocieran antes. Los
-- neerlandeses la abandonaron y fue colonizada por los franceses en el siglo XVIII
-- (llamada Île de France), quienes desarrollaron plantaciones de caña de azúcar con
-- esclavos africanos. Fue capturada por los británicos durante las guerras napoleónicas
-- (1810) y cedida formalmente en 1814. Los británicos abolieron la esclavitud y
-- trajeron un gran número de trabajadores contratados de la India para trabajar en
-- las plantaciones de azúcar, lo que cambió drásticamente la demografía de la isla.
-- Mauricio obtuvo la independencia del Reino Unido en 1968 y se convirtió en república
-- dentro de la Commonwealth en 1992. Ha mantenido una democracia estable y ha logrado
-- diversificar su economía más allá del azúcar, hacia el turismo, los textiles y los
-- servicios financieros.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial de la administración, pero el francés es ampliamente
-- utilizado en los medios y los negocios. El criollo mauriciano (basado en el francés)
-- es la lengua franca hablada por la mayoría de la población. También se hablan lenguas
-- índicas (bhojpuri, hindi, tamil) y chino. La población es una mezcla diversa de
-- ascendencia india, africana (criolla), china y europea. Mauricio es el único país
-- de África donde el hinduismo es la religión mayoritaria. Es famoso por ser el hogar
-- del extinto pájaro dodo.
--
*/
