-- SQL Script to insert the main villages/municipalities for Guam (GU).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Guam (GU).

-- NOTE: Guam is divided into 19 villages/municipalities. This list includes all of them,
-- providing essentially complete coverage of the main populated areas.
-- Postal codes are US ZIP codes (969xx); examples are provided.

-- Inserting villages for Guam (GU) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Hagåtña', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96910'), -- Capital (formerly Agana)
('Dededo', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96929'), -- Most populous village
('Yigo', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96929'), -- Northernmost village
('Tamuning', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96913'), -- Includes Tumon tourist district
('Mangilao', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96913'), -- Location of University of Guam
('Barrigada', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96913'),
('Chalan Pago-Ordot', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96910'),
('Yona', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96915'),
('Santa Rita', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96915'), -- Location of Naval Base Guam main gate
('Agat', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96915'),
('Talofofo', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96915'),
('Inarajan', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96917'),
('Merizo', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96916'),
('Umatac', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96915'),
('Piti', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96915'),
('Asan-Maina', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96910'),
('Mongmong-Toto-Maite', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96910'),
('Sinajana', (SELECT id FROM world_countries WHERE iso_code_2 = 'GU'), '96910');

-- End of Guam village list (All 19 villages/municipalities)

/*
-- ====================================
-- == Información sobre Guam ==
-- ====================================
--
-- Descripción General:
-- Guam es un territorio no incorporado y organizado de los Estados Unidos, ubicado
-- en el Océano Pacífico occidental, en la región de Micronesia. Es la isla más
-- grande y meridional del archipiélago de las Islas Marianas. Tiene una gran
-- importancia estratégica militar para Estados Unidos, albergando importantes
-- bases navales y aéreas.
--
-- Ciudades Principales (Aldeas/Municipios):
-- La isla se divide administrativamente en 19 "villages" (aldeas o municipios).
-- * Hagåtña (antes Agaña): Es la capital del territorio.
-- * Dededo: La aldea más poblada.
-- * Tamuning: Importante centro comercial y turístico (incluye la zona hotelera de Tumon).
-- * Mangilao: Sede de la Universidad de Guam.
-- * Otras aldeas como Yigo, Barrigada, Santa Rita, Agat, etc., conforman el resto
--   de la estructura administrativa y poblacional.
--
-- Un Poco de Historia:
-- Habitada por el pueblo Chamorro durante miles de años. Fue avistada por Fernando
-- de Magallanes en 1521 y colonizada por España en el siglo XVII. España cedió Guam
-- a Estados Unidos en 1898 tras la Guerra Hispano-Estadounidense. Durante la Segunda
-- Guerra Mundial, fue invadida y ocupada por Japón (1941-1944) antes de ser recapturada
-- por las fuerzas estadounidenses en una sangrienta batalla. Después de la guerra,
-- se convirtió en una base militar estadounidense clave en el Pacífico. Los habitantes
-- de Guam son ciudadanos estadounidenses por nacimiento, pero no pueden votar en las
-- elecciones presidenciales y tienen representación sin voto en el Congreso de EE.UU.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el inglés y el chamorro. El turismo (principalmente
-- de Japón y Corea del Sur) y el gasto militar estadounidense son los pilares de
-- la economía. La cultura Chamorro local sigue siendo importante.
--
*/
