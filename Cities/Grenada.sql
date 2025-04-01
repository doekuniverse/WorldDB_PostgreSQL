-- SQL Script to insert a representative sample of significant towns and villages for Grenada (GD).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Grenada (GD).

-- NOTE: This list includes the capital, major towns (parish centers), and significant villages.
-- Listing every single locality is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities/villages for Grenada (GD) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Main Parish Towns
('Saint George''s', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Capital (Saint George Parish)
('Gouyave', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Saint John Parish Capital/Town
('Grenville', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Saint Andrew Parish Capital/Town (Largest town after capital)
('Victoria', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Saint Mark Parish Capital/Town
('Sauteurs', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Saint Patrick Parish Capital/Town
('Saint David''s', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Saint David Parish main settlement area

-- Main Settlements on Carriacou & Petite Martinique
('Hillsborough', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Main town on Carriacou
('Petite Martinique', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Main settlement area on Petite Martinique

-- Other Significant Villages (Sample)
('Concord', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Saint John Parish
('Calivigny', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Saint George Parish
('Woburn', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Saint George Parish
('Grand Anse', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Saint George Parish (Major tourist beach area)
('Marquis', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Saint Andrew Parish
('Tivoli', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Saint Andrew Parish
('Hermitage', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Saint Patrick Parish
('River Sallee', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'), -- Saint Patrick Parish
('Belmont', (SELECT id FROM world_countries WHERE iso_code_2 = 'GD'), '0000'); -- Saint Patrick Parish / Carriacou (There are multiple Belmonts)

-- End of Grenada locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Grenada ==
-- ====================================
--
-- Descripción General:
-- Granada (Grenada) es un país insular en el Mar Caribe suroriental, que forma
-- parte de las Antillas Menores (Islas de Barlovento). Consiste en la isla principal
-- de Granada y seis islas más pequeñas que se encuentran al norte, incluyendo
-- Carriacou y Pequeña Martinica (Petite Martinique) en las Granadinas del sur.
-- Es conocida como la "Isla de las Especias" por ser un importante productor de
-- nuez moscada y macis. La isla principal es de origen volcánico y tiene un
-- interior montañoso.
--
-- Ciudades Principales (Pueblos):
-- * Saint George's: La capital y ciudad más grande, famosa por su pintoresco puerto
--   en forma de herradura (la Carenage) y su arquitectura colonial.
-- * Grenville: La segunda ciudad más grande, en la costa este.
-- * Gouyave: Conocido como el pueblo pesquero.
-- * Victoria, Sauteurs, Saint David's: Otros centros parroquiales importantes en
--   la isla principal.
-- * Hillsborough: El principal pueblo en la isla de Carriacou.
--
-- Un Poco de Historia:
-- Habitada por pueblos indígenas Caribes. Fue avistada por Colón, pero la resistencia
-- indígena retrasó la colonización europea. Los franceses establecieron un
-- asentamiento en el siglo XVII, eliminando a gran parte de la población Caribe.
-- La isla fue disputada entre Francia y Gran Bretaña, siendo cedida finalmente a
-- los británicos en 1783. Desarrolló una economía de plantación basada en el azúcar
-- y luego en las especias (nuez moscada). Obtuvo la independencia del Reino Unido
-- en 1974. En 1979, un golpe de estado marxista liderado por Maurice Bishop tomó
-- el poder. Disputas internas llevaron al asesinato de Bishop y a una posterior
-- invasión liderada por Estados Unidos en 1983, que restauró el gobierno anterior.
-- Desde entonces, ha sido una democracia parlamentaria.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, aunque también se habla un criollo inglés granadino.
-- Granada es uno de los mayores exportadores mundiales de nuez moscada y macis.
-- El turismo es también una industria importante. Es conocida por sus playas,
-- selvas tropicales, cascadas y el parque de esculturas submarinas.
--
*/
