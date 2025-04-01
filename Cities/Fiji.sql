-- SQL Script to insert a representative sample of significant cities, towns, and settlements for Fiji (FJ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Fiji (FJ).

-- NOTE: Fiji is an archipelago with hundreds of islands. This list includes the capital, major cities/towns,
-- and significant settlements on the main islands. Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities/towns for Fiji (FJ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Viti Levu Island (Main Island)
('Suva', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Capital
('Nadi', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Major town, location of international airport
('Lautoka', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Second largest city, "Sugar City"
('Nausori', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Town near Suva, location of domestic airport
('Ba', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Major town
('Sigatoka', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Town on Coral Coast
('Rakiraki', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Town in the north
('Tavua', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Town in the north
('Navua', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Town west of Suva

-- Vanua Levu Island
('Labasa', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Main town on Vanua Levu
('Savusavu', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Town and tourist destination
('Nabouwalu', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Bua Province center
('Seaqaqa', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Inland town

-- Other Islands (Main Settlements)
('Levuka', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Ovalau Island (Former capital, UNESCO site)
('Vunisea', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'), -- Kadavu Island administrative center
('Lakeba', (SELECT id FROM world_countries WHERE iso_code_2 = 'FJ'), '0000'); -- Main settlement in Lau Islands (Tubou village)
-- Rotuma is a dependency with its main centre Ahau.

-- End of Fiji locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Fiji ==
-- ====================================
--
-- Descripción General:
-- Fiji es un país insular en Melanesia, parte de Oceanía, situado en el Océano
-- Pacífico Sur. Consiste en un archipiélago de más de 330 islas (unas 100 habitadas)
-- y más de 500 islotes. Las dos islas principales, Viti Levu y Vanua Levu, albergan
-- a la gran mayoría de la población. Fiji es conocido por sus paisajes tropicales,
-- playas, arrecifes de coral y como un popular destino turístico.
--
-- Ciudades Principales:
-- * Suva: La capital y ciudad más grande, ubicada en la costa sureste de Viti Levu.
--   Es un importante centro político, económico y cultural en el Pacífico Sur.
-- * Nadi: Principal centro turístico y ubicación del aeropuerto internacional más
--   importante, en el lado occidental de Viti Levu.
-- * Lautoka: La segunda ciudad más grande, centro de la industria azucarera,
--   también en el oeste de Viti Levu.
-- * Labasa: La ciudad más grande en la segunda isla principal, Vanua Levu.
-- * Savusavu: Pueblo turístico en Vanua Levu.
-- * Levuka: Antigua capital colonial en la isla de Ovalau, declarada Patrimonio
--   de la Humanidad por la UNESCO por su arquitectura portuaria colonial.
--
-- Un Poco de Historia:
-- Habitada por pueblos melanesios y polinesios durante miles de años. Los europeos
-- (holandeses y británicos) llegaron a partir del siglo XVII. En el siglo XIX,
-- las islas se unificaron bajo el jefe Seru Epenisa Cakobau, pero las tensiones
-- internas y la presión de los colonos llevaron a la cesión de las islas al Reino
-- Unido en 1874, convirtiéndose en una colonia británica. Se trajeron trabajadores
-- contratados de la India para trabajar en las plantaciones de caña de azúcar,
-- creando una importante población indo-fiyiana. Fiji obtuvo la independencia en
-- 1970. La historia post-independencia ha estado marcada por tensiones étnicas
-- entre los fiyianos indígenas y los indo-fiyianos, lo que ha llevado a varios
-- golpes de estado (1987, 2000, 2006). Se restauró la democracia parlamentaria
-- tras la adopción de una nueva constitución en 2013.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el inglés, el fiyiano y el hindi de Fiji. El rugby
-- (especialmente el rugby a siete) es el deporte nacional y una pasión. La Kava
-- (yaqona) es una bebida tradicional importante en las ceremonias sociales. El
-- turismo y la exportación de azúcar son pilares clave de la economía.
--
*/
