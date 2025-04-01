-- SQL Script to insert a representative sample of significant cities, towns, and settlements for The Bahamas (BS).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains The Bahamas (BS).

-- NOTE: The Bahamas is an archipelago with hundreds of islands/cays. This list includes the capital,
-- major towns, and main settlements on significant islands. It is IMPOSSIBLE to list every single locality.
-- Postal codes are not generally used for addressing; using '0000' as a placeholder.

-- Inserting cities/settlements for The Bahamas (BS) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- New Providence Island
('Nassau', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Capital
('Adelaide Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'),
('Carmichael Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'),
('Fox Hill', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'),
('Lyford Cay', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Gated community

-- Grand Bahama Island
('Freeport', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Major city
('Lucaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Area often associated with Freeport
('West End', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Oldest town on Grand Bahama
('Eight Mile Rock', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'),

-- Abaco Islands
('Marsh Harbour', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Main town
('Cooper''s Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'),
('Treasure Cay', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'),
('Hope Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Elbow Cay

-- Eleuthera Island
('Governor''s Harbour', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Main town
('Rock Sound', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'),
('Spanish Wells', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- On St. George's Cay
('Dunmore Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Harbour Island

-- Andros Island (Largest island)
('Andros Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Fresh Creek area
('Nicholls Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'),
('Congo Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'),

-- Other Family Islands (Main Settlements)
('Clarence Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Long Island
('Arthur''s Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Cat Island
('George Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Exuma
('Matthew Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Inagua
('Alice Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'), -- Bimini
('Cockburn Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'BS'), '0000'); -- San Salvador

-- End of The Bahamas settlement list (Representative Sample)

/*
-- ====================================
-- == Información sobre The Bahamas ==
-- ====================================
--
-- Descripción General:
-- Las Bahamas son un país insular compuesto por un extenso archipiélago de más
-- de 700 islas, cayos e islotes en el Océano Atlántico, al sureste de Florida
-- (EE.UU.) y al norte de Cuba. Es conocido por sus espectaculares aguas turquesas,
-- playas de arena fina y como un importante destino turístico y centro financiero
-- offshore. Solo unas 30 islas están habitadas.
--
-- Ciudades Principales:
-- * Nassau: La capital, ubicada en la isla de New Providence, es el centro
--   político, económico y la ciudad más poblada. Alberga la mayoría de la
--   población del país.
-- * Freeport: La segunda ciudad más grande, ubicada en la isla de Grand Bahama,
--   es un importante centro industrial y turístico con una zona de libre comercio.
-- * Otros asentamientos importantes se encuentran dispersos en las "Family Islands"
--   (las islas exteriores), como Marsh Harbour (Abaco), George Town (Exuma) y
--   Governor's Harbour (Eleuthera).
--
-- Un Poco de Historia:
-- Habitadas originalmente por el pueblo Lucayan (una rama de los Taínos), las
-- islas fueron el primer lugar de América al que llegó Cristóbal Colón en 1492
-- (generalmente se acepta que fue en San Salvador). Tras la despoblación indígena,
-- las islas fueron colonizadas por los británicos en el siglo XVII y se
-- convirtieron en un refugio para piratas en el siglo XVIII (como Barbanegra).
-- Fue una colonia británica hasta que obtuvo su independencia en 1973, aunque
-- permanece dentro de la Commonwealth.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial. La economía depende en gran medida del turismo
-- y los servicios financieros. Las Bahamas son famosas por el buceo, la pesca y
-- sus complejos hoteleros. El Junkanoo es un famoso festival callejero con música,
-- baile y disfraces.
--
*/
