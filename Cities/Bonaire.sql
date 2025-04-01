-- SQL Script to insert the main towns and villages for Bonaire, Sint Eustatius, and Saba (BQ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Bonaire, Sint Eustatius and Saba (BQ).

-- NOTE: This list includes the capitals and main settlements on each of the three islands.
-- While aiming for completeness for significant places, listing every single named spot is challenging.
-- Postal codes are not generally used for domestic mail; using '0000' as a placeholder.

-- Inserting localities for Bonaire, Sint Eustatius, and Saba (BQ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Bonaire
('Kralendijk', (SELECT id FROM world_countries WHERE iso_code_2 = 'BQ'), '0000'), -- Capital of Bonaire
('Rincon', (SELECT id FROM world_countries WHERE iso_code_2 = 'BQ'), '0000'), -- Oldest village on Bonaire
('Antriol', (SELECT id FROM world_countries WHERE iso_code_2 = 'BQ'), '0000'), -- Large neighbourhood/area near Kralendijk
('Nikiboko', (SELECT id FROM world_countries WHERE iso_code_2 = 'BQ'), '0000'), -- Neighbourhood near Kralendijk
('Tera Cora', (SELECT id FROM world_countries WHERE iso_code_2 = 'BQ'), '0000'), -- Neighbourhood near Kralendijk

-- Sint Eustatius (Statia)
('Oranjestad', (SELECT id FROM world_countries WHERE iso_code_2 = 'BQ'), '0000'), -- Capital of Sint Eustatius
('Golden Rock', (SELECT id FROM world_countries WHERE iso_code_2 = 'BQ'), '0000'), -- Residential area
('Concordia', (SELECT id FROM world_countries WHERE iso_code_2 = 'BQ'), '0000'), -- Area

-- Saba
('The Bottom', (SELECT id FROM world_countries WHERE iso_code_2 = 'BQ'), '0000'), -- Capital of Saba
('Windwardside', (SELECT id FROM world_countries WHERE iso_code_2 = 'BQ'), '0000'), -- Largest village on Saba
('Hell''s Gate', (SELECT id FROM world_countries WHERE iso_code_2 = 'BQ'), '0000'), -- Village on Saba
('St. Johns', (SELECT id FROM world_countries WHERE iso_code_2 = 'BQ'), '0000'); -- Village on Saba

-- End of Bonaire, Sint Eustatius, and Saba locality list (Comprehensive Sample)

/*
-- ==========================================================
-- == Información sobre Bonaire, Sint Eustatius y Saba ==
-- ==========================================================
--
-- Descripción General:
-- Bonaire, Sint Eustatius y Saba son tres islas en el Mar Caribe que tienen el
-- estatus de municipios especiales de los Países Bajos (a menudo llamados el
-- Caribe Neerlandés o Islas BES). Bonaire se encuentra frente a la costa de
-- Venezuela, mientras que Sint Eustatius (Statia) y Saba están más al norte,
-- en las Antillas Menores, cerca de San Martín y San Cristóbal y Nieves. Cada
-- isla tiene características distintas: Bonaire es conocida por el buceo y sus
-- salinas; Statia tiene una rica historia colonial; y Saba es una isla volcánica
-- escarpada con un aeropuerto y un puerto notables.
--
-- Ciudades/Pueblos Principales:
-- * Kralendijk: La capital y principal puerto de Bonaire.
-- * Rincon: El pueblo más antiguo de Bonaire.
-- * Oranjestad: La capital y único pueblo significativo de Sint Eustatius.
-- * The Bottom: La capital de Saba, ubicada en una meseta volcánica.
-- * Windwardside: El pueblo más grande y turístico de Saba.
--
-- Un Poco de Historia:
-- Las islas fueron colonizadas por los neerlandeses en el siglo XVII. Formaron
-- parte de las Antillas Neerlandesas, una entidad autónoma dentro del Reino de
-- los Países Bajos. Tras la disolución de las Antillas Neerlandesas en 2010,
-- estas tres islas votaron para convertirse en municipios especiales directamente
-- integrados en los Países Bajos, mientras que Curazao y San Martín se convirtieron
-- en países constituyentes autónomos dentro del Reino.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el neerlandés, el papiamento (en Bonaire) y el inglés
-- (en Statia y Saba). El dólar estadounidense es la moneda oficial desde 2011.
-- Bonaire es un destino mundialmente famoso para el buceo y el windsurf. Saba
-- tiene la pista de aterrizaje comercial más corta del mundo y su punto más alto
-- es también el punto más alto de todo el Reino de los Países Bajos (Mount Scenery).
-- Statia fue un importante puerto comercial en el siglo XVIII, conocido como "La Roca Dorada".
--
*/
