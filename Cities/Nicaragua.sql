-- SQL Script to insert a representative sample of significant cities and municipalities for Nicaragua (NI).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Nicaragua (NI).

-- NOTE: Nicaragua has many municipalities and smaller localities. This list includes the capital,
-- departmental/regional capitals, and a broad sample of major cities and significant municipalities.
-- Listing every single locality (comarca, barrio) is IMPOSSIBLE.
-- Postal codes are not consistently used; using '0000' as a placeholder.

-- Inserting cities for Nicaragua (NI) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Departmental/Regional Capitals / Major Cities
('Managua', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- National Capital (Managua Department)
('León', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- León Department Capital
('Masaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Masaya Department Capital
('Tipitapa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Managua Department (Major city)
('Chinandega', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Chinandega Department Capital
('Matagalpa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Matagalpa Department Capital
('Estelí', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Estelí Department Capital
('Granada', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Granada Department Capital (Colonial city)
('Jinotega', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Jinotega Department Capital
('Bluefields', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- South Caribbean Coast Autonomous Region Capital
('Puerto Cabezas (Bilwi)', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- North Caribbean Coast Autonomous Region Capital
('Juigalpa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Chontales Department Capital
('Ocotal', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Nueva Segovia Department Capital
('Rivas', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Rivas Department Capital
('Boaco', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Boaco Department Capital
('Jinotepe', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Carazo Department Capital
('Somoto', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Madriz Department Capital
('San Carlos', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Río San Juan Department Capital

-- Other Significant Municipalities & Towns (Sample)
('Ciudad Sandino', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Managua Department (Metro Area)
('El Viejo', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Chinandega Department
('Corinto', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Chinandega Department (Main Pacific port)
('Diriamba', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Carazo Department
('Chichigalpa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Chinandega Department
('Siuna', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- North Caribbean Coast Autonomous Region
('Rosita', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- North Caribbean Coast Autonomous Region
('Bonanza', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- North Caribbean Coast Autonomous Region
('Nueva Guinea', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- South Caribbean Coast Autonomous Region
('El Rama', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- South Caribbean Coast Autonomous Region (River port)
('Condega', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Estelí Department
('Somotillo', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Chinandega Department
('Sébaco', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'), -- Matagalpa Department
('La Concepción (La Concha)', (SELECT id FROM world_countries WHERE iso_code_2 = 'NI'), '0000'); -- Masaya Department

-- End of Nicaragua city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Nicaragua ==
-- ====================================
--
-- Descripción General:
-- Nicaragua es el país más grande de América Central por área. Limita con Honduras
-- al noroeste, el Mar Caribe al este, Costa Rica al sur y el Océano Pacífico al
-- suroeste. Es conocido como la "tierra de lagos y volcanes". Alberga los dos lagos
-- más grandes de Centroamérica: el Lago de Managua (Xolotlán) y el Lago de Nicaragua
-- (Cocibolca, que contiene tiburones de agua dulce). Una cadena de volcanes atraviesa
-- el oeste del país.
--
-- Ciudades Principales:
-- * Managua: La capital y ciudad más grande, ubicada a orillas del Lago de Managua.
--   Ha sido reconstruida varias veces debido a terremotos.
-- * León: Segunda ciudad más grande, importante centro cultural e histórico, antigua
--   capital rival de Granada. Su catedral es Patrimonio de la Humanidad.
-- * Masaya: Conocida por su volcán activo cercano y sus mercados de artesanías.
-- * Granada: Ciudad colonial bien conservada a orillas del Lago de Nicaragua, importante
--   centro turístico.
-- * Chinandega, Matagalpa, Estelí: Principales ciudades en las regiones del Pacífico
--   norte y central.
-- * Bluefields y Puerto Cabezas (Bilwi): Principales centros urbanos en las Regiones
--   Autónomas de la Costa Caribe (Norte y Sur).
-- * La lista incluye también las capitales de todos los departamentos y regiones
--   autónomas, y otras ciudades significativas.
--
-- Un Poco de Historia:
-- Habitada por diversos pueblos indígenas. Fue explorada y colonizada por España en
-- el siglo XVI. Formó parte de la Capitanía General de Guatemala. Se independizó de
-- España en 1821 y formó parte brevemente del Imperio Mexicano y luego de la República
-- Federal de Centroamérica, antes de convertirse en una república independiente en
-- 1838. La historia nicaragüense ha estado marcada por la rivalidad entre liberales
-- (León) y conservadores (Granada), intervenciones extranjeras (incluyendo la de
-- William Walker en el siglo XIX y múltiples intervenciones de EE.UU. en el XX), la
-- larga dictadura de la familia Somoza (apoyada por EE.UU.), y la Revolución Sandinista
-- de 1979 que derrocó a Somoza. Siguió la Guerra de la Contra en los años 80 (con
-- la Contra apoyada por EE.UU. contra el gobierno Sandinista). Hubo una transición
-- democrática en 1990. Daniel Ortega (líder sandinista) regresó al poder en 2007 y
-- su gobierno ha sido criticado por volverse cada vez más autoritario, especialmente
-- tras las protestas de 2018.
--
-- Datos Adicionales:
-- El español es el idioma oficial, pero también se hablan lenguas indígenas y criollas
-- en la costa Caribe. Nicaragua es famosa por sus poetas (Rubén Darío es un héroe
-- nacional), sus volcanes y lagos. El Gallo Pinto es un plato típico similar al de
-- Costa Rica.
--
*/
