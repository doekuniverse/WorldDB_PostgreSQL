-- SQL Script to insert a representative sample of significant cities, towns, and villages for Barbados (BB).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Barbados (BB).

-- NOTE: This list includes the capital, major towns, and significant villages across the parishes.
-- Listing every single locality/gap is IMPOSSIBLE.
-- Postal codes are BB#####; examples or 'BB00000' placeholder are provided.

-- Inserting cities/villages for Barbados (BB) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Saint Michael Parish
('Bridgetown', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB11000'), -- Capital
('Hastings', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB15156'), -- Coastal area near Bridgetown
('Worthing', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB15008'), -- Coastal area near Bridgetown
('Bank Hall', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB11110'), -- Area in Bridgetown

-- Christ Church Parish
('Oistins', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB17000'), -- Major town, famous for fish fry
('Rockley', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB15137'), -- Coastal area
('Silver Sands', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB17117'), -- Coastal area
('Saint Lawrence Gap', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB15018'), -- Tourist area

-- Saint James Parish
('Holetown', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB24000'), -- Major town, first settlement site
('Paynes Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB24009'),
('Fitts Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB24005'),

-- Saint Peter Parish
('Speightstown', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB26000'), -- Major town in the north
('Mullins', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB26003'),
('Rock Hall', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB26051'),

-- Saint Philip Parish
('Six Cross Roads', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB18000'), -- Important junction/area
('Crane', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB18000'), -- Known for Crane Beach/Resort

-- Saint Thomas Parish
('Welches', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB22025'), -- Central area
('Rock Hall', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB22018'), -- Note: Different Rock Hall from St. Peter

-- Saint Joseph Parish
('Bathsheba', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB21000'), -- East coast village, surfing spot

-- Saint Andrew Parish
('Belleplaine', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB25000'), -- Main village in the parish
('Greenland', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB25015'),

-- Saint Lucy Parish
('Checker Hall', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB27000'), -- Northern area
('Crab Hill', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB27028'),

-- Saint John Parish
('Four Roads', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB20000'), -- Central junction/area
('Blackmans', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB20000'),

-- Saint George Parish
('Boarded Hall', (SELECT id FROM world_countries WHERE iso_code_2 = 'BB'), 'BB19000'); -- Central area

-- End of Barbados locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Barbados ==
-- ====================================
--
-- Descripción General:
-- Barbados es una nación insular ubicada en el Océano Atlántico, al este del Mar
-- Caribe y de las Antillas Menores. Es la isla más oriental del Caribe. Tiene
-- una topografía relativamente plana, con algunas colinas en el interior. Es
-- conocida por sus playas de arena fina, su clima tropical y por ser la cuna
-- del ron. Es un destino turístico popular y tiene uno de los índices de
-- desarrollo humano más altos de la región.
--
-- Ciudades Principales:
-- * Bridgetown: La capital y ciudad más grande, ubicada en la parroquia de Saint
--   Michael. Es el centro comercial, político y el principal puerto. Su centro
--   histórico y guarnición son Patrimonio de la Humanidad por la UNESCO.
-- * Speightstown: La segunda ciudad más grande, en el norte.
-- * Oistins: Pueblo pesquero en el sur, famoso por su mercado de pescado y su
--   "fish fry" de los viernes.
-- * Holetown: Sitio del primer asentamiento inglés, ahora un centro turístico y
--   comercial en la costa oeste.
--
-- Un Poco de Historia:
-- Habitada por pueblos indígenas, fue reclamada por España y luego por Inglaterra
-- en el siglo XVII, convirtiéndose en una colonia británica. Desarrolló una
-- economía basada en la caña de azúcar con mano de obra esclava africana, lo que
-- la convirtió en una de las colonias más ricas y pobladas. Barbados obtuvo la
-- independencia del Reino Unido en 1966, pero mantuvo a la monarca británica como
-- jefa de estado hasta 2021, cuando se convirtió en una república parlamentaria.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial (con un dialecto local llamado Bajan). Barbados
-- es considerado el lugar de nacimiento del ron (Mount Gay Rum data de 1703).
-- El cricket es el deporte nacional. La cantante Rihanna es originaria de Barbados.
--
*/
