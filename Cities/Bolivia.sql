-- SQL Script to insert a representative sample of significant cities and towns for Bolivia (BO).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Bolivia (BO).

-- NOTE: Bolivia is large and diverse. This list includes the capitals, departmental capitals,
-- and a broad sample of major cities and significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are examples (often 4 digits) or '0000' placeholder.

-- Inserting cities for Bolivia (BO) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capitals & Departmental Capitals
('La Paz', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0201'), -- Seat of Government, La Paz Dept. Capital
('Sucre', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0101'), -- Constitutional Capital, Chuquisaca Dept. Capital
('Santa Cruz de la Sierra', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0701'), -- Santa Cruz Dept. Capital, Largest City
('Cochabamba', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0301'), -- Cochabamba Dept. Capital
('El Alto', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0202'), -- Major city near La Paz (often considered de facto part of metro area)
('Oruro', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0401'), -- Oruro Dept. Capital
('Potosí', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0501'), -- Potosí Dept. Capital, UNESCO site
('Tarija', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0601'), -- Tarija Dept. Capital
('Trinidad', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0801'), -- Beni Dept. Capital
('Cobija', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0901'), -- Pando Dept. Capital

-- Other Major Cities & Significant Towns (Sample)
('Montero', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0704'), -- Santa Cruz Dept.
('Sacaba', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0302'), -- Cochabamba Dept.
('Quillacollo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0305'), -- Cochabamba Dept.
('Riberalta', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0803'), -- Beni Dept.
('Tiquipaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0306'), -- Cochabamba Dept.
('Viacha', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0000'), -- La Paz Dept.
('Yacuiba', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0602'), -- Tarija Dept. (Border town)
('Warnes', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0705'), -- Santa Cruz Dept.
('La Guardia', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0706'), -- Santa Cruz Dept.
('Villazón', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0504'), -- Potosí Dept. (Border town)
('Camiri', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0707'), -- Santa Cruz Dept.
('Bermejo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0603'), -- Tarija Dept. (Border town)
('Tupiza', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0505'), -- Potosí Dept.
('Llallagua', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0506'), -- Potosí Dept. (Mining town)
('Uyuni', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0507'), -- Potosí Dept. (Near Salar de Uyuni)
('Guayaramerín', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0804'), -- Beni Dept. (Border town)
('San Borja', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0805'), -- Beni Dept.
('Patacamaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0000'), -- La Paz Dept.
('Caranavi', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0000'), -- La Paz Dept. (Yungas region)
('Challapata', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0402'), -- Oruro Dept.
('Villa Montes', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0604'), -- Tarija Dept. (Chaco region)
('Punata', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0307'), -- Cochabamba Dept.
('Cotoca', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0708'), -- Santa Cruz Dept.
('Mineros', (SELECT id FROM world_countries WHERE iso_code_2 = 'BO'), '0709'); -- Santa Cruz Dept.

-- End of Bolivia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Bolivia ==
-- ====================================
--
-- Descripción General:
-- Bolivia, oficialmente Estado Plurinacional de Bolivia, es un país sin salida al
-- mar ubicado en el centro-oeste de América del Sur. Es conocido por su gran
-- diversidad geográfica, que abarca desde las altas cumbres de la Cordillera de
-- los Andes y el Altiplano hasta las tierras bajas tropicales de la cuenca del
-- Amazonas. Posee una rica diversidad cultural, con una de las mayores
-- proporciones de población indígena de América Latina.
--
-- Ciudades Principales:
-- * La Paz: Sede del gobierno y centro administrativo, famosa por ser una de las
--   capitales (administrativas) más altas del mundo. Cerca se encuentra El Alto,
--   una de las ciudades de más rápido crecimiento.
-- * Sucre: La capital constitucional y sede del poder judicial.
-- * Santa Cruz de la Sierra: La ciudad más poblada y el motor económico del país,
--   ubicada en las tierras bajas orientales.
-- * Cochabamba: Importante ciudad ubicada en un valle fértil, conocida por su clima
--   agradable y gastronomía.
-- * Potosí: Ciudad histórica minera (plata), una de las más altas del mundo,
--   declarada Patrimonio de la Humanidad por la UNESCO.
-- * Oruro: Conocida por su famoso carnaval, también Patrimonio de la Humanidad.
-- * La lista incluye también las demás capitales departamentales y otras ciudades importantes.
--
-- Un Poco de Historia:
-- La región fue hogar de importantes culturas precolombinas como Tiwanaku y formó
-- parte del Imperio Inca. Fue colonizada por España en el siglo XVI (conocida como
-- Alto Perú), siendo una fuente crucial de plata (especialmente de Potosí). Logró
-- su independencia en 1825, liderada en parte por Simón Bolívar, de quien toma su
-- nombre. La historia posterior estuvo marcada por la inestabilidad política,
-- pérdidas territoriales en guerras con países vecinos (como la Guerra del Pacífico
-- y la Guerra del Chaco) y luchas sociales. En años recientes, ha habido un mayor
-- reconocimiento y empoderamiento de los pueblos indígenas.
--
-- Datos Adicionales:
-- Bolivia comparte el Lago Titicaca (el lago navegable más alto del mundo) con Perú.
-- El Salar de Uyuni es el desierto de sal más grande del mundo y contiene enormes
-- reservas de litio. Tiene 36 idiomas oficiales reconocidos, aunque el español y
-- varias lenguas indígenas como el quechua y el aymara son las más habladas.
--
*/
