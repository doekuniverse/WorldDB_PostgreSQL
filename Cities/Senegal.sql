-- SQL Script to insert a representative sample of significant cities and towns for Senegal (SN).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Senegal (SN).

-- NOTE: Senegal has numerous localities. This list includes the capital, regional capitals,
-- major cities, and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Senegal (SN) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals / Major Cities
('Dakar', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '10000'), -- National Capital & Dakar Region Capital
('Pikine', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'), -- Dakar Region (Part of Dakar Metro, very populous)
('Guédiawaye', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'), -- Dakar Region (Part of Dakar Metro)
('Rufisque', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'), -- Dakar Region (Part of Dakar Metro)
('Thiès', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '21000'), -- Thiès Region Capital
('Kaolack', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '40000'), -- Kaolack Region Capital
('Ziguinchor', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '27000'), -- Ziguinchor Region Capital (Casamance)
('Saint-Louis', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '26000'), -- Saint-Louis Region Capital (UNESCO site)
('Touba', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'), -- Diourbel Region (Major religious city - Mouride)
('Mbour', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '23000'), -- Thiès Region (Coastal city/resort)
('Tambacounda', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '28000'), -- Tambacounda Region Capital
('Kolda', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '29000'), -- Kolda Region Capital
('Louga', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '18000'), -- Louga Region Capital
('Diourbel', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '19000'), -- Diourbel Region Capital
('Fatick', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '14000'), -- Fatick Region Capital
('Kaffrine', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '14500'), -- Kaffrine Region Capital
('Kédougou', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'), -- Kédougou Region Capital
('Sédhiou', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '43000'), -- Sédhiou Region Capital

-- Other Significant Towns (Sample)
('Richard Toll', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '26100'), -- Saint-Louis Region (Sugar industry)
('Joal-Fadiouth', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'), -- Thiès Region (Coastal town, shell island)
('Mbacké', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'), -- Diourbel Region (Near Touba)
('Tivaouane', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'), -- Thiès Region (Religious center - Tijaniyya)
('Linguère', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'), -- Louga Region
('Vélingara', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'), -- Kolda Region
('Bignona', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'), -- Ziguinchor Region
('Dahra', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'), -- Louga Region
('Nioro du Rip', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'), -- Kaolack Region
('Pout', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'), -- Thiès Region
('Mékhé', (SELECT id FROM world_countries WHERE iso_code_2 = 'SN'), '00000'); -- Thiès Region

-- End of Senegal city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Senegal ==
-- ====================================
--
-- Descripción General:
-- Senegal es un país ubicado en la costa más occidental de África Occidental. Limita
-- con Mauritania al norte, Malí al este, Guinea y Guinea-Bissau al sur, y el Océano
-- Atlántico al oeste. Rodea casi por completo a Gambia, excepto por la costa gambiana.
-- Su geografía incluye la llanura semiárida del Sahel en el norte, colinas en el
-- sureste y la región más húmeda de Casamance en el sur. Los ríos Senegal y Gambia
-- son importantes. Es una república semipresidencialista.
--
-- Ciudades Principales:
-- * Dakar: La capital y ciudad más grande, ubicada en la península de Cabo Verde, el
--   punto más occidental de África continental. Es un importante centro político,
--   económico, portuario y cultural de África Occidental. Su área metropolitana
--   incluye grandes suburbios como Pikine y Guédiawaye.
-- * Thiès: La segunda ciudad más grande, importante centro industrial y de transporte
--   al este de Dakar.
-- * Touba: Ciudad santa y centro de la influyente hermandad sufí Mouride, una de las
--   ciudades de más rápido crecimiento.
-- * Kaolack: Importante centro regional y de comercio de cacahuetes.
-- * Ziguinchor: Principal ciudad de la región sureña de Casamance.
-- * Saint-Louis: Antigua capital colonial de Senegal y del África Occidental Francesa,
--   ubicada en una isla en la desembocadura del río Senegal (Patrimonio de la Humanidad).
-- * Mbour: Importante ciudad costera y turística al sur de Dakar.
-- * La lista incluye también las capitales de las 14 regiones y otras ciudades significativas.
--
-- Un Poco de Historia:
-- La región formó parte de los grandes imperios de África Occidental (Ghana, Malí,
-- Songhai) y del Imperio Jolof. Los portugueses llegaron en el siglo XV, seguidos por
-- neerlandeses, franceses y británicos, que establecieron puestos comerciales en la
-- costa (especialmente para el comercio de esclavos, centrado en la isla de Gorea).
-- Francia consolidó su control sobre el interior en el siglo XIX, convirtiendo a
-- Senegal en una parte clave del África Occidental Francesa (AOF), con Dakar como su
-- capital. Obtuvo la independencia en 1960, inicialmente como parte de la efímera
-- Federación de Malí (con el actual Malí). Bajo sus primeros presidentes, Léopold
-- Sédar Senghor y Abdou Diouf, Senegal se estableció como una de las democracias
-- multipartidistas más estables de África, una reputación que ha mantenido en gran medida.
-- Ha enfrentado un conflicto de baja intensidad en la región de Casamance.
--
-- Datos Adicionales:
-- El francés es el idioma oficial, pero el wolof es la lengua franca más hablada,
-- junto con otras lenguas locales (Pulaar, Serer, etc.). El Islam (principalmente
-- sufí) es la religión predominante, con una minoría cristiana. Senegal es conocido
-- por su música (Mbalax - Youssou N'Dour), su cine, la lucha senegalesa (Laamb) y
-- la hospitalidad (Teranga). La isla de Gorea es Patrimonio de la Humanidad por su
-- papel en la historia del comercio de esclavos.
--
*/
