-- SQL Script to insert a sample of significant cities and towns for Armenia (AM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Armenia (AM).

-- NOTE: This list includes the capital, major cities, and regional centers.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for Armenia (AM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Yerevan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '0010'), -- Capital (Example PC)
('Gyumri', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '3101'), -- Second largest city, Shirak capital
('Vanadzor', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '2001'), -- Third largest city, Lori capital
('Vagharshapat (Etchmiadzin)', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '1101'), -- Spiritual center, Armavir province
('Hrazdan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '2301'), -- Kotayk capital
('Abovyan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '2201'), -- City in Kotayk
('Kapan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '3301'), -- Syunik capital
('Armavir', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '0901'), -- Armavir capital
('Gavar', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '1201'), -- Gegharkunik capital
('Artashat', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '0701'), -- Ararat capital
('Ijevan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '4001'), -- Tavush capital
('Sevan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '1501'), -- City by Lake Sevan, Gegharkunik
('Goris', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '3201'), -- City in Syunik
('Masis', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '0801'), -- Town in Ararat
('Ashtarak', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '0201'), -- Aragatsotn capital
('Ararat', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '0601'), -- Town in Ararat
('Dilijan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '3901'), -- Spa town in Tavush
('Stepanavan', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '1901'), -- Town in Lori
('Spitak', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '2101'), -- Town in Lori (affected by 1988 earthquake)
('Vardenis', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '1601'), -- Town in Gegharkunik
('Yeghvard', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '2401'), -- Town in Kotayk
('Martuni', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '1401'), -- Town in Gegharkunik
('Nor Hachen', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '2501'), -- Town in Kotayk
('Metsamor', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '0911'), -- Town in Armavir (near nuclear plant)
('Sisian', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '3401'), -- Town in Syunik
('Alaverdi', (SELECT id FROM world_countries WHERE iso_code_2 = 'AM'), '1701'); -- Town in Lori (mining center)

-- End of Armenia city list (Sample)

/*
-- ====================================
-- == Información sobre Armenia ==
-- ====================================
--
-- Descripción General:
-- Armenia es un país sin salida al mar ubicado en la región montañosa del Cáucaso,
-- en la encrucijada entre Europa del Este y Asia Occidental. Es una nación con
-- una historia y cultura antiguas y ricas, siendo notable por ser el primer país
-- del mundo en adoptar el cristianismo como religión oficial a principios del
-- siglo IV. Su paisaje está dominado por montañas y mesetas volcánicas.
--
-- Ciudades Principales:
-- * Ereván (Yerevan): La capital y ciudad más grande, centro cultural, económico
--   y político. Es una de las ciudades habitadas continuamente más antiguas del mundo.
-- * Gyumri: La segunda ciudad más grande, ubicada en el noroeste.
-- * Vanadzor: La tercera ciudad más grande, centro industrial en el norte.
-- * Vagharshapat (Etchmiadzin): Considerado el centro espiritual de la Iglesia
--   Apostólica Armenia.
--
-- Un Poco de Historia:
-- La historia de Armenia se remonta a miles de años, con antiguos reinos como
-- Urartu y el Reino de Armenia. Ha estado bajo el dominio de imperios persas,
-- romanos, bizantinos, árabes, otomanos y rusos. Formó parte de la Unión Soviética
-- durante gran parte del siglo XX, recuperando su independencia en 1991. La historia
-- reciente ha estado marcada por el conflicto de Nagorno-Karabaj con Azerbaiyán
-- y las relaciones complejas con sus vecinos. El genocidio armenio a principios
-- del siglo XX es un evento central en su memoria histórica.
--
-- Datos Adicionales:
-- El Monte Ararat, aunque actualmente en territorio turco, es el símbolo nacional
-- de Armenia y visible desde Ereván. Poseen un alfabeto único creado en el siglo V.
-- La diáspora armenia es muy numerosa e influyente en todo el mundo.
--
*/
