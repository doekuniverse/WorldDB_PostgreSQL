-- SQL Script to insert all districts (main administrative divisions) for Nauru (NR).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Nauru (NR).

-- NOTE: Nauru is extremely small and divided into 14 districts. This list includes all of them,
-- providing complete coverage at this administrative level. Nauru has no official capital city.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting districts for Nauru (NR) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Aiwo District', (SELECT id FROM world_countries WHERE iso_code_2 = 'NR'), '0000'),
('Anabar District', (SELECT id FROM world_countries WHERE iso_code_2 = 'NR'), '0000'),
('Anetan District', (SELECT id FROM world_countries WHERE iso_code_2 = 'NR'), '0000'),
('Anibare District', (SELECT id FROM world_countries WHERE iso_code_2 = 'NR'), '0000'),
('Baiti District', (SELECT id FROM world_countries WHERE iso_code_2 = 'NR'), '0000'),
('Boe District', (SELECT id FROM world_countries WHERE iso_code_2 = 'NR'), '0000'),
('Buada District', (SELECT id FROM world_countries WHERE iso_code_2 = 'NR'), '0000'), -- Only inland district
('Denigomodu District', (SELECT id FROM world_countries WHERE iso_code_2 = 'NR'), '0000'),
('Ewa District', (SELECT id FROM world_countries WHERE iso_code_2 = 'NR'), '0000'),
('Ijuw District', (SELECT id FROM world_countries WHERE iso_code_2 = 'NR'), '0000'),
('Meneng District', (SELECT id FROM world_countries WHERE iso_code_2 = 'NR'), '0000'), -- Location of Nauru Palace Hotel
('Nibok District', (SELECT id FROM world_countries WHERE iso_code_2 = 'NR'), '0000'),
('Uaboe District', (SELECT id FROM world_countries WHERE iso_code_2 = 'NR'), '0000'),
('Yaren District', (SELECT id FROM world_countries WHERE iso_code_2 = 'NR'), '0000'); -- De facto capital (location of government offices)

-- End of Nauru district list (All 14 districts included)

/*
-- ====================================
-- == Información sobre Nauru ==
-- ====================================
--
-- Descripción General:
-- La República de Nauru es un país insular ubicado en Micronesia, una subregión de
-- Oceanía, en el Océano Pacífico central. Es una única isla de fosfato elevada,
-- justo al sur del ecuador. Es el tercer estado soberano más pequeño del mundo por
-- área (después de la Ciudad del Vaticano y Mónaco) y la república independiente
-- más pequeña.
--
-- Ciudades Principales (Distritos):
-- Nauru no tiene una ciudad capital oficial designada ni ciudades en el sentido
-- tradicional. El país se divide en 14 distritos administrativos, que son áreas
-- pequeñas.
-- * Yaren: Es el distrito donde se encuentran la mayoría de las oficinas gubernamentales
--   y el parlamento, por lo que a menudo se le considera la capital de facto.
-- * Aiwo: Alberga las principales instalaciones portuarias e industriales relacionadas
--   con el fosfato.
-- * Los demás distritos (Anabar, Anetan, Anibare, Baiti, Boe, Buada, Denigomodu, Ewa,
--   Ijuw, Meneng, Nibok, Uaboe) cubren el resto de la isla.
-- * La lista incluye los 14 distritos que componen el país.
--
-- Un Poco de Historia:
-- Habitada por pueblos micronesios y polinesios. El primer contacto europeo fue con
-- balleneros británicos a finales del siglo XVIII. Fue anexada por Alemania en 1888
-- e incorporada a la Nueva Guinea Alemana. A principios del siglo XX se descubrieron
-- ricos depósitos de fosfato, cuya extracción comenzó bajo una compañía germano-
-- británica. Durante la Primera Guerra Mundial, fue ocupada por Australia. Después
-- de la guerra, se convirtió en un mandato de la Liga de Naciones administrado por
-- Australia, Nueva Zelanda y el Reino Unido. Fue ocupada por Japón durante la Segunda
-- Guerra Mundial. Después de la guerra, se convirtió en un Territorio en Fideicomiso
-- de la ONU bajo la misma administración tripartita (principalmente australiana).
-- Nauru obtuvo la independencia en 1968. La extracción de fosfato generó enormes
-- ingresos per cápita durante un tiempo, pero los depósitos se agotaron en gran
-- medida a finales del siglo XX, causando una grave crisis económica y un daño
-- ambiental significativo al interior de la isla. El país buscó fuentes alternativas
-- de ingresos, incluyendo ser un centro financiero offshore y albergar centros de
-- detención de solicitantes de asilo para Australia, ambos con controversias.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el nauruano (una lengua micronesia distinta) y el inglés.
-- Nauru es uno de los países menos visitados del mundo. Tiene una de las tasas de
-- obesidad y diabetes tipo 2 más altas del mundo, relacionadas con el cambio de
-- dieta tras la época de riqueza del fosfato.
--
*/
