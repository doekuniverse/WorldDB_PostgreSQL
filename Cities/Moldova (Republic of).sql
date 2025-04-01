-- SQL Script to insert a representative sample of significant cities and towns for Moldova (MD).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Moldova (MD).

-- NOTE: This list includes the capital, major municipalities, district centers (raion centers),
-- and significant towns, including main towns in the breakaway region of Transnistria (noted).
-- Listing every single village (sat) is IMPOSSIBLE.
-- Postal codes are MD-####; examples or 'MD-0000' placeholder are provided.

-- Inserting cities for Moldova (MD) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Municipalities / Cities
('Chișinău', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-2000'), -- National Capital (Municipality)
('Bălți', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-3100'), -- Municipality (Second largest city)
('Tiraspol', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-3300'), -- Transnistria region (de facto capital)
('Tighina (Bender)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-3200'), -- Transnistria region (controlled by Transnistria)
('Comrat', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-3800'), -- Gagauzia autonomous region Capital
('Cahul', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-3900'), -- Cahul District Center
('Ungheni', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-3600'), -- Ungheni District Center
('Soroca', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-3000'), -- Soroca District Center
('Orhei', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-3500'), -- Orhei District Center
('Dubăsari', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-4500'), -- Dubăsari District Center (partly controlled by Transnistria)
('Căușeni', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-4300'), -- Căușeni District Center
('Strășeni', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-3700'), -- Strășeni District Center
('Hîncești', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-3400'), -- Hîncești District Center
('Edineț', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-4600'), -- Edineț District Center
('Drochia', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-5200'), -- Drochia District Center
('Ialoveni', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-6800'), -- Ialoveni District Center
('Fălești', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-5900'), -- Fălești District Center
('Sîngerei', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-6200'), -- Sîngerei District Center
('Călărași', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-4400'), -- Călărași District Center
('Criuleni', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-4800'), -- Criuleni District Center
('Rezina', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-5400'), -- Rezina District Center
('Taraclia', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-7400'), -- Taraclia District Center (Bulgarian minority center)
('Rîșcani', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-5600'), -- Rîșcani District Center
('Nisporeni', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-6400'), -- Nisporeni District Center
('Glodeni', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-4900'), -- Glodeni District Center
('Leova', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-6300'), -- Leova District Center
('Cimișlia', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-4100'), -- Cimișlia District Center
('Ocnița', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-7100'), -- Ocnița District Center
('Briceni', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-4700'), -- Briceni District Center
('Telenești', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-5800'), -- Telenești District Center
('Ștefan Vodă', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-4200'), -- Ștefan Vodă District Center
('Basarabeasca', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-6700'), -- Basarabeasca District Center
('Florești', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-5000'), -- Florești District Center
('Dondușeni', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-5100'), -- Dondușeni District Center
('Anenii Noi', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-6500'), -- Anenii Noi District Center
('Șoldănești', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-7200'), -- Șoldănești District Center
('Cantemir', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-7300'), -- Cantemir District Center
('Rîbnița', (SELECT id FROM world_countries WHERE iso_code_2 = 'MD'), 'MD-5500'); -- Transnistria region (Major town)

-- End of Moldova city list (Representative Sample including Transnistria)

/*
-- ====================================
-- == Información sobre Moldova ==
-- ====================================
--
-- Descripción General:
-- Moldavia (Moldova), oficialmente República de Moldavia, es un país sin salida al
-- mar ubicado en Europa del Este, entre Rumania al oeste y Ucrania al norte, este
-- y sur. La mayor parte del país se encuentra en la región histórica de Besarabia,
-- entre los ríos Prut y Dniéster (Nistru). Es una república parlamentaria. El
-- estatus de la región oriental de Transnistria, una franja a lo largo de la orilla
-- este del Dniéster, es disputado; declaró su independencia pero no es reconocida
-- internacionalmente y mantiene una fuerte presencia militar rusa.
--
-- Ciudades Principales:
-- * Chisináu (Chișinău): La capital y ciudad más grande, centro económico y cultural.
-- * Bălți: La segunda ciudad más grande, principal centro urbano en el norte.
-- * Tiraspol: La ciudad más grande y capital de facto de la región separatista de Transnistria.
-- * Tighina (Bender): Segunda ciudad más grande de Transnistria, ubicada en la orilla
--   oeste del Dniéster pero controlada por las autoridades de Transnistria.
-- * Comrat: Capital de la Unidad Territorial Autónoma de Gagauzia, una región autónoma
--   habitada por el pueblo túrquico gagauz.
-- * Cahul, Ungheni, Soroca, Orhei: Otras ciudades importantes y centros de distrito (raion).
-- * La lista incluye también las capitales de distrito y ciudades significativas,
--   incluyendo las principales de Transnistria.
--
-- Un Poco de Historia:
-- La región formó parte del Principado de Moldavia, que luego cayó bajo influencia
-- otomana. En 1812, la parte oriental del principado (Besarabia, entre los ríos
-- Prut y Dniéster) fue anexada por el Imperio Ruso. Tras la Primera Guerra Mundial
-- y la Revolución Rusa, Besarabia se unió a Rumania. En 1940, la Unión Soviética
-- ocupó Besarabia y la unió con una franja de la República Socialista Soviética
-- Autónoma de Moldavia (al este del Dniéster, parte de Ucrania) para formar la
-- República Socialista Soviética de Moldavia. Fue ocupada brevemente por Rumania
-- (aliada de Alemania) durante la Segunda Guerra Mundial. Tras décadas de dominio
-- soviético, Moldavia declaró su independencia en 1991 tras la disolución de la URSS.
-- Poco después estalló un breve conflicto armado en Transnistria, que resultó en la
-- separación de facto de la región. Moldavia ha buscado estrechar lazos con la Unión
-- Europea y recibió el estatus de país candidato en 2022.
--
-- Datos Adicionales:
-- El rumano (denominado moldavo durante la era soviética y en Transnistria) es el
-- idioma oficial. El ruso también es ampliamente hablado, especialmente en Transnistria
-- y Gagauzia. La mayoría de la población es cristiana ortodoxa. Moldavia es conocida
-- por su producción de vino, con algunas de las bodegas subterráneas más grandes del mundo.
--
*/
