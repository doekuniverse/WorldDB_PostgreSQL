-- SQL Script to insert a representative sample of significant cities and towns (concelhos/cities) for Portugal (PT).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Portugal (PT).

-- NOTE: Portugal has over 300 municipalities (concelhos). This list includes the capital, major cities,
-- district capitals, autonomous region capitals, and a broad sample of significant towns. Listing every single parish (freguesia) is IMPOSSIBLE.
-- Postal codes are ####-### format; examples or '0000-000' placeholder are provided.

-- Inserting cities for Portugal (PT) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / District & Autonomous Region Capitals
('Lisbon (Lisboa)', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '1000-001'), -- National Capital
('Porto', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '4000-001'), -- Porto District Capital, Second largest city
('Vila Nova de Gaia', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '4400-001'), -- Porto District (Major city across Douro from Porto)
('Sintra', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2710-001'), -- Lisbon District (UNESCO site, large municipality)
('Cascais', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2750-001'), -- Lisbon District (Coastal town)
('Loures', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2670-001'), -- Lisbon District
('Amadora', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2700-001'), -- Lisbon District (Lisbon Metro)
('Almada', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2800-001'), -- Setúbal District (Across Tagus from Lisbon)
('Seixal', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2840-001'), -- Setúbal District
('Oeiras', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2780-001'), -- Lisbon District
('Gondomar', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '4420-001'), -- Porto District
('Matosinhos', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '4450-001'), -- Porto District (Port, beaches)
('Braga', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '4700-001'), -- Braga District Capital
('Coimbra', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '3000-001'), -- Coimbra District Capital (University city)
('Funchal', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '9000-001'), -- Madeira Autonomous Region Capital
('Setúbal', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2900-001'), -- Setúbal District Capital
('Agualva-Cacém', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2735-001'), -- Lisbon District (Part of Sintra municipality)
('Queluz', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2745-001'), -- Lisbon District (Part of Sintra municipality)
('Viseu', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '3500-001'), -- Viseu District Capital
('Leiria', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2400-001'), -- Leiria District Capital
('Guimarães', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '4800-001'), -- Braga District (UNESCO site, birthplace of Portugal)
('Évora', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '7000-001'), -- Évora District Capital (UNESCO site)
('Faro', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '8000-001'), -- Faro District Capital (Algarve region)
('Aveiro', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '3800-001'), -- Aveiro District Capital ("Venice of Portugal")
('Ponta Delgada', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '9500-001'), -- Azores Autonomous Region Capital (on São Miguel island)
('Castelo Branco', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '6000-001'), -- Castelo Branco District Capital
('Vila Real', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '5000-001'), -- Vila Real District Capital
('Viana do Castelo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '4900-001'), -- Viana do Castelo District Capital
('Beja', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '7800-001'), -- Beja District Capital
('Guarda', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '6300-001'), -- Guarda District Capital (Highest city in Portugal)
('Bragança', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '5300-001'), -- Bragança District Capital
('Portalegre', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '7300-001'), -- Portalegre District Capital

-- Other Significant Towns / Concelhos (Sample)
('Portimão', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '8500-001'), -- Faro District (Algarve)
('Covilhã', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '6200-001'), -- Castelo Branco District
('Figueira da Foz', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '3080-001'), -- Coimbra District (Coastal city)
('Vila Franca de Xira', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2600-001'), -- Lisbon District
('Maia', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '4470-001'), -- Porto District (Porto Metro, Airport)
('Chaves', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '5400-001'), -- Vila Real District
('Angra do Heroísmo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '9700-001'), -- Azores (Terceira island, UNESCO site)
('Horta', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '9900-001'), -- Azores (Faial island)
('Barcelos', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '4750-001'), -- Braga District
('Póvoa de Varzim', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '4490-001'), -- Porto District (Coastal city)
('Torres Vedras', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2560-001'), -- Lisbon District
('Santarém', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2000-001'), -- Santarém District Capital
('Elvas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '7350-001'), -- Portalegre District (UNESCO site)
('Penafiel', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '4560-001'), -- Porto District
('Loulé', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '8100-001'), -- Faro District (Algarve)
('Olhão', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '8700-001'), -- Faro District (Algarve)
('Caldas da Rainha', (SELECT id FROM world_countries WHERE iso_code_2 = 'PT'), '2500-001'); -- Leiria District

-- End of Portugal city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Portugal ==
-- ====================================
--
-- Descripción General:
-- Portugal, oficialmente República Portuguesa, es un país ubicado en el suroeste
-- de Europa, en la Península Ibérica. Limita con España al norte y al este, y con
-- el Océano Atlántico al oeste y al sur. También incluye los archipiélagos autónomos
-- de las Azores y Madeira en el Atlántico. Es el país más occidental de Europa
-- continental. Es una república semipresidencialista unitaria y miembro de la
-- Unión Europea, la OTAN y la Eurozona.
--
-- Ciudades Principales:
-- * Lisboa (Lisbon): La capital y ciudad más grande, ubicada en la desembocadura
--   del río Tajo (Tejo). Es el centro político, económico y cultural del país.
-- * Oporto (Porto): La segunda ciudad más grande, ubicada en el norte, en la
--   desembocadura del río Duero (Douro). Famosa por el vino de Oporto y su centro
--   histórico (Patrimonio de la Humanidad).
-- * Vila Nova de Gaia: Ciudad grande frente a Oporto, al otro lado del Duero,
--   conocida por sus bodegas de vino de Oporto.
-- * Sintra: Cerca de Lisboa, famosa por sus palacios y castillos (Patrimonio de la Humanidad).
-- * Braga: Importante centro religioso e histórico en el norte.
-- * Coimbra: Sede de una de las universidades más antiguas de Europa.
-- * Funchal (Madeira) y Ponta Delgada (Azores): Capitales de las regiones autónomas insulares.
-- * Setúbal, Faro (Algarve), Évora (Alentejo, Patrimonio de la Humanidad), Aveiro:
--   Otras importantes capitales de distrito y centros regionales.
-- * La lista incluye también las capitales de todos los distritos y otras ciudades significativas.
--
-- Un Poco de Historia:
-- Habitada por pueblos prerromanos (lusitanos, celtas). Formó parte de la provincia
-- romana de Lusitania. Tras la caída de Roma, fue ocupada por pueblos germánicos
-- (suevos, visigodos) y luego por los musulmanes (moros). El Condado Portucalense
-- surgió como parte del Reino de León y se independizó como Reino de Portugal en el
-- siglo XII. Portugal lideró la Era de los Descubrimientos en los siglos XV y XVI,
-- estableciendo un vasto imperio colonial (Brasil, Angola, Mozambique, Goa, Macao,
-- etc.). Experimentó un declive y estuvo bajo dominio español (Unión Ibérica, 1580-1640).
-- Fue aliado de Inglaterra/Reino Unido durante siglos. La monarquía fue abolida en
-- 1910, estableciéndose una república. Sufrió un período de inestabilidad seguido por
-- la dictadura autoritaria del Estado Novo bajo António de Oliveira Salazar (1932-1968).
-- La Revolución de los Claveles de 1974 puso fin a la dictadura y llevó a la
-- descolonización de sus posesiones africanas. Se consolidó la democracia y Portugal
-- se unió a la Comunidad Económica Europea (ahora UE) en 1986.
--
-- Datos Adicionales:
-- El portugués es el idioma oficial. Portugal es famoso por el vino de Oporto, el
-- Fado (género musical), los azulejos (cerámica decorativa), su gastronomía
-- (bacalhau, pasteles de nata), sus playas (Algarve) y figuras históricas como
-- Vasco da Gama y Fernando de Magallanes.
--
*/
