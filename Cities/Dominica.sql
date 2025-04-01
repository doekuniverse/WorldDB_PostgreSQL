-- SQL Script to insert a representative sample of significant towns and villages for Dominica (DM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Dominica (DM).

-- NOTE: Dominica is a mountainous island. This list includes the capital, major towns,
-- and significant villages across the parishes. Listing every single locality is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities/villages for Dominica (DM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Towns / Villages by Parish (Sample)
('Roseau', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Capital (Saint George Parish)
('Portsmouth', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Second largest town (Saint John Parish)
('Marigot', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Major village, near main airport (Saint Andrew Parish)
('Mahaut', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Town (Saint Paul Parish)
('Saint Joseph', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Saint Joseph Parish Capital/Village
('Canefield', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Area near Roseau, smaller airport (Saint Paul Parish)
('Salisbury', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Village (Saint Joseph Parish)
('Castle Bruce', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Saint David Parish Capital/Village
('La Plaine', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Village (Saint Patrick Parish)
('Grand Bay (Berekua)', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Major village in the south (Saint Patrick Parish)
('Calibishie', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Village (Saint Andrew Parish)
('Wesley', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Village (Saint Andrew Parish)
('Soufrière', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Village (Saint Mark Parish)
('Pointe Michel', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Village (Saint Luke Parish)
('Colihaut', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Village (Saint Peter Parish)
('Mahaut River', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'), -- Village (Saint Paul Parish)
('Atkinson', (SELECT id FROM world_countries WHERE iso_code_2 = 'DM'), '0000'); -- Village (Saint David Parish, near Kalinago Territory)


-- End of Dominica locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Dominica ==
-- ====================================
--
-- Descripción General:
-- La Mancomunidad de Dominica (Commonwealth of Dominica) es una nación insular
-- ubicada en el Mar Caribe, parte de las Antillas Menores (Islas de Barlovento).
-- Se encuentra entre las islas francesas de Guadalupe al norte y Martinica al sur.
-- Es conocida como la "Isla de la Naturaleza del Caribe" debido a su espectacular
-- y exuberante paisaje natural, que incluye densas selvas tropicales, montañas
-- volcánicas, cientos de ríos, cascadas y el segundo lago hirviente más grande
-- del mundo.
--
-- Ciudades Principales:
-- * Roseau: La capital y ciudad más grande, ubicada en la costa suroeste.
-- * Portsmouth: La segunda ciudad más grande, ubicada en el norte, en una bahía protegida.
-- * Marigot: Principal pueblo en la costa noreste, cerca del aeropuerto principal.
-- * Otros pueblos importantes incluyen Mahaut, Saint Joseph, Canefield, Salisbury,
--   Castle Bruce, La Plaine y Grand Bay (Berekua).
--
-- Un Poco de Historia:
-- Habitada por indígenas Kalinago (Caribes) antes de la llegada de los europeos
-- (Colón la avistó en un domingo, de ahí su nombre). Fue disputada entre Francia
-- y Gran Bretaña durante siglos, cambiando de manos varias veces, antes de
-- convertirse finalmente en una colonia británica. Obtuvo la independencia en 1978
-- como una república dentro de la Commonwealth. Dominica ha enfrentado desafíos
-- económicos y ha sido vulnerable a huracanes devastadores (como David en 1979 y
-- María en 2017).
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero también se habla un criollo francés
-- (Kwéyòl). Dominica alberga el único territorio indígena precolombino que queda
-- en el Caribe oriental: el Territorio Kalinago (anteriormente Reserva Carib).
-- El ecoturismo, la agricultura (banano, cítricos) y los servicios financieros
-- offshore son importantes para la economía. El sendero Waitukubuli National Trail
-- atraviesa toda la isla.
--
*/
