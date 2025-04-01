-- SQL Script to insert a representative sample of significant cities and towns for Mali (ML).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Mali (ML).

-- NOTE: Mali is a large, landlocked country, partly desert/Sahelian. This list includes the capital,
-- regional capitals, and significant towns/cercle centers. Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Mali (ML) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals / Major Cities
('Bamako', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- National Capital (District)
('Sikasso', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Sikasso Region Capital
('Mopti', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Mopti Region Capital
('Koutiala', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Sikasso Region (Major city)
('Ségou', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Ségou Region Capital
('Kayes', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Kayes Region Capital
('Gao', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Gao Region Capital
('Timbuktu (Tombouctou)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Timbuktu Region Capital (UNESCO site)
('Kidal', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Kidal Region Capital (Status complex)
('Koulikoro', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Koulikoro Region Capital
('Kati', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Koulikoro Region (Large town near Bamako)
('Markala', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Ségou Region (Dam town)
('Kolokani', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Koulikoro Region
('Ménaka', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Ménaka Region Capital (Newer region)
('Taoudénit', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Taoudénit Region Capital (Newer region, remote)

-- Other Significant Towns / Cercle Centers (Sample)
('Nioro du Sahel', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Kayes Region
('Bougouni', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Sikasso Region
('San', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Ségou Region
('Djenné', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Mopti Region (UNESCO site)
('Bandiagara', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Mopti Region (Dogon Country)
('Douentza', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Mopti Region
('Yélimané', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Kayes Region
('Kita', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Kayes Region
('Niono', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Ségou Region
('Diré', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Timbuktu Region
('Goundam', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Timbuktu Region
('Ansongo', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Gao Region
('Bourem', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'), -- Gao Region
('Koro', (SELECT id FROM world_countries WHERE iso_code_2 = 'ML'), '0000'); -- Mopti Region

-- End of Mali city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Mali ==
-- ====================================
--
-- Descripción General:
-- Malí (Mali) es un país sin salida al mar ubicado en África Occidental. Es el octavo
-- país más grande de África. Limita con Argelia al norte, Níger al este, Burkina
-- Faso y Costa de Marfil al sur, Guinea al suroeste, y Senegal y Mauritania al
-- oeste. Su territorio abarca desde el desierto del Sahara en el norte hasta la
-- región sudanesa (sabana) en el sur. Los ríos Níger y Senegal son vitales para el
-- país.
--
-- Ciudades Principales:
-- * Bamako: La capital y ciudad más grande, ubicada a orillas del río Níger en el suroeste.
-- * Sikasso: Segunda ciudad importante, en el sur agrícola.
-- * Mopti: Importante puerto fluvial en la confluencia de los ríos Níger y Bani,
--   centro comercial y puerta de entrada al País Dogón.
-- * Koutiala: Otro centro agrícola importante en el sur.
-- * Ségou: Antigua capital del Imperio Bambara, a orillas del Níger.
-- * Kayes: Principal ciudad en el oeste, centro ferroviario histórico.
-- * Gao y Tombuctú (Timbuktu): Ciudades históricas en el norte, a orillas del Níger,
--   antiguos centros del comercio transahariano y del saber islámico (Tombuctú es
--   Patrimonio de la Humanidad). Kidal es la capital de la región homónima en el
--   extremo noreste (zona de conflicto).
-- * La lista incluye también las capitales regionales y otras ciudades significativas.
--
-- Un Poco de Historia:
-- La región de Malí fue cuna de los grandes imperios de África Occidental: el Imperio
-- de Ghana, el Imperio de Malí (del cual toma el nombre el país moderno) y el
-- Imperio Songhai. Tombuctú fue un centro intelectual y espiritual de renombre
-- mundial en los siglos XV y XVI. La región fue colonizada por Francia a finales
-- del siglo XIX como Sudán Francés. En 1960, se independizó brevemente como la
-- Federación de Malí (junto con Senegal), y poco después como la República de Malí
-- bajo Modibo Keïta. La historia post-independencia ha estado marcada por periodos
-- de gobierno autoritario, golpes de estado (1968, 1991, 2012, 2020, 2021) y
-- rebeliones tuareg en el norte. Desde 2012, el país ha enfrentado una grave crisis
-- de seguridad con la insurgencia yihadista y conflictos intercomunitarios,
-- requiriendo intervenciones militares internacionales (francesas y de la ONU).
--
-- Datos Adicionales:
-- El francés es el idioma oficial, pero el bambara es la lengua franca más hablada,
-- junto con muchas otras lenguas locales. El Islam es la religión predominante.
-- Malí es famoso por su rica herencia musical y cultural (Festival au Désert), la
-- arquitectura de adobe (Gran Mezquita de Djenné - Patrimonio de la Humanidad) y
-- los manuscritos de Tombuctú. La economía se basa principalmente en la agricultura
-- (algodón) y la minería (oro).
--
*/
