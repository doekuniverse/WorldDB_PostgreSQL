-- SQL Script to insert the parishes (main administrative/population centers) for Andorra (AD).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Andorra (AD).

-- NOTE: This list includes all 7 parishes of Andorra.
-- Postal codes are in the format AD###.

-- Inserting parishes for Andorra (AD) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Andorra la Vella', (SELECT id FROM world_countries WHERE iso_code_2 = 'AD'), 'AD500'), -- Capital Parish
('Escaldes-Engordany', (SELECT id FROM world_countries WHERE iso_code_2 = 'AD'), 'AD700'), -- Parish
('Encamp', (SELECT id FROM world_countries WHERE iso_code_2 = 'AD'), 'AD200'), -- Parish
('Sant Julià de Lòria', (SELECT id FROM world_countries WHERE iso_code_2 = 'AD'), 'AD600'), -- Parish
('La Massana', (SELECT id FROM world_countries WHERE iso_code_2 = 'AD'), 'AD400'), -- Parish
('Canillo', (SELECT id FROM world_countries WHERE iso_code_2 = 'AD'), 'AD100'), -- Parish
('Ordino', (SELECT id FROM world_countries WHERE iso_code_2 = 'AD'), 'AD300'); -- Parish

-- End of Andorra parish list

/*
-- ====================================
-- == Información sobre Andorra ==
-- ====================================
--
-- Descripción General:
-- Andorra es un pequeño principado soberano situado en los Pirineos orientales,
-- entre Francia y España. Es conocido por sus estaciones de esquí, su estatus
-- como paraíso fiscal (aunque esto ha cambiado parcialmente) y su hermoso
-- paisaje montañoso. Es el sexto país más pequeño de Europa.
--
-- Ciudades Principales (Parroquias):
-- El país se divide en 7 parroquias, que son las principales divisiones
-- administrativas y centros poblados. Las más importantes son:
-- * Andorra la Vella: La capital y centro comercial.
-- * Escaldes-Engordany: Conocida por sus aguas termales (Caldea) y comercio.
-- * Encamp y Canillo: Importantes centros turísticos y de esquí.
--
-- Un Poco de Historia:
-- Andorra es uno de los estados más antiguos de Europa, con orígenes que se
-- remontan al siglo IX o antes. Su particular sistema de gobierno, un
-- coprincipado parlamentario, tiene raíces medievales, con jefes de estado
-- compartidos entre el Obispo de Urgell (España) y el Presidente de Francia.
-- Se mantuvo neutral en muchos conflictos europeos y desarrolló una economía
-- basada en el comercio, el turismo y las finanzas. Obtuvo su primera
-- constitución escrita en 1993.
--
-- Datos Adicionales:
-- El catalán es el único idioma oficial. El turismo (especialmente de esquí
-- y compras) es la principal fuente de ingresos. No tiene ejército propio,
-- su defensa es responsabilidad de Francia y España.
--
*/
