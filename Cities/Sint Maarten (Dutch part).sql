-- SQL Script to insert a representative sample of significant towns and areas for Sint Maarten (SX).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Sint Maarten (SX).

-- NOTE: Sint Maarten is very small and densely populated. This list includes the capital
-- and main recognized towns/areas. Listing every single specific locality is not practical.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities/towns for Sint Maarten (SX) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Philipsburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'SX'), '0000'), -- Capital
('Simpson Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'SX'), '0000'), -- Area with airport, marina, resorts
('Cole Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'SX'), '0000'), -- Residential/Commercial area
('Cul de Sac', (SELECT id FROM world_countries WHERE iso_code_2 = 'SX'), '0000'), -- Residential valley area
('Maho Reef', (SELECT id FROM world_countries WHERE iso_code_2 = 'SX'), '0000'), -- Resort/Entertainment area near airport
('Lowlands', (SELECT id FROM world_countries WHERE iso_code_2 = 'SX'), '0000'), -- Westernmost area
('Oyster Pond', (SELECT id FROM world_countries WHERE iso_code_2 = 'SX'), '0000'), -- Eastern border area with French side
('Upper Prince''s Quarter', (SELECT id FROM world_countries WHERE iso_code_2 = 'SX'), '0000'), -- Residential area north of Philipsburg
('Lower Prince''s Quarter', (SELECT id FROM world_countries WHERE iso_code_2 = 'SX'), '0000'); -- Residential area north of Philipsburg

-- End of Sint Maarten locality list (Representative Sample)

/*
-- ======================================================
-- == Información sobre Sint Maarten (Dutch part) ==
-- ======================================================
--
-- Descripción General:
-- Sint Maarten es un país constituyente del Reino de los Países Bajos, que ocupa
-- la mitad sur de la isla caribeña de San Martín, en las Antillas Menores. La mitad
-- norte de la isla es la colectividad francesa de Saint Martin. Es conocido por
-- sus playas, vida nocturna y como un importante puerto de cruceros y centro
-- comercial libre de impuestos.
--
-- Ciudades Principales (Localidades):
-- Sint Maarten funciona en gran medida como una entidad urbana. Las áreas principales son:
-- * Philipsburg: La capital, ubicada en una estrecha franja de tierra entre Great Bay
--   y Great Salt Pond. Es el centro comercial y administrativo, y un puerto de cruceros.
-- * Simpson Bay: Área importante que alberga el Aeropuerto Internacional Princesa
--   Juliana (famoso por su proximidad a la playa Maho), marinas y resorts.
-- * Cole Bay, Cul de Sac, Upper/Lower Prince's Quarter: Principales áreas residenciales
--   y comerciales.
-- * Maho: Zona turística y de entretenimiento cerca del aeropuerto.
--
-- Un Poco de Historia:
-- Habitada por pueblos Arawak y Caribes. Avistada por Colón en 1493. Tras intentos
-- de colonización por varias potencias, neerlandeses y franceses llegaron casi
-- simultáneamente en 1648 y firmaron el Tratado de Concordia para dividir la isla.
-- La parte neerlandesa se centró en la extracción de sal y luego en el comercio.
-- Formó parte de las Antillas Neerlandesas (con capital en Curazao). Tras la
-- disolución de las Antillas Neerlandesas en 2010, Sint Maarten se convirtió en un
-- país constituyente autónomo dentro del Reino de los Países Bajos (similar a Aruba
-- y Curazao). La isla fue severamente devastada por el huracán Irma en 2017.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el neerlandés y el inglés, predominando este último en
-- la práctica. El florín antillano neerlandés es la moneda oficial, pero el dólar
-- estadounidense es ampliamente utilizado. La economía depende masivamente del
-- turismo (cruceros, resorts, casinos).
--
*/
