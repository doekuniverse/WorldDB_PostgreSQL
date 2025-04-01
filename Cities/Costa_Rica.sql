-- SQL Script to insert a representative sample of significant cities and towns for Costa Rica (CR).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Costa Rica (CR).

-- NOTE: This list includes the capital, provincial capitals, major canton centers (cabeceras),
-- and significant towns/districts. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Costa Rica (CR) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Cities
('San José', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '10101'), -- National Capital & San José Province Capital
('Alajuela', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '20101'), -- Alajuela Province Capital
('Cartago', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '30101'), -- Cartago Province Capital
('Heredia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '40101'), -- Heredia Province Capital
('Liberia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '50101'), -- Guanacaste Province Capital
('Puntarenas', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '60101'), -- Puntarenas Province Capital
('Limón', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '70101'), -- Limón Province Capital (Puerto Limón)

-- Major Canton Centers & Other Significant Towns (Sample)
('Desamparados', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '10301'), -- San José Province (Metro Area)
('Guadalupe', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '11301'), -- Goicoechea Canton Seat (San José Metro)
('San Juan', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '11401'), -- Tibás Canton Seat (San José Metro)
('San Vicente', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '11501'), -- Moravia Canton Seat (San José Metro)
('San Pedro', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '11801'), -- Montes de Oca Canton Seat (San José Metro)
('Curridabat', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '11901'), -- Curridabat Canton Seat (San José Metro)
('Escazú', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '10201'), -- Escazú Canton Seat (San José Metro)
('Santa Ana', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '10901'), -- Santa Ana Canton Seat (San José Metro)
('Tres Ríos', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '30301'), -- La Unión Canton Seat (Cartago Metro)
('Paraíso', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '30201'), -- Paraíso Canton Seat (Cartago Province)
('Turrialba', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '30501'), -- Turrialba Canton Seat (Cartago Province)
('San Isidro de El General', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '11901'), -- Pérez Zeledón Canton Seat (San José Province) - PC needs check, example
('Ciudad Quesada', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '21001'), -- San Carlos Canton Seat (Alajuela Province)
('Grecia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '20301'), -- Grecia Canton Seat (Alajuela Province)
('San Ramón', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '20201'), -- San Ramón Canton Seat (Alajuela Province)
('Palmares', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '20701'), -- Palmares Canton Seat (Alajuela Province)
('Naranjo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '20601'), -- Naranjo Canton Seat (Alajuela Province)
('Orotina', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '20901'), -- Orotina Canton Seat (Alajuela Province)
('Santo Domingo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '40301'), -- Santo Domingo Canton Seat (Heredia Province)
('Nicoya', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '50201'), -- Nicoya Canton Seat (Guanacaste Province)
('Santa Cruz', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '50301'), -- Santa Cruz Canton Seat (Guanacaste Province)
('Cañas', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '50601'), -- Cañas Canton Seat (Guanacaste Province)
('Esparza', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '60201'), -- Esparza Canton Seat (Puntarenas Province)
('Quepos', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '60601'), -- Aguirre Canton Seat (Puntarenas Province)
('Golfito', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '60701'), -- Golfito Canton Seat (Puntarenas Province)
('Jacó', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '61101'), -- Garabito Canton Seat (Puntarenas Province)
('Guápiles', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '70201'), -- Pococí Canton Seat (Limón Province)
('Siquirres', (SELECT id FROM world_countries WHERE iso_code_2 = 'CR'), '70301'); -- Siquirres Canton Seat (Limón Province)

-- End of Costa Rica city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Costa Rica ==
-- ====================================
--
-- Descripción General:
-- Costa Rica es un país ubicado en América Central, limitando con Nicaragua al
-- norte, el Mar Caribe al este, Panamá al sureste y el Océano Pacífico al oeste.
-- Es conocido por su larga tradición democrática, su estabilidad política y por
-- haber abolido su ejército en 1949. Posee una extraordinaria biodiversidad y es
-- un destino líder mundial en ecoturismo, con una gran proporción de su territorio
-- protegido en parques nacionales y reservas.
--
-- Ciudades Principales:
-- * San José: La capital y ciudad más grande, ubicada en el Valle Central. Es el
--   centro político, económico y cultural del país, formando una gran área
--   metropolitana con cantones vecinos como Desamparados, Goicoechea (Guadalupe),
--   Tibás, Moravia, Montes de Oca (San Pedro), Curridabat, Escazú y Santa Ana.
-- * Alajuela, Cartago y Heredia: Capitales provinciales y ciudades importantes
--   que también forman parte del Gran Área Metropolitana (GAM) en el Valle Central.
-- * Liberia: Principal ciudad y capital de la provincia de Guanacaste, centro
--   turístico para las playas del Pacífico norte.
-- * Puntarenas: Principal puerto en la costa del Pacífico.
-- * Limón: Principal puerto en la costa del Caribe.
-- * San Isidro de El General: Ciudad más grande de la zona sur.
-- * Ciudad Quesada: Principal centro de la zona norte.
-- * La lista incluye también las cabeceras de muchos cantones importantes.
--
-- Un Poco de Historia:
-- Habitada por pueblos indígenas, fue explorada por Colón y colonizada por España.
-- Formó parte de la Capitanía General de Guatemala. Se independizó de España en
-- 1821 y brevemente formó parte del Imperio Mexicano y luego de la República
-- Federal de Centroamérica, antes de convertirse en una nación totalmente
-- independiente. A diferencia de muchos de sus vecinos, Costa Rica evitó largos
-- periodos de dictadura o guerra civil (con la excepción de una breve guerra civil
-- en 1948 que llevó a la abolición del ejército). Ha priorizado la inversión en
-- educación, salud y protección ambiental.
--
-- Datos Adicionales:
-- El español es el idioma oficial. El lema no oficial del país es "Pura Vida",
-- que refleja una filosofía de vida relajada y optimista. El café fue históricamente
-- un producto de exportación clave. Costa Rica alberga numerosos volcanes activos
-- y una increíble variedad de flora y fauna.
--
*/
