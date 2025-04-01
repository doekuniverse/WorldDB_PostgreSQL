-- SQL Script to insert the main towns/parish centers for Saint Kitts and Nevis (KN).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Saint Kitts and Nevis (KN).

-- NOTE: Saint Kitts and Nevis is divided into 14 parishes. This list includes the capital
-- and main towns/centers for each parish, providing essentially complete coverage at this level.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting main towns/parish centers for Saint Kitts and Nevis (KN) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Saint Kitts Island
('Basseterre', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- National Capital & Saint George Basseterre Parish Capital
('Sandy Point Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- Saint Anne Sandy Point Parish Capital
('Cayon', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- Saint Mary Cayon Parish Capital
('Dieppe Bay Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- Saint John Capesterre Parish (North)
('Saddlers', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- Saint John Capesterre Parish (Village)
('Tabernacle', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- Saint John Capesterre Parish (Village)
('Mansion', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- Christ Church Nichola Town Parish Capital
('Nicola Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- Christ Church Nichola Town Parish (Village)
('Middle Island', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- Saint Thomas Middle Island Parish Capital
('Old Road Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- Saint Thomas Middle Island Parish (Village)
('Palmetto Point', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- Trinity Palmetto Point Parish Capital

-- Nevis Island
('Charlestown', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- Saint Paul Charlestown Parish Capital (Nevis Capital)
('Gingerland', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- Saint George Gingerland Parish Capital
('Figtree', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- Saint John Figtree Parish Capital
('Newcastle', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'), -- Saint James Windward Parish Capital
('Cotton Ground', (SELECT id FROM world_countries WHERE iso_code_2 = 'KN'), '0000'); -- Saint Thomas Lowland Parish Capital

-- End of Saint Kitts and Nevis locality list (Main Parish Towns/Centers)

/*
-- ================================================
-- == Información sobre Saint Kitts and Nevis ==
-- ================================================
--
-- Descripción General:
-- La Federación de San Cristóbal y Nieves (Saint Kitts and Nevis) es un país insular
-- ubicado en las Antillas Menores del Mar Caribe, parte de las Islas de Sotavento.
-- Consiste en dos islas principales: San Cristóbal (Saint Kitts), la más grande, y
-- Nieves (Nevis), más pequeña y al sureste. Es el país soberano más pequeño del
-- hemisferio occidental tanto en área como en población. Es una monarquía
-- constitucional dentro de la Commonwealth, con el monarca británico como jefe de estado.
--
-- Ciudades Principales (Pueblos/Centros Parroquiales):
-- El país se divide en 14 parroquias (parishes), 9 en San Cristóbal y 5 en Nieves.
-- * Basseterre: La capital federal y la ciudad más grande, ubicada en la costa sur
--   de San Cristóbal. Es también la capital de la parroquia de Saint George Basseterre.
-- * Charlestown: La ciudad principal y capital de la isla de Nieves, ubicada en la
--   parroquia de Saint Paul Charlestown.
-- * Sandy Point Town, Cayon, Dieppe Bay Town, Mansion, Middle Island, Palmetto Point:
--   Principales pueblos o centros de las otras parroquias en San Cristóbal.
-- * Gingerland, Figtree, Newcastle, Cotton Ground: Centros de las otras parroquias en Nieves.
-- * La lista incluye la capital y los principales centros de las 14 parroquias.
--
-- Un Poco de Historia:
-- Habitadas por pueblos indígenas Caribes. Colón avistó las islas en 1493. San
-- Cristóbal fue la primera isla caribeña colonizada por los ingleses (1623) y poco
-- después también por los franceses, coexistiendo ambos durante un tiempo antes de
-- que pasara definitivamente a control británico. Nieves también fue colonizada por
-- los ingleses. Ambas islas desarrollaron una economía de plantación basada en la
-- caña de azúcar con mano de obra esclava africana. Formaron parte de la Colonia
-- de las Islas de Sotavento Británicas. Obtuvieron la independencia conjunta del
-- Reino Unido en 1983. Nieves tiene un grado considerable de autonomía dentro de la
-- federación y ha habido movimientos secesionistas en el pasado.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial. La economía depende en gran medida del turismo,
-- la agricultura (aunque el azúcar ya no es dominante) y los programas de ciudadanía
-- por inversión. La Fortaleza de Brimstone Hill en San Cristóbal es Patrimonio de la
-- Humanidad por la UNESCO. Nieves es el lugar de nacimiento de Alexander Hamilton,
-- uno de los Padres Fundadores de los Estados Unidos.
--
*/
