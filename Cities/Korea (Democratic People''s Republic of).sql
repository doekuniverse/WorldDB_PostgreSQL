-- SQL Script to insert a representative sample of significant cities and towns for North Korea (KP).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains North Korea (KP).

-- NOTE: Comprehensive and verified data on all localities in North Korea is extremely limited.
-- This list includes the capital, special cities, provincial capitals, and other known major towns
-- based on generally available information. Listing every single locality is IMPOSSIBLE.
-- Postal codes are not generally used/known internationally; using '0000' as a placeholder.

-- Inserting cities for North Korea (KP) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Special Cities / Provincial Capitals / Major Cities
('Pyongyang', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- National Capital (Direct-Administered City)
('Hamhung', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- South Hamgyong Province Capital
('Chongjin', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- North Hamgyong Province Capital
('Nampo', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- Special City (Port near Pyongyang)
('Wonsan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- Kangwon Province Capital
('Sinuiju', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- North Pyongan Province Capital (Border with China)
('Tanchon', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- South Hamgyong Province
('Kaechon', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- South Pyongan Province
('Sariwon', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- North Hwanghae Province Capital
('Haeju', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- South Hwanghae Province Capital
('Kanggye', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- Chagang Province Capital
('Hyesan', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- Ryanggang Province Capital
('Pyongsong', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- South Pyongan Province Capital
('Rason (Rajin-Sonbong)', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- Special Economic Zone / City
('Kaesong', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- Special City (Near border with South Korea)

-- Other Known Significant Towns (Sample)
('Kimchaek', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- North Hamgyong Province
('Songrim', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- North Hwanghae Province
('Anju', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- South Pyongan Province
('Kusong', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- North Pyongan Province
('Chongju', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- North Pyongan Province
('Huichon', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- Chagang Province
('Hoeryong', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- North Hamgyong Province
('Sinpo', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'), -- South Hamgyong Province
('Manpo', (SELECT id FROM world_countries WHERE iso_code_2 = 'KP'), '0000'); -- Chagang Province

-- End of North Korea city list (Representative Sample based on available data)

/*
-- ==============================================================================
-- == Información sobre Korea (Democratic People's Republic of) (North Korea) ==
-- ==============================================================================
--
-- Descripción General:
-- La República Popular Democrática de Corea (RPDC), comúnmente conocida como Corea
-- del Norte, ocupa la mitad norte de la Península de Corea en Asia Oriental. Limita
-- con China y Rusia al norte, y con Corea del Sur al sur (separados por la Zona
-- Desmilitarizada de Corea, DMZ). Tiene costas en el Mar Amarillo y el Mar de Japón
-- (Mar del Este). Es un estado socialista de partido único, gobernado por la dinastía
-- Kim bajo la ideología Juche (autoconfianza). Es uno de los países más aislados
-- y militarizados del mundo.
--
-- Ciudades Principales:
-- * Pionyang (Pyongyang): La capital y ciudad más grande, centro político, cultural
--   y escaparate del régimen.
-- * Hamhung y Chongjin: Importantes ciudades industriales en la costa este.
-- * Nampo: Principal puerto en la costa oeste, cerca de Pionyang.
-- * Wonsan: Ciudad portuaria y turística (recientemente desarrollada) en la costa este.
-- * Sinuiju: Principal ciudad en la frontera noroeste con China.
-- * Kaesong: Ciudad histórica cerca de la frontera con Corea del Sur, sede de un
--   complejo industrial intercoreano (ahora inactivo).
-- * Rason: Zona Económica Especial en el noreste, cerca de las fronteras con China y Rusia.
-- * La lista incluye también las capitales provinciales y otras ciudades conocidas.
--
-- Un Poco de Historia:
-- Tras siglos de historia coreana unificada, la península fue anexada por Japón a
-- principios del siglo XX. Después de la derrota de Japón en la Segunda Guerra Mundial
-- (1945), Corea fue dividida en dos zonas de ocupación: la soviética al norte y la
-- estadounidense al sur. La RPDC fue establecida en el norte en 1948 bajo Kim Il-sung.
-- La Guerra de Corea (1950-1953), iniciada por la invasión norcoreana del sur, terminó
-- en un armisticio que solidificó la división. Corea del Norte ha sido gobernada por
-- la dinastía Kim (Kim Il-sung, Kim Jong-il y Kim Jong-un) bajo un estricto régimen
-- totalitario basado en la ideología Juche y el culto a la personalidad. El país ha
-- desarrollado un programa de armas nucleares, lo que ha llevado a un gran aislamiento
-- internacional y sanciones económicas. Ha sufrido periodos de hambruna y dificultades
-- económicas.
--
-- Datos Adicionales:
-- El coreano es el idioma oficial. El país promueve oficialmente el ateísmo, aunque
-- existen algunas religiones controladas por el estado. Corea del Norte es famosa por
-- sus desfiles militares masivos y los Juegos de Masas Arirang. La información sobre
-- la vida cotidiana y la situación interna del país es extremadamente limitada y
-- controlada por el gobierno.
--
*/
