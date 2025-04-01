-- SQL Script to insert a representative sample of significant cities and towns for Côte d'Ivoire (CI).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Côte d'Ivoire (CI).

-- NOTE: This list includes the capitals, major cities, and significant towns/regional centers.
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are not generally used; using '0000' as a placeholder.

-- Inserting cities for Côte d'Ivoire (CI) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capitals & Major Cities / Regional Centers
('Yamoussoukro', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Political Capital
('Abidjan', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Economic Capital, Largest City
('Bouaké', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Second largest city
('Daloa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Major city (Haut-Sassandra)
('San-Pédro', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Major port city (Bas-Sassandra)
('Korhogo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Major city in the north (Savanes)
('Man', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Major city in the west (Montagnes)
('Gagnoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Major city (Gôh)
('Divo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Lôh-Djiboua Region Capital
('Anyama', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Part of Abidjan metro area
('Abengourou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Comoé District / Indénié-Djuablin Region Capital
('Soubré', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Nawa Region Capital (Bas-Sassandra)
('Issia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Haut-Sassandra Region town
('Odienné', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Denguélé District / Kabadougou Region Capital
('Bondoukou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Zanzan District / Gontougo Region Capital
('Séguéla', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Woroba District / Worodougou Region Capital
('Ferkessédougou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Savanes District / Tchologo Region Capital
('Dimbokro', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Lacs District / N'Zi Region Capital
('Adzopé', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Lagunes District / La Mé Region Capital
('Agboville', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Lagunes District / Agnéby-Tiassa Region Capital
('Grand-Bassam', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Comoé District / Sud-Comoé Region (Historic capital, UNESCO site)
('Dabou', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Lagunes District / Grands-Ponts Region Capital
('Tiassalé', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Lagunes District / Agnéby-Tiassa Region town
('Toumodi', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Lacs District / Bélier Region Capital (near Yamoussoukro)
('Sassandra', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Bas-Sassandra District / Gbôklé Region Capital
('Lakota', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Gôh-Djiboua District / Lôh-Djiboua Region town
('Bonoua', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Comoé District / Sud-Comoé Region town
('Bouaflé', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Sassandra-Marahoué District / Marahoué Region Capital
('Katiola', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Vallée du Bandama District / Hambol Region Capital
('Mankono', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Woroba District / Béré Region Capital
('Bouna', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'), -- Zanzan District / Bounkani Region Capital
('Touba', (SELECT id FROM world_countries WHERE iso_code_2 = 'CI'), '0000'); -- Woroba District / Bafing Region Capital

-- End of Côte d'Ivoire city list (Representative Sample)

/*
-- ========================================
-- == Información sobre Côte d'Ivoire ==
-- ========================================
--
-- Descripción General:
-- Costa de Marfil (Côte d'Ivoire) es un país ubicado en África Occidental, con una
-- costa en el Golfo de Guinea (Océano Atlántico). Limita con Liberia y Guinea al
-- oeste, Malí y Burkina Faso al norte, y Ghana al este. Su geografía varía desde
-- lagunas costeras y selvas tropicales en el sur hasta sabanas en el centro y norte.
-- Es el mayor productor y exportador mundial de cacao y un importante productor
-- de café y aceite de palma.
--
-- Ciudades Principales:
-- * Yamoussoukro: La capital política oficial desde 1983, lugar de nacimiento del
--   primer presidente, Félix Houphouët-Boigny. Famosa por su enorme basílica.
-- * Abidjan: La ciudad más grande, principal centro económico, cultural y de facto
--   la capital administrativa. Es una de las ciudades francófonas más grandes del mundo.
-- * Bouaké: La segunda ciudad más grande, ubicada en el centro del país.
-- * Daloa, San-Pédro (importante puerto), Korhogo, Man, Gagnoa: Otras ciudades
--   importantes y centros regionales.
-- * La lista incluye también las capitales de distrito/región y otras ciudades significativas.
--
-- Un Poco de Historia:
-- La región albergó varios estados precoloniales. Francia estableció un protectorado
-- a finales del siglo XIX y se convirtió en una colonia francesa. Obtuvo la
-- independencia en 1960 bajo el liderazgo de Félix Houphouët-Boigny, quien gobernó
-- hasta su muerte en 1993. Durante su mandato, el país experimentó una notable
-- estabilidad política y prosperidad económica ("el milagro marfileño"). Tras su
-- muerte, el país entró en un período de inestabilidad, incluyendo un golpe de
-- estado en 1999 y dos guerras civiles (principios y finales de la década de 2000),
-- a menudo con divisiones políticas y étnicas entre el norte y el sur. En años
-- recientes, el país ha experimentado una recuperación económica y una mayor
-- estabilidad política.
--
-- Datos Adicionales:
-- El francés es el idioma oficial, pero se hablan muchas lenguas locales (Baoulé,
-- Dioula, Bété, etc.). El país es étnicamente muy diverso. La Basílica de Nuestra
-- Señora de la Paz de Yamoussoukro es una de las iglesias más grandes del mundo.
-- El fútbol es muy popular.
--
*/
