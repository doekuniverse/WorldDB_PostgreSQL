-- SQL Script to insert a sample of significant research stations for Antarctica (AQ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Antarctica (AQ).

-- NOTE: Antarctica has no cities, only research stations. This list includes major ones,
-- representing the most comprehensive sample of relevant human presence locations.
-- Listing every temporary camp, refuge, or minor facility is not feasible or well-defined.
-- Using '0000' as a placeholder for postal code as standard codes do not apply.

-- Inserting stations for Antarctica (AQ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('McMurdo Station (USA)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'),
('Amundsen–Scott South Pole Station (USA)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'),
('Palmer Station (USA)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'),
('Vostok Station (Russia)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'), -- Recorded lowest temperature
('Concordia Station (France/Italy)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'), -- Dome C
('Halley Research Station (UK)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'), -- On Brunt Ice Shelf
('Rothera Research Station (UK)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'), -- Antarctic Peninsula
('Neumayer Station III (Germany)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'),
('Scott Base (New Zealand)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'), -- Near McMurdo
('Davis Station (Australia)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'),
('Mawson Station (Australia)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'),
('Casey Station (Australia)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'),
('Showa Station (Japan)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'),
('Troll (Norway)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'), -- Queen Maud Land
('Vernadsky Research Base (Ukraine)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'), -- Formerly Faraday (UK)
('Base General Bernardo O''Higgins Riquelme (Chile)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'),
('Villa Las Estrellas (Chile)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'), -- Part of Base Frei Montalva, has civilians
('Base Presidente Eduardo Frei Montalva (Chile)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'), -- Main Chilean base
('Esperanza Base (Argentina)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'), -- Has families/school
('Marambio Base (Argentina)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'), -- Main Argentine air hub
('Orcadas Base (Argentina)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'), -- Oldest continuously inhabited station
('San Martín Base (Argentina)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'),
('Belgrano II Base (Argentina)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'), -- Southernmost Argentine base
('Carlini Base (Argentina)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AQ'), '0000'); -- Formerly Jubany

-- End of Antarctica station list (Comprehensive Sample of Relevant Stations)

/*
-- ====================================
-- == Información sobre la Antártida ==
-- ====================================
--
-- Descripción General:
-- La Antártida es un continente cubierto casi en su totalidad por una inmensa
-- capa de hielo, que contiene la mayor reserva de agua dulce del planeta. Es el
-- continente más frío, seco, ventoso y con mayor altitud media. No tiene
-- población indígena ni países soberanos. Su estatus se rige por el Tratado
-- Antártico.
--
-- "Ciudades" Principales (Estaciones de Investigación):
-- No existen ciudades. La presencia humana se limita a estaciones científicas
-- operadas por diversos países. Algunas importantes son:
-- * McMurdo (EE.UU.): La más grande.
-- * Amundsen-Scott South Pole (EE.UU.): Ubicada en el Polo Sur geográfico.
-- * Vostok (Rusia): Famosa por registrar la temperatura más baja de la Tierra.
-- * Villa Las Estrellas (Chile) y Base Esperanza (Argentina): Son notables por
--   albergar personal civil y familias, incluyendo escuelas.
--
-- Un Poco de Historia:
-- El continente fue avistado por primera vez a principios del siglo XIX. La
-- exploración se intensificó a finales del XIX y principios del XX (la "Edad
-- Heroica"), con figuras como Amundsen, Scott y Shackleton. El Año Geofísico
-- Internacional (1957-58) impulsó la cooperación científica y llevó a la firma
-- del Tratado Antártico en 1959, que dedica el continente a la paz y la ciencia,
-- congelando las reclamaciones territoriales.
--
-- Datos Adicionales:
-- El Tratado Antártico prohíbe la actividad militar y la minería. La investigación
-- se centra en clima, glaciología, biología, astronomía, etc. El turismo está
-- creciendo pero está regulado.
--
*/
