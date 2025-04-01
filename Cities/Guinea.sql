-- SQL Script to insert a representative sample of significant cities and towns for Guinea (GN).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Guinea (GN).

-- NOTE: This list includes the capital, regional capitals, major prefecture capitals, and significant towns.
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Guinea (GN) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals / Major Cities
('Conakry', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- National Capital & Conakry Region
('Nzérékoré', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Nzérékoré Region Capital
('Kankan', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Kankan Region Capital
('Kindia', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Kindia Region Capital
('Labé', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Labé Region Capital
('Mamou', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Mamou Region Capital
('Boké', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Boké Region Capital
('Faranah', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Faranah Region Capital

-- Other Significant Towns / Prefecture Capitals (Sample)
('Guéckédou', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Nzérékoré Region
('Siguiri', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Kankan Region (Gold mining)
('Kissidougou', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Faranah Region
('Macenta', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Nzérékoré Region
('Pita', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Mamou Region
('Dabola', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Faranah Region
('Kouroussa', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Kankan Region
('Télimélé', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Kindia Region
('Kamsar', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Boké Region (Major bauxite port)
('Fria', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Boké Region (Alumina refinery town)
('Coyah', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Kindia Region (Near Conakry)
('Dubréka', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Kindia Region (Near Conakry)
('Mandiana', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Kankan Region
('Lola', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Nzérékoré Region
('Dalaba', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Mamou Region (Mountain town)
('Gaoual', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Boké Region
('Forécariah', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Kindia Region
('Koundara', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Boké Region
('Mali', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Labé Region (Highest town)
('Tougué', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Labé Region
('Lélouma', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Labé Region
('Koubia', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Labé Region
('Dinguiraye', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Faranah Region (Historic Islamic center)
('Kérouané', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'), -- Kankan Region
('Beyla', (SELECT id FROM world_countries WHERE iso_code_2 = 'GN'), '0000'); -- Nzérékoré Region

-- End of Guinea city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Guinea ==
-- ====================================
--
-- Descripción General:
-- Guinea, oficialmente República de Guinea, es un país ubicado en África Occidental,
-- a veces llamado Guinea-Conakry para distinguirlo de otros territorios con nombres
-- similares. Limita con Guinea-Bissau al noroeste, Senegal al norte, Malí al
-- noreste, Costa de Marfil al sureste, Liberia y Sierra Leona al sur, y el Océano
-- Atlántico al oeste. Su geografía es variada, desde la costa húmeda hasta las
-- tierras altas de Fouta Djallon en el centro (fuente de importantes ríos como el
-- Níger, Senegal y Gambia), la sabana en el norte y la selva tropical en el sureste.
--
-- Ciudades Principales:
-- * Conakry: La capital, ciudad más grande y principal puerto, ubicada en una
--   península en la costa atlántica. Alberga una parte significativa de la población.
-- * Nzérékoré: La segunda ciudad más grande, principal centro en la región forestal
--   del sureste.
-- * Kankan: Tercera ciudad, centro importante en la región de la sabana oriental.
-- * Kindia, Labé, Mamou, Boké, Faranah: Capitales de las demás regiones administrativas.
-- * Kamsar: Importante puerto para la exportación de bauxita.
-- * La lista incluye también las capitales de muchas prefecturas y otras ciudades significativas.
--
-- Un Poco de Historia:
-- La región formó parte de los grandes imperios de África Occidental (Ghana, Malí,
-- Songhai) y fue el centro del Imamato de Futa Yallon. Fue colonizada por Francia
-- a finales del siglo XIX como Guinea Francesa. En 1958, bajo el liderazgo de
-- Ahmed Sékou Touré, Guinea fue la única colonia francesa que votó por la
-- independencia inmediata, rechazando la propuesta de Charles de Gaulle de una
-- Comunidad Francesa. Touré gobernó de forma autoritaria hasta su muerte en 1984.
-- Le siguió un golpe militar liderado por Lansana Conté, quien gobernó hasta su
-- muerte en 2008. Hubo otro golpe militar en 2008, seguido por una transición
-- democrática y la elección de Alpha Condé en 2010. Condé fue reelegido pero luego
-- derrocado por otro golpe militar en 2021. El país ha enfrentado periodos de
-- inestabilidad política y desafíos económicos a pesar de sus ricos recursos naturales.
--
-- Datos Adicionales:
-- El francés es el idioma oficial, pero se hablan muchas lenguas locales (Fula,
-- Mandinka, Susu, etc.). El Islam es la religión predominante. Guinea posee algunas
-- de las mayores reservas mundiales de bauxita (mineral de aluminio) y también tiene
-- importantes depósitos de mineral de hierro, diamantes y oro. Las tierras altas de
-- Fouta Djallon son conocidas como la "torre de agua" de África Occidental.
--
*/
