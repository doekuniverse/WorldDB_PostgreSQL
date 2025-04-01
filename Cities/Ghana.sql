-- SQL Script to insert a representative sample of significant cities and towns for Ghana (GH).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Ghana (GH).

-- NOTE: This list includes the capital, regional capitals, and a broad sample of major cities
-- and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are not generally used for addressing; using '0000' as a placeholder.

-- Inserting cities for Ghana (GH) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals / Major Cities
('Accra', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- National Capital (Greater Accra Region)
('Kumasi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Ashanti Region Capital
('Tamale', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Northern Region Capital
('Sekondi-Takoradi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Western Region Capital (Twin city, Takoradi is admin capital)
('Sunyani', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Bono Region Capital
('Cape Coast', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Central Region Capital
('Koforidua', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Eastern Region Capital
('Ho', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Volta Region Capital
('Bolgatanga', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Upper East Region Capital
('Wa', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Upper West Region Capital
('Tema', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Greater Accra Region (Major port/industrial city)
('Techiman', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Bono East Region Capital
('Nalerigu', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- North East Region Capital
('Damongo', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Savannah Region Capital
('Dambai', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Oti Region Capital
('Goaso', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Ahafo Region Capital
('Sefwi Wiawso', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Western North Region Capital

-- Other Significant Towns (Sample)
('Obuasi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Ashanti Region (Gold mining)
('Tarkwa', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Western Region (Gold mining)
('Ashaiman', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Greater Accra Region (Part of Accra metro)
('Madina', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Greater Accra Region (Part of Accra metro)
('Dome', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Greater Accra Region (Part of Accra metro)
('Nkawkaw', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Eastern Region
('Winneba', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Central Region
('Akim Oda', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Eastern Region
('Yendi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Northern Region (Historic Dagbon capital)
('Hohoe', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Volta Region
('Suhum', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Eastern Region
('Agona Swedru', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Central Region
('Ejura', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Ashanti Region
('Berekum', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Bono Region
('Bawku', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Upper East Region
('Aflao', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Volta Region (Border town with Togo)
('Prestea', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Western Region
('Agogo', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'), -- Ashanti Region
('Wenchi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GH'), '0000'); -- Bono Region

-- End of Ghana city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Ghana ==
-- ====================================
--
-- Descripción General:
-- Ghana es un país ubicado en África Occidental, en la costa del Golfo de Guinea.
-- Limita con Costa de Marfil al oeste, Burkina Faso al norte, Togo al este y el
-- Océano Atlántico al sur. Su geografía incluye llanuras costeras, mesetas boscosas
-- y sabanas en el norte. El Lago Volta, uno de los lagos artificiales más grandes
-- del mundo por superficie, se encuentra en el este del país. Ghana es conocida
-- por su historia como la Costa de Oro, su papel pionero en la independencia
-- africana y su relativa estabilidad democrática en la región.
--
-- Ciudades Principales:
-- * Acra (Accra): La capital y ciudad más grande, centro político y económico.
-- * Kumasi: La segunda ciudad más grande, capital histórica del Imperio Ashanti.
-- * Tamale: Principal ciudad en el norte de Ghana.
-- * Sekondi-Takoradi: Ciudad gemela que forma un importante centro industrial y
--   portuario en la costa occidental.
-- * Cape Coast: Antigua capital colonial británica, conocida por sus castillos
--   relacionados con el comercio de esclavos (Patrimonio de la Humanidad).
-- * Koforidua, Ho, Sunyani, Bolgatanga, Wa: Otras importantes capitales regionales.
-- * Tema: Ciudad planificada que alberga el principal puerto artificial de Ghana.
-- * La lista incluye también las capitales de las 16 regiones y otras ciudades significativas.
--
-- Un Poco de Historia:
-- La región fue hogar de varios reinos antiguos, destacando el poderoso Imperio
-- Ashanti en el interior. Los europeos (portugueses, holandeses, británicos)
-- establecieron fuertes en la costa a partir del siglo XV para comerciar oro (de
-- ahí el nombre colonial "Costa de Oro") y esclavos. Gran Bretaña consolidó su
-- control en el siglo XIX. Ghana se convirtió en la primera colonia británica en
-- África subsahariana en obtener la independencia, en 1957, bajo el liderazgo de
-- Kwame Nkrumah, una figura clave del panafricanismo. La historia post-independencia
-- ha incluido periodos de gobierno democrático y golpes militares, pero desde los
-- años 90 se ha consolidado como una democracia multipartidista estable.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero se hablan muchas lenguas locales (Akan, Ewe,
-- Ga, Dagbani, etc.). Ghana es un importante productor de cacao y oro. El fútbol
-- es extremadamente popular. El país tiene una rica herencia cultural, visible en
-- sus festivales, música (Highlife) y tejidos (Kente).
--
*/
