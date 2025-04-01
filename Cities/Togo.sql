-- SQL Script to insert a representative sample of significant cities and towns for Togo (TG).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Togo (TG).

-- NOTE: Togo is divided into 5 regions, which are further subdivided into prefectures, cantons, and villages.
-- Listing every single settlement is impractical for this format. This list focuses on the national capital,
-- the regional capitals, and a sample of other significant towns.
-- Togo does not currently use a standardized nationwide postal code system; using '0000' as a placeholder.

-- Inserting cities for Togo (TG) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & Regional Capitals
('Lomé', (SELECT id FROM world_countries WHERE iso_code_2 = 'TG'), '0000'), -- National Capital & Maritime Region Capital
('Atakpamé', (SELECT id FROM world_countries WHERE iso_code_2 = 'TG'), '0000'), -- Plateaux Region Capital
('Sokodé', (SELECT id FROM world_countries WHERE iso_code_2 = 'TG'), '0000'), -- Centrale Region Capital
('Kara', (SELECT id FROM world_countries WHERE iso_code_2 = 'TG'), '0000'), -- Kara Region Capital
('Dapaong', (SELECT id FROM world_countries WHERE iso_code_2 = 'TG'), '0000'), -- Savanes Region Capital

-- Other Significant Towns (Sample)
('Kpalimé', (SELECT id FROM world_countries WHERE iso_code_2 = 'TG'), '0000'), -- Major town in Plateaux Region (known for crafts and nature)
('Bassar', (SELECT id FROM world_countries WHERE iso_code_2 = 'TG'), '0000'), -- Town in Kara Region (known for yams and iron)
('Tsévié', (SELECT id FROM world_countries WHERE iso_code_2 = 'TG'), '0000'), -- Town in Maritime Region (north of Lomé)
('Aného', (SELECT id FROM world_countries WHERE iso_code_2 = 'TG'), '0000'), -- Coastal town, former capital (Maritime Region)
('Mango', (SELECT id FROM world_countries WHERE iso_code_2 = 'TG'), '0000'), -- Town in Savanes Region (also known as Sansanné-Mango)
('Bafilo', (SELECT id FROM world_countries WHERE iso_code_2 = 'TG'), '0000'), -- Town in Kara Region
('Notsé', (SELECT id FROM world_countries WHERE iso_code_2 = 'TG'), '0000'), -- Historic town, origin site for Ewe people (Plateaux Region)
('Sotouboua', (SELECT id FROM world_countries WHERE iso_code_2 = 'TG'), '0000'), -- Town in Centrale Region
('Vogan', (SELECT id FROM world_countries WHERE iso_code_2 = 'TG'), '0000'); -- Town in Maritime Region


-- End of Togo city list (Representative Sample)

/*
-- =============================================
-- ==      Información sobre Togo            ==
-- =============================================
--
-- Descripción General:
-- Togo, oficialmente la República Togolesa, es un país ubicado en África Occidental.
-- Limita con Ghana al oeste, Benín al este y Burkina Faso al norte. Al sur, tiene
-- una costa corta en el Golfo de Guinea. Es un país estrecho y alargado, con una
-- geografía que varía desde la costa arenosa del sur, pasando por una meseta central,
-- hasta una sabana montañosa en el norte.
--
-- Ciudades Principales:
-- * Lomé: La capital, ciudad más grande y principal puerto, ubicada en la costa del
--   Golfo de Guinea. Es el centro administrativo, económico y de transporte.
-- * Sokodé: La segunda ciudad más grande, ubicada en el centro del país.
-- * Kara: Importante ciudad en el norte.
-- * Kpalimé: Ciudad conocida por su entorno natural (montañas, cascadas) y mercados
--   de artesanía, ubicada en la región de Plateaux.
-- * Atakpamé, Dapaong: Capitales de las regiones de Plateaux y Savanes, respectivamente.
--
-- Un Poco de Historia:
-- Habitada por diversos grupos étnicos. La costa fue un centro del comercio de
-- esclavos para los europeos. A finales del siglo XIX, el territorio se convirtió
-- en el protectorado alemán de Togolandia. Tras la Primera Guerra Mundial, fue
-- dividido entre Francia y el Reino Unido por mandato de la Sociedad de Naciones.
-- La parte británica (Togolandia Británica) se integró posteriormente en Ghana.
-- La parte francesa (Togolandia Francesa) se convirtió en la actual Togo, obteniendo
-- la independencia de Francia en 1960. Tras un golpe de estado en 1963 y otro en
-- 1967, Gnassingbé Eyadéma tomó el poder y gobernó el país de forma autoritaria
-- durante 38 años hasta su muerte en 2005. Su hijo, Faure Gnassingbé, le sucedió
-- en la presidencia, continuando el gobierno de la misma familia.
--
-- Datos Adicionales:
-- El francés es el idioma oficial. Las lenguas nacionales más habladas son el ewé y
-- el kabiyé. Existen alrededor de 40 grupos étnicos diferentes. Las religiones
-- principales son las creencias tradicionales africanas (vudú es importante en el sur),
-- el cristianismo y el islam. La economía se basa principalmente en la agricultura
-- (cacao, café, algodón) y la extracción de fosfatos. Togo es miembro de la Comunidad
-- Económica de Estados de África Occidental (CEDEAO) y de la Unión Africana.
--
*/
