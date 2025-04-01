-- SQL Script to insert a representative sample of significant cities and towns for Mauritania (MR).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Mauritania (MR).

-- NOTE: Mauritania is large and mostly desert. This list includes the capital, regional capitals,
-- and significant towns. Listing every single village or nomadic camp is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Mauritania (MR) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals / Major Towns
('Nouakchott', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- National Capital (divided into 3 regions administratively)
('Nouadhibou', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Dakhlet Nouadhibou Region Capital (Major port/economic center)
('Kiffa', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Assaba Region Capital
('Kaédi', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Gorgol Region Capital
('Rosso', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Trarza Region Capital (Border town with Senegal)
('Sélibaby', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Guidimaka Region Capital
('Zouérat', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Tiris Zemmour Region Capital (Iron ore mining)
('Atar', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Adrar Region Capital
('Néma', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Hodh Ech Chargui Region Capital
('Aleg', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Brakna Region Capital
('Tidjikja', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Tagant Region Capital
('Akjoujt', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Inchiri Region Capital
('Aioun El Atrouss', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Hodh El Gharbi Region Capital

-- Other Significant Towns (Sample)
('Boutilimit', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Trarza Region
('Boghé', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Brakna Region
('Magta-Lahjar', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Brakna Region
('Guerou', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Assaba Region
('Tintane', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Hodh El Gharbi Region
('Timbedra', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Hodh Ech Chargui Region
('Bassikounou', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Hodh Ech Chargui Region (Near Mali border)
('Fderîck', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Tiris Zemmour Region (Near Zouérat)
('Chinguetti', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Adrar Region (Historic city, UNESCO site)
('Ouadane', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Adrar Region (Historic city, UNESCO site)
('Tichitt', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'), -- Tagant Region (Historic city, UNESCO site)
('Oualata', (SELECT id FROM world_countries WHERE iso_code_2 = 'MR'), '0000'); -- Hodh Ech Chargui Region (Historic city, UNESCO site)

-- End of Mauritania city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Mauritania ==
-- ====================================
--
-- Descripción General:
-- La República Islámica de Mauritania es un país ubicado en el noroeste de África,
-- formando parte del Magreb y del Sahel. Limita con el Océano Atlántico al oeste,
-- el Sáhara Occidental (controlado por Marruecos) al norte, Argelia al noreste, Malí
-- al este y sureste, y Senegal al suroeste. La gran mayoría del país está cubierta
-- por el Desierto del Sahara; la población se concentra en el sur, cerca del río
-- Senegal, y en la costa. Es una república islámica.
--
-- Ciudades Principales:
-- * Nuakchot (Nouakchott): La capital y ciudad abrumadoramente más grande, ubicada
--   en la costa atlántica. Creció rápidamente después de la independencia.
-- * Nuadibú (Nouadhibou): La segunda ciudad y principal centro económico, un
--   importante puerto pesquero y de exportación de mineral de hierro, ubicado en
--   una península en la frontera con el Sáhara Occidental.
-- * Kiffa, Kaédi, Rosso: Principales ciudades en el sur, cerca del río Senegal. Rosso
--   es un importante cruce fronterizo con Senegal.
-- * Zouérat: Centro de la industria minera de hierro en el norte desértico.
-- * Atar: Principal ciudad en la región de Adrar, puerta de entrada a antiguas
--   ciudades caravaneras.
-- * Néma y Aioun El Atrouss: Capitales de las regiones orientales.
-- * La lista incluye también las capitales de las demás regiones y ciudades históricas.
--
-- Un Poco de Historia:
-- Habitada por pueblos Bafour y luego por Bereberes. La región fue islamizada y
-- arabizada, y fue parte del Imperio de Ghana y del movimiento Almorávide. Las
-- tribus árabes Hassaní dominaron la zona. Francia estableció su control a principios
-- del siglo XX como parte del África Occidental Francesa. Mauritania obtuvo la
-- independencia en 1960. La historia post-independencia ha estado marcada por
-- periodos de gobierno autoritario, golpes de estado militares (1978, 2005, 2008)
-- y tensiones étnicas entre la población árabe-bereber (Mauros Blancos y Haratines)
-- y los grupos negro-africanos del sur. También estuvo involucrada brevemente en
-- el conflicto del Sáhara Occidental. Ha experimentado una transición hacia un
-- gobierno civil más estable en años recientes.
--
-- Datos Adicionales:
-- El árabe es el idioma oficial; el francés también es ampliamente utilizado. Se
-- hablan varias lenguas locales (Hassaniya, Pulaar, Soninke, Wolof). El Islam es
-- la religión del estado. La economía depende de la minería (hierro, oro, cobre),
-- la pesca y la agricultura/ganadería de subsistencia. El Parque Nacional Banc
-- d'Arguin, en la costa, es Patrimonio de la Humanidad por su importancia para las
-- aves migratorias. Las antiguas ciudades caravaneras de Chinguetti, Ouadane,
-- Tichitt y Oualata también son Patrimonio de la Humanidad. El Tren del Mineral de
-- Hierro es uno de los trenes más largos del mundo.
--
*/
