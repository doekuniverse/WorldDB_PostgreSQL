-- SQL Script to insert a representative sample of significant cities and towns for Malaysia (MY).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Malaysia (MY).

-- NOTE: Malaysia consists of Peninsular and East Malaysia with many localities. This list includes the capitals,
-- state capitals, federal territory centers, and a broad sample of major cities and significant towns.
-- Listing every single kampung (village) is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Malaysia (MY) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capitals & State Capitals / Federal Territories / Major Cities
('Kuala Lumpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '50000'), -- National Capital (Federal Territory)
('Putrajaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '62000'), -- Administrative Capital (Federal Territory)
('George Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '10000'), -- Penang State Capital (UNESCO site)
('Ipoh', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '30000'), -- Perak State Capital
('Johor Bahru', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '80000'), -- Johor State Capital (Near Singapore)
('Malacca City (Melaka)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '75000'), -- Melaka State Capital (UNESCO site)
('Kota Kinabalu', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '88000'), -- Sabah State Capital (East Malaysia)
('Kuching', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '93000'), -- Sarawak State Capital (East Malaysia)
('Shah Alam', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '40000'), -- Selangor State Capital
('Kuantan', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '25000'), -- Pahang State Capital
('Kota Bharu', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '15000'), -- Kelantan State Capital
('Kuala Terengganu', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '20000'), -- Terengganu State Capital
('Alor Setar', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '05000'), -- Kedah State Capital
('Seremban', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '70000'), -- Negeri Sembilan State Capital
('Kangar', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '01000'), -- Perlis State Capital
('Labuan', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '87000'), -- Federal Territory (Island off Borneo)

-- Other Major/Significant Cities & Towns (Sample)
('Petaling Jaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '46000'), -- Selangor (KL Metro)
('Subang Jaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '47500'), -- Selangor (KL Metro)
('Klang', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '41000'), -- Selangor (Major port)
('Kajang', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '43000'), -- Selangor (KL Metro)
('Taiping', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '34000'), -- Perak
('Sandakan', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '90000'), -- Sabah (East Malaysia)
('Tawau', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '91000'), -- Sabah (East Malaysia)
('Miri', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '98000'), -- Sarawak (East Malaysia)
('Sibu', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '96000'), -- Sarawak (East Malaysia)
('Bintulu', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '97000'), -- Sarawak (East Malaysia)
('Sungai Petani', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '08000'), -- Kedah
('Kulim', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '09000'), -- Kedah
('Batu Pahat', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '83000'), -- Johor
('Muar', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '84000'), -- Johor
('Kluang', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '86000'), -- Johor
('Pasir Gudang', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '81700'), -- Johor (Industrial/Port)
('Bukit Mertajam', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '14000'), -- Penang (Mainland)
('Seberang Perai', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '13700'), -- Penang (Mainland - includes Butterworth)
('Port Dickson', (SELECT id FROM world_countries WHERE iso_code_2 = 'MY'), '71000'); -- Negeri Sembilan (Coastal town)

-- End of Malaysia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Malaysia ==
-- ====================================
--
-- Descripción General:
-- Malasia (Malaysia) es un país ubicado en el Sudeste Asiático. Consiste en dos
-- regiones geográficas separadas por el Mar de China Meridional: Malasia Peninsular
-- (que limita con Tailandia al norte y Singapur al sur) y Malasia Oriental (que
-- ocupa la parte norte de la isla de Borneo y limita con Indonesia y Brunéi). Es
-- una federación de 13 estados y 3 territorios federales, y una monarquía
-- constitucional electiva. Es un país multicultural y multirreligioso con una
-- economía diversificada.
--
-- Ciudades Principales:
-- * Kuala Lumpur: La capital nacional y ciudad más grande, famosa por las Torres Petronas.
-- * Putrajaya: La capital administrativa federal, una ciudad planificada.
-- * George Town (Penang): Capital del estado de Penang, centro histórico y cultural
--   (Patrimonio de la Humanidad).
-- * Ipoh: Capital de Perak, conocida por su historia minera (estaño).
-- * Johor Bahru: Capital de Johor, ubicada junto a Singapur.
-- * Malacca City (Melaka): Capital de Melaka, puerto histórico (Patrimonio de la Humanidad).
-- * Kota Kinabalu (Sabah) y Kuching (Sarawak): Principales ciudades y capitales
--   estatales en Malasia Oriental (Borneo).
-- * Shah Alam: Capital del estado de Selangor (el más poblado e industrializado).
--   Petaling Jaya y Subang Jaya son grandes ciudades satélite de Kuala Lumpur dentro de Selangor.
-- * La lista incluye también las capitales de todos los estados y otras ciudades importantes.
--
-- Un Poco de Historia:
-- La región fue hogar de antiguos reinos y sultanatos malayos, y un importante
-- centro comercial (Estrecho de Malaca). Fue influenciada por culturas indias y
-- chinas, y por el Islam. Partes de la península fueron colonizadas por portugueses
-- y neerlandeses antes de que Gran Bretaña estableciera su dominio en los siglos
-- XVIII y XIX (Establecimientos del Estrecho, Estados Malayos Federados y No Federados,
-- Borneo Septentrional Británico, Sarawak bajo los Rajás Brooke). Fue ocupada por
-- Japón durante la Segunda Guerra Mundial. La Federación Malaya obtuvo la independencia
-- del Reino Unido en 1957. Malasia se formó en 1963 con la unión de Malaya, Singapur,
-- Sabah y Sarawak (Singapur se separó en 1965). El país ha experimentado un
-- significativo desarrollo económico desde la independencia.
--
-- Datos Adicionales:
-- El malayo (Bahasa Malaysia) es el idioma oficial. El Islam es la religión oficial,
-- pero se garantiza la libertad de religión (con importantes comunidades budistas,
-- cristianas e hindúes). Malasia es étnicamente diversa, con mayoría malaya y
-- minorías significativas china e india, además de grupos indígenas en Borneo. Es
-- famosa por su gastronomía, sus selvas tropicales y su biodiversidad.
--
*/
