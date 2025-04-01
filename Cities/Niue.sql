-- SQL Script to insert all villages (main administrative divisions) for Niue (NU).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Niue (NU).

-- NOTE: Niue is very small and divided into 14 villages. This list includes all of them,
-- providing essentially complete coverage at this administrative level.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting villages for Niue (NU) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Alofi North', (SELECT id FROM world_countries WHERE iso_code_2 = 'NU'), '0000'), -- Part of the Capital village
('Alofi South', (SELECT id FROM world_countries WHERE iso_code_2 = 'NU'), '0000'), -- Part of the Capital village (Govt. buildings)
('Makefu', (SELECT id FROM world_countries WHERE iso_code_2 = 'NU'), '0000'),
('Tuapa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NU'), '0000'),
('Namukulu', (SELECT id FROM world_countries WHERE iso_code_2 = 'NU'), '0000'), -- Smallest village by population
('Hikutavake', (SELECT id FROM world_countries WHERE iso_code_2 = 'NU'), '0000'),
('Toi', (SELECT id FROM world_countries WHERE iso_code_2 = 'NU'), '0000'),
('Mutalau', (SELECT id FROM world_countries WHERE iso_code_2 = 'NU'), '0000'),
('Lakepa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NU'), '0000'),
('Liku', (SELECT id FROM world_countries WHERE iso_code_2 = 'NU'), '0000'),
('Hakupu', (SELECT id FROM world_countries WHERE iso_code_2 = 'NU'), '0000'),
('Vaiea', (SELECT id FROM world_countries WHERE iso_code_2 = 'NU'), '0000'),
('Avatele', (SELECT id FROM world_countries WHERE iso_code_2 = 'NU'), '0000'),
('Tamakautoga', (SELECT id FROM world_countries WHERE iso_code_2 = 'NU'), '0000');

-- End of Niue village list (All 14 villages included)

/*
-- ====================================
-- == Información sobre Niue ==
-- ====================================
--
-- Descripción General:
-- Niue es un país insular autónomo en libre asociación con Nueva Zelanda, ubicado
-- en el Océano Pacífico Sur, al noreste de Nueva Zelanda y al este de Tonga. Consiste
-- en una única isla de coral elevada, una de las más grandes del mundo de este tipo.
-- A menudo se le llama "La Roca de Polinesia". Tiene una población muy pequeña.
--
-- Ciudades Principales (Aldeas):
-- Niue no tiene ciudades en el sentido tradicional. Se divide en 14 aldeas (villages),
-- que funcionan como municipios.
-- * Alofi: Es la capital y el asentamiento más grande, dividido administrativamente
--   en Alofi Norte y Alofi Sur. Alberga las oficinas gubernamentales.
-- * Las otras 12 aldeas (Makefu, Tuapa, Namukulu, Hikutavake, Toi, Mutalau, Lakepa,
--   Liku, Hakupu, Vaiea, Avatele, Tamakautoga) son pequeños asentamientos dispersos
--   por la isla.
-- * La lista incluye las 14 aldeas que componen el país.
--
-- Un Poco de Historia:
-- Poblada por polinesios provenientes de Samoa, Tonga y Pukapuka (Islas Cook). El
-- primer contacto europeo fue con el Capitán James Cook en 1774, quien la llamó
-- "Isla Salvaje" debido a la hostil recepción. Fue visitada por misioneros en el
-- siglo XIX. Se convirtió en un protectorado británico en 1900 y fue anexada a
-- Nueva Zelanda en 1901 como parte de las Islas Cook, aunque se administró
-- separadamente después. En 1974, Niue optó por el autogobierno en libre asociación
-- con Nueva Zelanda, un estatus similar al de las Islas Cook. Los niueanos son
-- ciudadanos neozelandeses.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el niueano (una lengua polinesia) y el inglés. La
-- población ha disminuido significativamente debido a la emigración (principalmente
-- a Nueva Zelanda). La economía depende de la ayuda neozelandesa, las remesas, la
-- agricultura de subsistencia y un pequeño sector turístico (atraído por el buceo,
-- la espeleología y la observación de ballenas). Niue fue la primera nación del
-- mundo en ofrecer Wi-Fi gratuito a nivel nacional.
--
*/
