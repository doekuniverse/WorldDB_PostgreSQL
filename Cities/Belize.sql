-- SQL Script to insert a representative sample of significant cities, towns, and villages for Belize (BZ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Belize (BZ).

-- NOTE: This list includes the capital, major towns, district capitals, and significant villages.
-- Listing every single locality is IMPOSSIBLE.
-- Postal codes are not used in Belize; using '0000' as a placeholder.

-- Inserting cities/villages for Belize (BZ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Belmopan', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- Capital
('Belize City', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- Largest city, former capital
('San Ignacio', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- Major town (Cayo District)
('Santa Elena', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- Twin town with San Ignacio (Cayo)
('Orange Walk Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- District Capital (Orange Walk)
('Corozal Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- District Capital (Corozal)
('Dangriga', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- District Capital (Stann Creek)
('Punta Gorda', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- District Capital (Toledo)
('San Pedro Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- Major town (Ambergris Caye)
('Benque Viejo del Carmen', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- Town (Cayo District, near Guatemala border)
('Placencia', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- Village/Peninsula (Stann Creek)
('Hopkins', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- Garifuna village (Stann Creek)
('Sarteneja', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- Village (Corozal District)
('Independence and Mango Creek', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- Villages (Stann Creek)
('Ladyville', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- Village (Belize District, near airport)
('Caye Caulker', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'), -- Island village
('Shipyard', (SELECT id FROM world_countries WHERE iso_code_2 = 'BZ'), '0000'); -- Mennonite community (Orange Walk)

-- End of Belize locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Belize ==
-- ====================================
--
-- Descripción General:
-- Belize es un país ubicado en la costa noreste de Centroamérica. Limita con México
-- al norte, Guatemala al oeste y sur, y el Mar Caribe al este. Es el único país
-- de Centroamérica continental cuyo idioma oficial es el inglés. Es conocido por
-- su extrema biodiversidad, sus selvas tropicales, sus ruinas mayas y, sobre todo,
-- por la Barrera del Arrecife de Belice, la segunda más grande del mundo, declarada
-- Patrimonio de la Humanidad por la UNESCO.
--
-- Ciudades Principales:
-- * Belmopan: La capital, una ciudad planificada construida en el interior después
--   de que el huracán Hattie devastara la antigua capital, Belize City, en 1961.
-- * Belize City: La ciudad más grande, principal puerto y centro comercial histórico.
-- * San Ignacio: Principal centro urbano en el distrito de Cayo, puerta de entrada
--   a ruinas mayas y reservas naturales.
-- * Orange Walk Town y Corozal Town: Centros importantes en el norte.
-- * Dangriga y Punta Gorda: Centros principales en el sur, con fuerte influencia
--   cultural Garífuna y Maya, respectivamente.
-- * San Pedro Town: Principal localidad en Ambergris Caye, centro turístico clave.
--
-- Un Poco de Historia:
-- El territorio fue el corazón de la civilización Maya clásica. Fue colonizado
-- por leñadores británicos (Baymen) en los siglos XVII y XVIII, convirtiéndose
-- gradualmente en la colonia de Honduras Británica. Logró el autogobierno en
-- 1964 y la independencia total del Reino Unido en 1981, aunque Guatemala mantuvo
-- una reclamación territorial (aún parcialmente disputada).
--
-- Datos Adicionales:
-- Belize tiene la densidad de población más baja de Centroamérica. Es culturalmente
-- diverso, con importantes poblaciones Mestiza, Criolla, Maya, Garífuna y Menonita.
-- El Gran Agujero Azul (Great Blue Hole) es una famosa atracción de buceo.
--
*/
