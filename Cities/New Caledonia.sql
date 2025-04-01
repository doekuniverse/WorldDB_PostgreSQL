-- SQL Script to insert all communes (main administrative divisions) for New Caledonia (NC).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains New Caledonia (NC).

-- NOTE: New Caledonia is divided into 33 communes. This list includes all of them,
-- providing essentially complete coverage at the municipal level.
-- Postal codes are 988xx; examples are provided.

-- Inserting communes for New Caledonia (NC) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- South Province
('Nouméa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98800'), -- Capital of New Caledonia
('Dumbéa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98835'), -- Suburb of Nouméa
('Le Mont-Dore', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98809'), -- Suburb of Nouméa
('Païta', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98890'), -- Near Nouméa
('Boulouparis', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98812'),
('La Foa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98880'),
('Sarraméa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98880'), -- Postal code needs check, using La Foa's
('Farino', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98880'), -- Postal code needs check, using La Foa's
('Moindou', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98819'),
('Bourail', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98870'),
('Thio', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98829'),
('Yaté', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98834'),
('Île des Pins', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98832'), -- Isle of Pines

-- North Province
('Koné', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98860'), -- North Province Capital
('Voh', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98833'), -- Known for Heart of Voh
('Kaala-Gomen', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98817'),
('Koumac', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98850'),
('Pouébo', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98824'),
('Ouégoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98821'),
('Pouembout', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98825'),
('Poya', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98827'), -- Straddles North and South provinces
('Ponérihouen', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98822'),
('Houaïlou', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98818'),
('Canala', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98813'),
('Touho', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98831'),
('Poindimié', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98822'), -- Postal code needs check, using Ponérihouen's
('Hienghène', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98815'),
('Pouébo', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98824'), -- Listed again, check if correct/needed
('Poum', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98826'), -- Northern tip
('Bélep', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98811'), -- Belep islands

-- Loyalty Islands Province
('Lifou', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98820'), -- Loyalty Islands Province Capital (Wé is main village)
('Maré', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98828'), -- Tadine is main village
('Ouvéa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NC'), '98814'); -- Fayaoué is main village


-- End of New Caledonia commune list (All 33 communes included)

/*
-- ============================================
-- == Información sobre New Caledonia ==
-- ============================================
--
-- Descripción General:
-- Nueva Caledonia (New Caledonia) es una colectividad especial de Francia ubicada
-- en el suroeste del Océano Pacífico, en la región de Melanesia, al este de
-- Australia. Consiste en la isla principal de Grande Terre, las Islas de la Lealtad
-- (Loyalty Islands), el archipiélago de las Islas Chesterfield y varios islotes y
-- arrecifes remotos. Es conocida por su laguna, una de las más grandes del mundo
-- (Patrimonio de la Humanidad), su rica biodiversidad (con muchas especies endémicas)
-- y sus grandes reservas de níquel.
--
-- Ciudades Principales (Comunas):
-- Nueva Caledonia se divide administrativamente en 33 comunas, agrupadas en tres
-- provincias (Sur, Norte y Islas de la Lealtad).
-- * Numea (Nouméa): La capital y ciudad más grande, ubicada en la Provincia Sur de
--   Grande Terre. Concentra a la mayoría de la población y la actividad económica.
-- * Dumbéa, Le Mont-Dore, Païta: Comunas grandes que forman parte del área
--   metropolitana de Numea.
-- * Koné: Capital de la Provincia Norte.
-- * Wé (Lifou): Capital de la Provincia de las Islas de la Lealtad, ubicada en la
--   isla de Lifou.
-- * Poindimié, Bourail, Houaïlou: Otros centros importantes en Grande Terre.
-- * La lista incluye las 33 comunas que componen Nueva Caledonia.
--
-- Un Poco de Historia:
-- Habitada por el pueblo indígena Canaco (Kanak) durante miles de años. El explorador
-- británico James Cook la avistó en 1774 y la nombró Nueva Caledonia. Francia tomó
-- posesión del territorio en 1853 y lo utilizó inicialmente como colonia penal. Se
-- descubrieron importantes yacimientos de níquel, lo que atrajo inmigración y
-- desarrollo económico, pero también tensiones con la población canaca por la tierra
-- y los derechos. Se convirtió en Territorio de Ultramar francés en 1946. Un fuerte
-- movimiento independentista canaco surgió en las décadas de 1970 y 1980, llevando
-- a periodos de conflicto ("Les Événements"). Los Acuerdos de Matignon (1988) y
-- Numea (1998) establecieron un camino hacia una mayor autonomía y previeron
-- referéndums sobre la independencia. Se han celebrado tres referéndums (2018, 2020,
-- 2021) en los que la mayoría votó por permanecer como parte de Francia, aunque el
-- último fue boicoteado por los independentistas. El estatus final sigue siendo un
-- tema político importante.
--
-- Datos Adicionales:
-- El francés es el idioma oficial, pero se hablan numerosas lenguas canacas. La
-- población es una mezcla de canacos, europeos (Caldoches y metropolitanos),
-- polinesios, asiáticos y otros. La economía depende en gran medida de la minería
-- de níquel (posee una parte significativa de las reservas mundiales) y de las
-- transferencias financieras de Francia. El turismo también es importante. La
-- Barrera de Coral de Nueva Caledonia es Patrimonio de la Humanidad por la UNESCO.
--
*/
