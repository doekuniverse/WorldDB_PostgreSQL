-- SQL Script to insert a representative sample of significant cities and municipalities for Mexico (MX).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Mexico (MX).

-- NOTE: Mexico is vast and populous with over 2,400 municipalities. This list includes the capital,
-- state capitals, and a broad sample of major cities and significant municipalities.
-- Listing every single locality is ABSOLUTELY IMPOSSIBLE.
-- Postal codes (Código Postal) are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Mexico (MX) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & State Capitals / Major Cities
('Mexico City (Ciudad de México)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '01000'), -- National Capital (CDMX)
('Guadalajara', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '44100'), -- Jalisco State Capital
('Monterrey', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '64000'), -- Nuevo León State Capital
('Puebla', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '72000'), -- Puebla State Capital (Puebla de Zaragoza)
('Toluca', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '50000'), -- México State Capital (Toluca de Lerdo)
('Tijuana', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '22000'), -- Baja California (Major border city)
('León', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '37000'), -- Guanajuato (Major city)
('Ciudad Juárez', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '32000'), -- Chihuahua (Major border city)
('Zapopan', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '45100'), -- Jalisco (Guadalajara Metro)
('Ecatepec', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '55000'), -- México State (CDMX Metro)
('Nezahualcóyotl', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '57000'), -- México State (CDMX Metro)
('Mérida', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '97000'), -- Yucatán State Capital
('San Luis Potosí', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '78000'), -- San Luis Potosí State Capital
('Aguascalientes', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '20000'), -- Aguascalientes State Capital
('Hermosillo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '83000'), -- Sonora State Capital
('Saltillo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '25000'), -- Coahuila State Capital
('Mexicali', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '21000'), -- Baja California State Capital
('Culiacán', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '80000'), -- Sinaloa State Capital (Culiacán Rosales)
('Querétaro', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '76000'), -- Querétaro State Capital (Santiago de Querétaro)
('Morelia', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '58000'), -- Michoacán State Capital
('Chihuahua', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '31000'), -- Chihuahua State Capital
('Cancún', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '77500'), -- Quintana Roo (Major tourist city)
('Acapulco', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '39300'), -- Guerrero (Major tourist city)
('Torreón', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '27000'), -- Coahuila (Major city)
('Tlalnepantla de Baz', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '54000'), -- México State (CDMX Metro)
('Naucalpan', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '53000'), -- México State (CDMX Metro)
('Durango', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '34000'), -- Durango State Capital (Victoria de Durango)
('Tuxtla Gutiérrez', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '29000'), -- Chiapas State Capital
('Veracruz', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '91700'), -- Veracruz (Major port city)
('Xalapa', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '91000'), -- Veracruz State Capital (Xalapa-Enríquez)
('Villahermosa', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '86000'), -- Tabasco State Capital
('Cuernavaca', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '62000'), -- Morelos State Capital
('Reynosa', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '88500'), -- Tamaulipas (Major border city)
('Matamoros', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '87300'), -- Tamaulipas (Major border city)
('Mazatlán', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '82000'), -- Sinaloa (Coastal city)
('Oaxaca', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '68000'), -- Oaxaca State Capital (Oaxaca de Juárez)
('Pachuca', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '42000'), -- Hidalgo State Capital (Pachuca de Soto)
('Campeche', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '24000'), -- Campeche State Capital (San Francisco de Campeche)
('Chetumal', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '77000'), -- Quintana Roo State Capital
('Colima', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '28000'), -- Colima State Capital
('Chilpancingo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '39000'), -- Guerrero State Capital (Chilpancingo de los Bravo)
('Tepic', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '63000'), -- Nayarit State Capital
('Tlaxcala', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '90000'), -- Tlaxcala State Capital (Tlaxcala de Xicohténcatl)
('La Paz', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '23000'), -- Baja California Sur State Capital
('Ciudad Victoria', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '87000'), -- Tamaulipas State Capital
('Guanajuato', (SELECT id FROM world_countries WHERE iso_code_2 = 'MX'), '36000'); -- Guanajuato State Capital (UNESCO site)

-- End of Mexico city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Mexico ==
-- ====================================
--
-- Descripción General:
-- México, oficialmente Estados Unidos Mexicanos, es un país ubicado en la parte sur
-- de América del Norte. Limita al norte con Estados Unidos; al sur y oeste con el
-- Océano Pacífico; al sureste con Guatemala, Belice y el Mar Caribe; y al este con
-- el Golfo de México. Es una república federal presidencialista. Su geografía es
-- muy diversa, con extensas cadenas montañosas (Sierra Madre Occidental y Oriental),
-- mesetas altas en el centro, desiertos en el norte y selvas tropicales en el sur
-- y sureste. Es uno de los países con mayor biodiversidad del mundo y cuna de
-- importantes civilizaciones mesoamericanas.
--
-- Ciudades Principales:
-- * Ciudad de México (CDMX): La capital y ciudad más grande, una de las áreas
--   metropolitanas más pobladas del mundo. Centro político, económico y cultural.
--   Su centro histórico y Xochimilco son Patrimonio de la Humanidad.
-- * Guadalajara: Segunda área metropolitana, capital de Jalisco, centro cultural
--   (mariachi, tequila) y tecnológico.
-- * Monterrey: Tercera área metropolitana, capital de Nuevo León, importante centro
--   industrial en el norte.
-- * Puebla: Importante ciudad colonial (Patrimonio de la Humanidad) y centro industrial.
-- * Tijuana y Ciudad Juárez: Grandes ciudades fronterizas con Estados Unidos.
-- * León: Centro industrial importante en Guanajuato.
-- * La lista incluye también las capitales de todos los 31 estados y otras ciudades muy grandes.
--
-- Un Poco de Historia:
-- México fue cuna de avanzadas civilizaciones precolombinas como los Olmecas,
-- Teotihuacanos, Mayas y Aztecas. Fue conquistado por España a principios del siglo
-- XVI bajo Hernán Cortés, convirtiéndose en el Virreinato de Nueva España, una
-- colonia clave del Imperio Español durante tres siglos. Logró su independencia en
-- 1821 tras una larga guerra. La historia posterior incluye periodos de inestabilidad,
-- un breve imperio, la pérdida de gran parte de su territorio ante Estados Unidos
-- (Guerra México-Estadounidense 1846-48), la Reforma liberal de Benito Juárez, la
-- intervención francesa y el Segundo Imperio Mexicano, la dictadura de Porfirio Díaz,
-- y la Revolución Mexicana (ca. 1910-1920). El siglo XX estuvo dominado en gran parte
-- por el Partido Revolucionario Institucional (PRI). El país ha experimentado una
-- significativa modernización económica y transiciones democráticas en décadas recientes.
--
-- Datos Adicionales:
-- El español es el idioma oficial. México es el país hispanohablante más poblado del
-- mundo. Es famoso por su rica cultura, gastronomía (Patrimonio de la Humanidad),
-- sitios arqueológicos (Teotihuacán, Chichén Itzá, Palenque), música (mariachi,
-- ranchera), playas y arte (Frida Kahlo, Diego Rivera). Es miembro del G20 y una
-- de las principales economías de América Latina.
--
*/
