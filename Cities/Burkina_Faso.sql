-- SQL Script to insert a representative sample of significant cities and towns for Burkina Faso (BF).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Burkina Faso (BF).

-- NOTE: This list includes the capital, major cities, regional/provincial capitals, and significant towns.
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are not generally used; using '0000' as a placeholder.

-- Inserting cities for Burkina Faso (BF) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Regional Capitals
('Ouagadougou', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Capital (Centre Region)
('Bobo-Dioulasso', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Hauts-Bassins Region Capital
('Koudougou', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Centre-Ouest Region Capital
('Ouahigouya', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Nord Region Capital
('Banfora', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Cascades Region Capital
('Dédougou', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Boucle du Mouhoun Region Capital
('Kaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Centre-Nord Region Capital
('Tenkodogo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Centre-Est Region Capital
('Fada N''gourma', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Est Region Capital
('Dori', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Sahel Region Capital
('Gaoua', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Sud-Ouest Region Capital
('Ziniaré', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Plateau-Central Region Capital
('Manga', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Centre-Sud Region Capital

-- Other Significant Towns / Provincial Capitals (Sample)
('Houndé', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Tuy Province
('Koupéla', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Kouritenga Province
('Garango', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Boulgou Province
('Pô', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Nahouri Province
('Léo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Sissili Province
('Kongoussi', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Bam Province
('Gourcy', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Zondoma Province
('Réo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Sanguié Province
('Diapaga', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Tapoa Province
('Yako', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Passoré Province
('Kombissiri', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Bazèga Province
('Zorgho', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Ganzourgou Province
('Djibo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Soum Province
('Titao', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Loroum Province
('Solenzo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Banwa Province
('Boussé', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Kourwéogo Province
('Nouna', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'), -- Kossi Province
('Tougan', (SELECT id FROM world_countries WHERE iso_code_2 = 'BF'), '0000'); -- Sourou Province

-- End of Burkina Faso city list (Representative Sample)

/*
-- ========================================
-- == Información sobre Burkina Faso ==
-- ========================================
--
-- Descripción General:
-- Burkina Faso es un país sin salida al mar ubicado en África Occidental. Limita
-- con Malí al norte y oeste, Níger al este, Benín al sureste, y Togo, Ghana y
-- Costa de Marfil al sur. Gran parte del país se encuentra en una meseta baja
-- cubierta de sabana, con áreas más secas hacia el norte en la región del Sahel.
-- El país es atravesado por los tres ríos Volta (Mouhoun, Nakambé y Nazinon).
--
-- Ciudades Principales:
-- * Uagadugú (Ouagadougou): La capital y ciudad más grande, centro político,
--   cultural y económico. Sede del importante festival de cine FESPACO.
-- * Bobo-Dioulasso: La segunda ciudad más grande, considerada la capital económica
--   y cultural del oeste del país.
-- * Koudougou: Tercera ciudad más grande.
-- * Ouahigouya: Centro importante en el norte.
-- * Banfora: Conocida por las cascadas cercanas.
-- * La lista incluye también las capitales de las 13 regiones y otras ciudades/capitales
--   provinciales significativas.
--
-- Un Poco de Historia:
-- La región fue hogar de los importantes reinos Mossi durante siglos. Fue colonizada
-- por Francia a finales del siglo XIX y se convirtió en la colonia del Alto Volta
-- (Haute-Volta). Obtuvo la independencia en 1960. La historia post-independencia
-- estuvo marcada por la inestabilidad política y varios golpes de estado. En 1984,
-- bajo el liderazgo de Thomas Sankara, el país cambió su nombre a Burkina Faso,
-- que significa "Tierra de la gente íntegra". Sankara fue asesinado en un golpe
-- en 1987. En años recientes, el país ha enfrentado crecientes desafíos de
-- seguridad debido a la insurgencia yihadista en la región del Sahel.
--
-- Datos Adicionales:
-- El francés es el idioma oficial, pero se hablan muchas lenguas locales, siendo
-- el Mossi (Mooré) el más extendido. La mayoría de la población practica el Islam,
-- seguido por el cristianismo y religiones tradicionales africanas. La agricultura
-- de subsistencia es la principal actividad económica para gran parte de la población.
--
*/
