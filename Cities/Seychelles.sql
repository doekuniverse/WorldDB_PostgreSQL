-- SQL Script to insert all administrative districts for Seychelles (SC).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Seychelles (SC).

-- NOTE: Seychelles is divided into 26 administrative districts, mostly on Mahé island.
-- This list includes all of them, providing essentially complete coverage at this administrative level.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting districts for Seychelles (SC) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Victoria', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- National Capital (Spans several districts)
('Anse aux Pins', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé
('Anse Boileau', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé
('Anse Etoile', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé
('Anse Royale', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé
('Au Cap', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé
('Baie Lazare', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé
('Baie Sainte Anne', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Praslin Island
('Beau Vallon', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé (Popular beach)
('Bel Air', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé (Part of Victoria)
('Bel Ombre', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé
('Cascade', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé (Near airport)
('Glacis', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé
('Grand''Anse Mahé', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé
('Grand''Anse Praslin', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Praslin Island
('La Digue and Inner Islands', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- La Digue is main island
('La Rivière Anglaise (English River)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé (Part of Victoria)
('Les Mamelles', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé (Near Victoria)
('Mont Buxton', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé (Part of Victoria)
('Mont Fleuri', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé (Part of Victoria)
('Plaisance', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé (Near Victoria)
('Pointe La Rue', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé (Location of airport)
('Port Glaud', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé
('Roche Caiman', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé (Near Victoria)
('Saint Louis', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'), -- Mahé (Part of Victoria)
('Takamaka', (SELECT id FROM world_countries WHERE iso_code_2 = 'SC'), '0000'); -- Mahé (Southernmost district)

-- Note: Outer Islands (Zil Elwannyen Sesel) are not districts but managed separately.

-- End of Seychelles district list (All 26 districts included)

/*
-- ====================================
-- == Información sobre Seychelles ==
-- ====================================
--
-- Descripción General:
-- La República de Seychelles es un país insular tipo archipiélago ubicado en el
-- Océano Índico, al noreste de Madagascar y a unos 1,600 km al este de Kenia.
-- Consiste en 115 islas, divididas entre las Islas Interiores (Inner Islands),
-- que son graníticas y montañosas (donde vive la mayoría de la población, en Mahé,
-- Praslin y La Digue), y las Islas Exteriores (Outer Islands), que son atolones
-- de coral bajos y escasamente poblados o deshabitados. Es el país africano con
-- menor población.
--
-- Ciudades Principales (Distritos):
-- Seychelles se divide administrativamente en 26 distritos, la mayoría ubicados
-- en la isla principal de Mahé.
-- * Victoria: La capital y única ciudad de tamaño considerable, ubicada en Mahé.
--   Es una de las capitales nacionales más pequeñas del mundo. Se extiende por
--   varios distritos como English River, Saint Louis y Mont Fleuri.
-- * Beau Vallon: Importante área turística en Mahé.
-- * Anse Royale: Otro centro importante en Mahé.
-- * Baie Sainte Anne y Grand'Anse Praslin: Principales distritos en la segunda isla
--   más grande, Praslin.
-- * La Digue: Isla y distrito famoso por sus playas y rocas de granito.
-- * La lista incluye los 26 distritos que cubren las áreas pobladas.
--
-- Un Poco de Historia:
-- Las islas estuvieron probablemente deshabitadas (o visitadas esporádicamente por
-- marineros árabes y austronesios) hasta la llegada de los europeos. Fueron reclamadas
-- por Francia en el siglo XVIII, que estableció asentamientos y plantaciones con
-- esclavos africanos. Fueron cedidas a Gran Bretaña tras las guerras napoleónicas.
-- Se administraron como dependencia de Mauricio hasta que se convirtieron en una
-- colonia de la Corona separada en 1903. Obtuvieron la independencia del Reino Unido
-- en 1976. Hubo un golpe de estado en 1977 que instauró un régimen socialista de
-- partido único bajo France-Albert René, quien gobernó hasta 2004. El país regresó
-- al multipartidismo en 1991.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el criollo seychelense (Seselwa, basado en el francés),
-- el inglés y el francés. La población es mayoritariamente criolla, mezcla de
-- ascendencia africana, europea y asiática. La economía depende en gran medida del
-- turismo de lujo y la pesca (especialmente atún). Seychelles tiene un alto Índice
-- de Desarrollo Humano para los estándares africanos. Es conocido por su compromiso
-- con la conservación ambiental; el Atolón de Aldabra y la Reserva Natural del Valle
-- de Mai (en Praslin, hogar del Coco de Mer) son Patrimonio de la Humanidad por la UNESCO.
--
*/
