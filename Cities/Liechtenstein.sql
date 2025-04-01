-- SQL Script to insert the municipalities (main administrative divisions) for Liechtenstein (LI).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Liechtenstein (LI).

-- NOTE: Liechtenstein is very small and divided into 11 municipalities (Gemeinden).
-- This list includes all of them, providing essentially complete coverage.
-- Postal codes are 4 digits.

-- Inserting municipalities for Liechtenstein (LI) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Vaduz', (SELECT id FROM world_countries WHERE iso_code_2 = 'LI'), '9490'), -- Capital
('Schaan', (SELECT id FROM world_countries WHERE iso_code_2 = 'LI'), '9494'), -- Largest municipality
('Triesen', (SELECT id FROM world_countries WHERE iso_code_2 = 'LI'), '9495'),
('Balzers', (SELECT id FROM world_countries WHERE iso_code_2 = 'LI'), '9496'),
('Eschen', (SELECT id FROM world_countries WHERE iso_code_2 = 'LI'), '9492'),
('Mauren', (SELECT id FROM world_countries WHERE iso_code_2 = 'LI'), '9493'),
('Triesenberg', (SELECT id FROM world_countries WHERE iso_code_2 = 'LI'), '9497'), -- Largest municipality by area, Walser culture
('Ruggell', (SELECT id FROM world_countries WHERE iso_code_2 = 'LI'), '9491'),
('Gamprin', (SELECT id FROM world_countries WHERE iso_code_2 = 'LI'), '9487'),
('Schellenberg', (SELECT id FROM world_countries WHERE iso_code_2 = 'LI'), '9488'),
('Planken', (SELECT id FROM world_countries WHERE iso_code_2 = 'LI'), '9498'); -- Smallest municipality by population

-- End of Liechtenstein municipality list (All 11 municipalities)

/*
-- ========================================
-- == Información sobre Liechtenstein ==
-- ========================================
--
-- Descripción General:
-- El Principado de Liechtenstein es un microestado sin salida al mar ubicado en
-- Europa Central, en los Alpes, entre Suiza al oeste y sur, y Austria al este y
-- norte. Es el cuarto país más pequeño de Europa. Es una monarquía constitucional
-- hereditaria sobre una base democrática y parlamentaria. Es conocido por ser un
-- centro financiero y por su alto nivel de vida.
--
-- Ciudades Principales (Municipios):
-- Liechtenstein se divide en 11 municipios (Gemeinden). No hay grandes ciudades
-- en el sentido tradicional.
-- * Vaduz: La capital, sede del parlamento y del castillo principesco.
-- * Schaan: El municipio más poblado, importante centro económico e industrial.
-- * Triesen, Balzers, Eschen, Mauren: Otros municipios significativos.
-- * Triesenberg: Municipio de montaña con una cultura Walser distintiva.
-- * La lista incluye los 11 municipios que componen el país.
--
-- Un Poco de Historia:
-- El territorio formó parte de la provincia romana de Recia y luego del Sacro
-- Imperio Romano Germánico. El Principado de Liechtenstein fue establecido dentro
-- del Imperio en 1719, uniendo los señoríos de Schellenberg y Vaduz, comprados
-- por la familia principesca de Liechtenstein (originaria de Austria). Logró la
-- plena soberanía en 1806 tras la disolución del Sacro Imperio. Mantuvo estrechos
-- lazos con el Imperio Austriaco (luego Austrohúngaro) hasta la Primera Guerra
-- Mundial. Desde entonces, ha estado en unión aduanera y monetaria con Suiza, y
-- Suiza representa sus intereses diplomáticos en muchos países. Se ha mantenido
-- neutral y se convirtió en un próspero centro financiero en el siglo XX.
--
-- Datos Adicionales:
-- El alemán es el idioma oficial. El franco suizo (CHF) es la moneda oficial.
-- Liechtenstein es uno de los pocos países del mundo doblemente sin salida al mar
-- (junto con Uzbekistán). Tiene uno de los PIB per cápita más altos del mundo.
-- No tiene aeropuerto propio (usa el de Zúrich) ni ejército (la defensa es
-- responsabilidad indirecta de Suiza). Es miembro del Espacio Económico Europeo (EEE)
-- pero no de la Unión Europea.
--
*/
