-- SQL Script to insert a representative sample of significant cities and towns for Madagascar (MG).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Madagascar (MG).

-- NOTE: Madagascar is a large island with thousands of localities (fokontany). This list includes the capital,
-- regional capitals, and a broad sample of major cities and significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 3 digits but usage is limited; using '000' as a placeholder or example.

-- Inserting cities for Madagascar (MG) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals / Major Cities
('Antananarivo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '101'), -- National Capital (Analamanga Region)
('Toamasina', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '501'), -- Atsinanana Region Capital (Major port)
('Antsirabe', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '110'), -- Vakinankaratra Region Capital
('Fianarantsoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '301'), -- Haute Matsiatra Region Capital
('Mahajanga', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '401'), -- Boeny Region Capital
('Toliara (Tulear)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '601'), -- Atsimo-Andrefana Region Capital
('Antsiranana (Diégo-Suarez)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '201'), -- Diana Region Capital
('Ambovombe', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '604'), -- Androy Region Capital
('Ambatondrazaka', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '503'), -- Alaotra-Mangoro Region Capital
('Morondava', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '619'), -- Menabe Region Capital
('Manakara', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '316'), -- Vatovavy Region Capital (New region split)
('Farafangana', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '309'), -- Atsimo-Atsinanana Region Capital
('Ihosy', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '313'), -- Ihorombe Region Capital
('Miarinarivo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '117'), -- Itasy Region Capital
('Ambanja', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '203'), -- Diana Region town
('Antalaha', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '206'), -- Sava Region town
('Sambava', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '208'), -- Sava Region Capital
('Fenoarivo Atsinanana (Fénérive Est)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '505'), -- Analanjirofo Region Capital
('Moramanga', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '514'), -- Alaotra-Mangoro Region town
('Tsiroanomandidy', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '119'), -- Bongolava Region Capital
('Betroka', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '613'), -- Anosy Region town
('Mananjary', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '317'), -- Fitovinany Region Capital (New region split)
('Ambositra', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '306'), -- Amoron'i Mania Region Capital
('Tôlanaro (Fort Dauphin)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '614'), -- Anosy Region Capital
('Maintirano', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '417'), -- Melaky Region Capital
('Besalampy', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '419'), -- Melaky Region town (difficult access)
('Maevatanana', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '415'), -- Betsiboka Region Capital
('Ambatolampy', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '104'), -- Vakinankaratra Region town
('Amparafaravola', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '504'), -- Alaotra-Mangoro Region town
('Maroantsetra', (SELECT id FROM world_countries WHERE iso_code_2 = 'MG'), '512'); -- Analanjirofo Region town (gateway to Masoala NP)

-- End of Madagascar city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Madagascar ==
-- ====================================
--
-- Descripción General:
-- Madagascar, oficialmente República de Madagascar, es un país insular ubicado en
-- el Océano Índico, frente a la costa sureste de África, separado del continente
-- por el Canal de Mozambique. Es la cuarta isla más grande del mundo. Debido a su
-- largo aislamiento geográfico, posee una biodiversidad única, con muchas especies
-- de plantas y animales endémicas (como los lémures). Su geografía incluye una
-- meseta central montañosa, llanuras costeras y selvas tropicales.
--
-- Ciudades Principales:
-- * Antananarivo (Tana): La capital y ciudad más grande, ubicada en las tierras
--   altas centrales. Es el centro político, económico y cultural.
-- * Toamasina (Tamatave): La segunda ciudad más grande y el principal puerto del país,
--   en la costa este.
-- * Antsirabe: Tercera ciudad, ubicada en las tierras altas, centro industrial y agrícola.
-- * Fianarantsoa: Importante centro cultural y educativo en las tierras altas del sur.
-- * Mahajanga (Majunga) y Toliara (Tuléar): Principales ciudades en la costa oeste.
-- * Antsiranana (Diégo-Suarez): Principal ciudad en el extremo norte.
-- * La lista incluye también las capitales de las 22 regiones (faritra) y otras ciudades significativas.
--
-- Un Poco de Historia:
-- La isla fue poblada por olas de inmigrantes austronesios (del Sudeste Asiático)
-- y bantúes (de África continental) durante el primer milenio d.C. Surgieron
-- varios reinos, siendo el Reino Merina de las tierras altas el que unificó gran
-- parte de la isla en el siglo XIX. Francia invadió y convirtió Madagascar en una
-- colonia en 1896. Hubo importantes rebeliones contra el dominio francés. Obtuvo
-- la independencia en 1960. La historia post-independencia ha estado marcada por
-- periodos de inestabilidad política, golpes de estado y crisis económicas.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el malgache (de origen austronesio) y el francés. La
-- población es una mezcla de ascendencia asiática y africana. Las creencias
-- tradicionales y el culto a los antepasados juegan un papel importante junto con
-- el cristianismo. Madagascar es famosa por sus lémures, baobabs, camaleones y su
-- producción de vainilla. Es uno de los países más pobres del mundo y enfrenta
-- graves desafíos ambientales como la deforestación.
--
*/
