-- SQL Script to insert a representative sample of significant cities, towns, and villages for Botswana (BW).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Botswana (BW).

-- NOTE: Botswana is large and sparsely populated. This list includes the capital, major towns,
-- district capitals, and significant villages. Listing every single locality is IMPOSSIBLE.
-- Postal codes are not generally used for addressing; using '0000' as a placeholder.

-- Inserting cities/villages for Botswana (BW) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Gaborone', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Capital
('Francistown', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Second largest city
('Molepolole', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Kweneng District capital, large village
('Maun', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- North-West District capital, gateway to Okavango
('Serowe', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Central District, large traditional village
('Kanye', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Southern District capital
('Mahalapye', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Central District town
('Lobatse', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- South-East District town
('Palapye', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Central District town
('Selibe-Phikwe', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Central District, mining town
('Ramotswa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- South-East District capital
('Mochudi', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Kgatleng District capital
('Letlhakane', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Central District, near diamond mines
('Tonota', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Central District town
('Jwaneng', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Southern District, diamond mining town
('Kasane', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Chobe District capital, near Chobe NP
('Ghanzi', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Ghanzi District capital
('Tsabong', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Kgalagadi District capital
('Shakawe', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- North-West District village
('Gumare', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- North-West District village
('Bobonong', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Central District village
('Orapa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Central District, diamond mining town (restricted access)
('Thamaga', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Kweneng District village
('Moshupa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'), -- Southern District village
('Tutume', (SELECT id FROM world_countries WHERE iso_code_2 = 'BW'), '0000'); -- Central District village

-- End of Botswana locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Botswana ==
-- ====================================
--
-- Descripción General:
-- Botswana es un país sin salida al mar ubicado en el sur de África. Limita con
-- Sudáfrica al sur y sureste, Namibia al oeste y norte, Zambia al norte y
-- Zimbabue al noreste. Gran parte del país está cubierta por el desierto del
-- Kalahari. Es famoso por el Delta del Okavango, un vasto delta interior donde
-- el río Okavango desemboca en el desierto, creando un ecosistema único rico en
-- vida silvestre. Botswana es conocido por su estabilidad política y buena
-- gobernanza desde su independencia, así como por su riqueza en diamantes.
--
-- Ciudades Principales:
-- * Gaborone: La capital y ciudad más grande, ubicada en el sureste, cerca de la
--   frontera con Sudáfrica.
-- * Francistown: La segunda ciudad más grande, centro comercial en el este.
-- * Maun: Principal centro turístico y puerta de entrada al Delta del Okavango.
-- * Molepolole y Serowe: Considerados entre los pueblos tradicionales más grandes
--   de África, centros importantes para los grupos étnicos Kwena y Bangwato,
--   respectivamente.
-- * Otras ciudades importantes incluyen centros mineros como Jwaneng, Orapa y
--   Selibe-Phikwe, y capitales de distrito como Kanye, Mochudi y Kasane.
--
-- Un Poco de Historia:
-- Habitada por pueblos San y luego por grupos bantúes como los Tswana. En el
-- siglo XIX, para evitar la anexión por parte de los Bóers sudafricanos, los jefes
-- Tswana solicitaron protección británica, estableciéndose el Protectorado de
-- Bechuanalandia en 1885. Botswana obtuvo la independencia pacíficamente en 1966.
-- Poco después, el descubrimiento de grandes yacimientos de diamantes transformó
-- la economía del país, permitiendo inversiones significativas en infraestructura,
-- educación y salud, y convirtiéndolo en uno de los países más prósperos y estables
-- de África.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero el Setswana es el idioma nacional más
-- hablado. Botswana tiene una de las mayores poblaciones de elefantes del mundo.
-- El turismo de safari y vida silvestre es una industria importante.
--
*/
