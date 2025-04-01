-- SQL Script to insert a representative sample of significant towns and areas for Curaçao (CW).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Curaçao (CW).

-- NOTE: This list includes the capital and other significant towns and recognized areas.
-- Listing every single neighbourhood (bario) is IMPOSSIBLE.
-- Postal codes are not generally used for domestic mail; using '0000' as a placeholder.

-- Inserting cities/towns for Curaçao (CW) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Willemstad', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Capital, UNESCO World Heritage site
('Barber', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Town in the west (Banda Abou)
('Soto', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Village in the west
('Sint Willibrordus', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Village known for flamingos nearby
('Westpunt', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Village at the western tip
('Lagun', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Village known for beach/diving
('Tera Corá', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Town/Area in the center
('Sint Michiel (Boka Sami)', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Fishing village near Willemstad
('Grote Berg', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Residential area
('Santa Rosa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Area east of Willemstad
('Montaña', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Area east of Willemstad
('Brievengat', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Neighbourhood north of Willemstad
('Julianadorp', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Neighbourhood west of Willemstad (former Shell housing)
('Emmastad', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Neighbourhood near refinery (former Shell housing)
('Santa Maria', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'), -- Area near the airport
('Suffisant', (SELECT id FROM world_countries WHERE iso_code_2 = 'CW'), '0000'); -- Neighbourhood near Willemstad

-- End of Curaçao locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Curaçao ==
-- ====================================
--
-- Descripción General:
-- Curazao (Curaçao) es una isla y un país constituyente del Reino de los Países
-- Bajos, ubicado en el sur del Mar Caribe, frente a la costa de Venezuela. Forma
-- parte de las islas ABC (junto con Aruba y Bonaire). Es conocida por sus playas
-- resguardadas en calas, sus extensos arrecifes de coral ideales para el buceo y,
-- sobre todo, por su capital, Willemstad, cuyo centro histórico con colorida
-- arquitectura colonial neerlandesa es Patrimonio de la Humanidad por la UNESCO.
--
-- Ciudades Principales (Localidades):
-- * Willemstad: La capital y ciudad más grande, dividida por la Bahía de Santa Ana
--   en dos partes principales: Punda (el lado más antiguo) y Otrobanda, conectadas
--   por el famoso puente flotante Queen Emma. Es el centro administrativo, comercial
--   y turístico.
-- * Otros pueblos y áreas significativas incluyen Barber y Westpunt en la zona
--   occidental (Banda Abou), y áreas residenciales o suburbanas alrededor de
--   Willemstad como Julianadorp, Emmastad y Santa Maria.
--
-- Un Poco de Historia:
-- Habitada por indígenas Arawak, fue avistada por los españoles a finales del siglo XV.
-- Los neerlandeses la conquistaron en 1634. Se convirtió en un importante centro
-- comercial y puerto para la Compañía Neerlandesa de las Indias Occidentales, y
-- también un centro del comercio de esclavos. En el siglo XX, la construcción de
-- una gran refinería de petróleo (Shell) transformó la economía. Curazao fue el
-- centro administrativo de las Antillas Neerlandesas. Tras la disolución de esta
-- entidad en 2010, Curazao se convirtió en un país constituyente autónomo dentro
-- del Reino de los Países Bajos.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el neerlandés, el papiamento (una lengua criolla local)
-- y el inglés. El florín antillano neerlandés es la moneda, aunque el dólar
-- estadounidense es ampliamente aceptado. La isla es famosa por el licor Blue Curaçao,
-- elaborado con la cáscara de una naranja amarga local.
--
*/
