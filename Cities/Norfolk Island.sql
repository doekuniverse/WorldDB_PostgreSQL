-- SQL Script to insert the main settlements for Norfolk Island (NF).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Norfolk Island (NF).

-- NOTE: Norfolk Island is very small. This list includes the capital and main recognized settlements,
-- providing essentially complete coverage of the main populated areas.
-- The entire territory uses the Australian postal code 2899.

-- Inserting settlements for Norfolk Island (NF) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Kingston', (SELECT id FROM world_countries WHERE iso_code_2 = 'NF'), '2899'), -- Official capital, historic settlement area, UNESCO site
('Burnt Pine', (SELECT id FROM world_countries WHERE iso_code_2 = 'NF'), '2899'), -- Main commercial centre and largest settlement
('Cascade', (SELECT id FROM world_countries WHERE iso_code_2 = 'NF'), '2899'), -- Locality / Pier location
('Longridge', (SELECT id FROM world_countries WHERE iso_code_2 = 'NF'), '2899'), -- Locality
('Middlegate', (SELECT id FROM world_countries WHERE iso_code_2 = 'NF'), '2899'), -- Locality
('Rocky Point', (SELECT id FROM world_countries WHERE iso_code_2 = 'NF'), '2899'), -- Locality
('Anson Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'NF'), '2899'); -- Locality

-- End of Norfolk Island settlement list (Main Areas)

/*
-- ==========================================
-- == Información sobre Norfolk Island ==
-- ==========================================
--
-- Descripción General:
-- La Isla Norfolk es un territorio externo de Australia ubicado en el Océano Pacífico,
-- entre Australia, Nueva Zelanda y Nueva Caledonia. Es una pequeña isla volcánica
-- conocida por sus altos pinos de Norfolk (Araucaria heterophylla), que son un
-- símbolo de la isla y aparecen en su bandera.
--
-- Ciudades Principales (Asentamientos):
-- La isla no tiene grandes ciudades. Los principales centros son:
-- * Kingston: La capital oficial y el centro histórico, donde se encuentran los
--   edificios gubernamentales y los sitios históricos de la época penal (parte del
--   sitio del Patrimonio Mundial de la UNESCO de las Colonias Penitenciarias Australianas).
-- * Burnt Pine: El principal centro comercial y el asentamiento más grande de facto,
--   ubicado en el centro de la isla.
-- * Cascade, Longridge, Middlegate, etc.: Son otras áreas o localidades nombradas en la isla.
--
-- Un Poco de Historia:
-- La isla estuvo deshabitada cuando fue avistada por el Capitán James Cook en 1774.
-- Fue utilizada por Gran Bretaña como colonia penal en dos periodos distintos
-- (1788-1814 y 1825-1855). En 1856, la isla fue reasentada por descendientes de los
-- amotinados del HMS Bounty y sus compañeros tahitianos, que fueron trasladados
-- desde las superpobladas Islas Pitcairn. Esta herencia Pitcairn sigue siendo una
-- parte importante de la cultura de la isla. En 1914, la isla fue transferida a
-- Australia como territorio externo. Tuvo un grado significativo de autogobierno
-- desde 1979 hasta 2015, cuando el gobierno australiano revocó ese estatus,
-- integrando más plenamente la isla en los sistemas administrativos y fiscales
-- australianos, una decisión que ha sido controvertida entre algunos residentes.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial. También se habla el Norfuk (o Norfolk), una lengua
-- criolla que mezcla inglés del siglo XVIII y tahitiano, hablada por los descendientes
-- de los Pitcairn. El turismo es una parte importante de la economía. La isla utiliza
-- el dólar australiano.
--
*/
