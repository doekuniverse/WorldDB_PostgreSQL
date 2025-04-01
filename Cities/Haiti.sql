-- SQL Script to insert a representative sample of significant cities and towns for Haiti (HT).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Haiti (HT).

-- NOTE: Haiti is densely populated with many localities. This list includes the capital,
-- departmental capitals, and a broad sample of major cities and significant communes.
-- Listing every single locality is IMPOSSIBLE.
-- Postal codes are not generally used; using '0000' as a placeholder.

-- Inserting cities for Haiti (HT) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Departmental Capitals / Major Cities
('Port-au-Prince', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- National Capital (Ouest Department)
('Cap-Haïtien', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Nord Department Capital
('Gonaïves', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Artibonite Department Capital
('Les Cayes', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Sud Department Capital
('Jacmel', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Sud-Est Department Capital
('Jérémie', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Grand'Anse Department Capital
('Port-de-Paix', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Nord-Ouest Department Capital
('Hinche', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Centre Department Capital
('Fort-Liberté', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Nord-Est Department Capital
('Miragoâne', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Nippes Department Capital

-- Major Communes in Port-au-Prince Metropolitan Area
('Carrefour', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Ouest Department
('Delmas', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Ouest Department
('Pétion-Ville', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Ouest Department
('Croix-des-Bouquets', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Ouest Department
('Cité Soleil', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Ouest Department (Often considered part of PAP)

-- Other Significant Cities & Towns (Sample)
('Léogâne', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Ouest Department
('Saint-Marc', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Artibonite Department
('Petit-Goâve', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Ouest Department
('Verrettes', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Artibonite Department
('Mirebalais', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Centre Department
('Ouanaminthe', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Nord-Est Department (Border town with DR)
('Limbé', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Nord Department
('Aquin', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Sud Department
('Saint-Louis-du-Nord', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Nord-Ouest Department
('Anse-à-Galets', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Ouest Department (Main town on La Gonâve island)
('Gros-Morne', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Artibonite Department
('Thomonde', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Centre Department
('Lascahobas', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Centre Department
('Arcahaie', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'), -- Ouest Department
('Cabaret', (SELECT id FROM world_countries WHERE iso_code_2 = 'HT'), '0000'); -- Ouest Department

-- End of Haiti city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Haiti ==
-- ====================================
--
-- Descripción General:
-- Haití es un país caribeño que ocupa el tercio occidental de la isla La Española,
-- la cual comparte con la República Dominicana al este. Es el tercer país más
-- grande del Caribe (después de Cuba y la República Dominicana) y también el más
-- poblado de la CARICOM. Su terreno es mayormente montañoso, con algunas llanuras
-- costeras y valles fluviales. Haití enfrenta enormes desafíos socioeconómicos y
-- ambientales, y es el país más pobre del hemisferio occidental.
--
-- Ciudades Principales:
-- * Puerto Príncipe (Port-au-Prince): La capital y ciudad abrumadoramente más
--   grande, ubicada en el Golfo de la Gonâve. Es el centro político, económico y
--   cultural, aunque muy afectado por desastres naturales y problemas sociales.
--   Su área metropolitana incluye comunas muy pobladas como Carrefour, Delmas,
--   Pétion-Ville y Cité Soleil.
-- * Cabo Haitiano (Cap-Haïtien): La segunda ciudad más grande, ubicada en la costa norte.
--   Centro histórico y cultural importante.
-- * Gonaïves: Tercera ciudad, donde se proclamó la independencia de Haití.
-- * Les Cayes y Jacmel: Principales ciudades en el sur.
-- * La lista incluye también las capitales de todos los departamentos y otras ciudades significativas.
--
-- Un Poco de Historia:
-- La isla fue habitada por los Taínos. Fue el primer lugar de América donde Colón
-- estableció un asentamiento europeo permanente. La parte occidental de la isla
-- (Haití) fue cedida por España a Francia en 1697 (Saint-Domingue). Se convirtió
-- en la colonia francesa más rica gracias a la producción masiva de azúcar basada
-- en la esclavitud africana brutal. A finales del siglo XVIII, estalló la Revolución
-- Haitiana, una compleja serie de conflictos que involucró a esclavos, libertos,
-- colonos blancos y fuerzas francesas, españolas y británicas. Liderada por figuras
-- como Toussaint Louverture y Jean-Jacques Dessalines, culminó con la declaración
-- de independencia de Haití en 1804, convirtiéndose en la primera república negra
-- independiente del mundo y la segunda república independiente de América. La
-- historia posterior ha estado marcada por una gran inestabilidad política,
-- dictaduras (como la de los Duvalier, "Papa Doc" y "Baby Doc"), pobreza endémica,
-- intervenciones extranjeras y devastadores desastres naturales (terremoto de 2010,
-- huracanes).
--
-- Datos Adicionales:
-- Los idiomas oficiales son el francés y el criollo haitiano (Kreyòl Ayisyen).
-- La cultura haitiana es una rica mezcla de influencias africanas, francesas y
-- taínas, visible en su arte, música y religión (incluyendo el Vudú haitiano).
-- La deforestación es un problema ambiental grave.
--
*/
