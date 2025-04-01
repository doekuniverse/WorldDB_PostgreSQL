-- SQL Script to insert a representative sample of significant cities, towns, and areas for Bahrain (BH).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Bahrain (BH).

-- NOTE: Bahrain is highly urbanized. This list includes the capital, major towns/municipalities,
-- and significant areas. Listing every single block is not feasible.
-- Postal codes are 3 or 4 digit block numbers; examples or '000' placeholder are provided.

-- Inserting cities/areas for Bahrain (BH) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Manama', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '301'), -- Capital (Example block)
('Muharraq', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '201'), -- Major city/island
('Riffa', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '901'), -- Major residential area (split East/West)
('Hamad Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '1203'), -- Large housing town (Example block)
('Isa Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '801'), -- Planned town (Example block)
('Sitra', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '601'), -- Industrial area/island (Example block)
('A''ali', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '742'), -- Known for pottery, burial mounds (Example block)
('Jidhafs', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '426'), -- Former municipality, now part of Capital Gov. (Example block)
('Sanabis', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '408'), -- Area near Manama (Example block)
('Budaiya', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '555'), -- Coastal town/area (Example block)
('Zallaq', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '1055'), -- Southern area, near resorts (Example block)
('Tubli', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '701'), -- Area known for Tubli Bay (Example block)
('Hidd', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '110'), -- Industrial area, near Muharraq (Example block)
('Arad', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '243'), -- Town near Muharraq (Example block)
('Galali', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '251'), -- Town near Muharraq (Example block)
('Samaheej', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '234'), -- Village on Muharraq island (Example block)
('Diraz', (SELECT id FROM world_countries WHERE iso_code_2 = 'BH'), '535'); -- Village (Example block)

-- End of Bahrain locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Bahrain ==
-- ====================================
--
-- Descripción General:
-- Bahrain es un pequeño estado insular situado en el Golfo Pérsico, cerca de la
-- costa oriental de Arabia Saudita, a la que está conectado por la Calzada del
-- Rey Fahd. Es un archipiélago formado por más de 30 islas, siendo la isla de
-- Bahrain la más grande. Es conocido por ser un importante centro financiero en
-- la región y fue uno de los primeros estados del Golfo en descubrir petróleo.
--
-- Ciudades Principales:
-- * Manama: La capital y ciudad más grande, centro financiero y comercial.
-- * Muharraq: Antigua capital, ubicada en una isla separada conectada por puentes,
--   sede del aeropuerto internacional.
-- * Riffa: Una gran área residencial dividida en Riffa Oriental y Occidental,
--   donde reside parte de la familia real.
-- * Hamad Town e Isa Town: Ciudades planificadas construidas para albergar a la
--   creciente población.
-- * Sitra: Importante centro industrial y petrolero.
--
-- Un Poco de Historia:
-- La región tiene una historia antigua, siendo el centro de la civilización Dilmun
-- en la Edad del Bronce. Fue influenciada por persas y portugueses antes de que
-- la familia Al Khalifa tomara el poder a finales del siglo XVIII. Se convirtió
-- en un protectorado británico en el siglo XIX. El descubrimiento de petróleo en
-- 1932 transformó su economía. Bahrain declaró su independencia en 1971. En
-- décadas recientes, ha buscado diversificar su economía más allá del petróleo,
-- enfocándose en las finanzas y el turismo. La Primavera Árabe de 2011 tuvo un
-- impacto significativo con protestas pro-democracia.
--
-- Datos Adicionales:
-- El árabe es el idioma oficial, pero el inglés es ampliamente utilizado en los
-- negocios. Bahrain alberga el Circuito Internacional de Bahréin, sede de carreras
-- de Fórmula 1. El país tiene una mezcla de arquitectura moderna y sitios
-- históricos como el Fuerte de Bahréin (Qal'at al-Bahrain), Patrimonio de la Humanidad.
--
*/
