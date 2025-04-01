-- SQL Script to insert a comprehensive list of cities, towns, and recognized localities for Aruba (AW).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Aruba (AW).

-- NOTE: This list aims to be as comprehensive as possible, including the capital, main towns,
-- and significant districts/neighbourhoods. Absolute completeness of every minor named place remains challenging.
-- Postal codes are not used for domestic mail; using '0000' as a placeholder.

-- Inserting cities/localities for Aruba (AW) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Oranjestad', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Capital
('San Nicolaas', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Second largest city
('Noord', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Town and large district
('Santa Cruz', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Town and district
('Savaneta', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Oldest town, former capital
('Paradera', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Town and district
('Tanki Leendert', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- District/Neighbourhood (Noord)
('Palm Beach', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Tourist area (Noord)
('Tanki Flip', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- District/Neighbourhood (Noord)
('Madiki', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Neighbourhood (Oranjestad West)
('Ponton', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Neighbourhood (Oranjestad West)
('Dakota', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Neighbourhood (Oranjestad East, near airport)
('Simeon Antonio', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Neighbourhood (Oranjestad East)
('Pos Chikito', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Neighbourhood (Savaneta)
('Brasil', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Neighbourhood (San Nicolaas)
('Seroe Colorado', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Area near San Nicolaas (former refinery housing)
('Angochi', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Small locality (Santa Cruz)
('Balashi', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Locality (Santa Cruz)
('Casibari', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'), -- Locality (Paradera, near rock formations)
('Bubali', (SELECT id FROM world_countries WHERE iso_code_2 = 'AW'), '0000'); -- Locality (Noord, near bird sanctuary)


-- End of Aruba locality list (Comprehensive Sample)

/*
-- ====================================
-- == Información sobre Aruba ==
-- ====================================
--
-- Descripción General:
-- Aruba es una isla y un país constituyente del Reino de los Países Bajos,
-- ubicada en el sur del Mar Caribe, frente a las costas de Venezuela. Es conocida
-- por su clima seco y soleado, sus playas de arena blanca (como Eagle Beach y
-- Palm Beach) y sus aguas tranquilas. A diferencia de muchas islas caribeñas,
-- su paisaje es árido, con cactus y los característicos árboles divi-divi
-- moldeados por el viento.
--
-- Ciudades Principales:
-- * Oranjestad: La capital y ciudad más grande, con colorida arquitectura de
--   influencia holandesa, tiendas y el puerto principal.
-- * San Nicolaas: La segunda ciudad, ubicada al sur, conocida por su pasado
--   ligado a la refinería de petróleo y, más recientemente, por sus murales
--   artísticos y ambiente caribeño.
-- * Noord: Una zona extensa que incluye muchas áreas residenciales y la popular
--   zona turística de Palm Beach.
-- * Otras áreas importantes incluyen Santa Cruz, Savaneta (antigua capital) y Paradera.
--
-- Un Poco de Historia:
-- Originalmente habitada por indígenas Arawak, fue reclamada por España y luego
-- por los Países Bajos. Su economía dependió por mucho tiempo de la minería de
-- oro, luego del aloe, y en el siglo XX, de una gran refinería de petróleo.
-- Tras el cierre de la refinería en los años 80, Aruba apostó fuertemente por
-- el turismo, que hoy es el pilar de su economía. En 1986, Aruba obtuvo un
-- estatus aparte dentro del Reino de los Países Bajos, separándose de las
-- Antillas Neerlandesas.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el neerlandés y el papiamento (una lengua criolla
-- local). El inglés y el español también son ampliamente hablados debido al
-- turismo y la proximidad a Sudamérica. El florín arubeño es la moneda oficial.
--
*/
