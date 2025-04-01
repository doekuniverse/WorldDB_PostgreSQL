-- SQL Script to insert a representative sample of significant cities and towns for Malawi (MW).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Malawi (MW).

-- NOTE: This list includes the capital, major cities, district capitals, and significant towns.
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Malawi (MW) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / District Capitals
('Lilongwe', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- National Capital
('Blantyre', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Commercial Capital, largest city
('Mzuzu', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Northern Region Capital
('Zomba', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Former capital, major city
('Karonga', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Karonga District Capital
('Kasungu', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Kasungu District Capital
('Mangochi', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Mangochi District Capital
('Salima', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Salima District Capital
('Liwonde', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Machinga District (Major town)
('Balaka', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Balaka District Capital
('Nkhotakota', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Nkhotakota District Capital
('Dedza', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Dedza District Capital
('Mchinji', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Mchinji District Capital
('Nsanje', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Nsanje District Capital
('Mzimba', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Mzimba District Capital
('Rumphi', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Rumphi District Capital
('Chitipa', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Chitipa District Capital
('Mulanje', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Mulanje District Capital
('Thyolo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Thyolo District Capital
('Phalombe', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Phalombe District Capital
('Chiradzulu', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Chiradzulu District Capital
('Neno', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Neno District Capital
('Mwanza', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Mwanza District Capital
('Likoma', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Likoma District Capital (on Likoma Island)
('Machinga', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Machinga District Capital

-- Other Significant Towns (Sample)
('Luchenza', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Thyolo/Mulanje Districts
('Monkey Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'), -- Mangochi District (Lake port)
('Nkhata Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'MW'), '0000'); -- Nkhata Bay District Capital

-- End of Malawi city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Malawi ==
-- ====================================
--
-- Descripción General:
-- Malawi es un país sin salida al mar ubicado en el sureste de África. Limita con
-- Zambia al oeste, Tanzania al norte y noreste, y Mozambique al este, sur y suroeste.
-- El país está definido por su topografía del Gran Valle del Rift y el enorme Lago
-- Malawi (también Lago Nyasa), el tercer lago más grande de África, que ocupa una
-- parte significativa del este del país. Es un país densamente poblado con una
-- economía basada principalmente en la agricultura.
--
-- Ciudades Principales:
-- * Lilongwe: La capital y ciudad más grande, ubicada en el centro del país.
-- * Blantyre: La segunda ciudad más grande y el principal centro comercial e industrial,
--   ubicada en el sur.
-- * Mzuzu: La ciudad más grande y centro administrativo de la Región Norte.
-- * Zomba: Antigua capital colonial, ahora un centro universitario importante en el sur.
-- * Karonga, Kasungu, Mangochi, Salima: Otras capitales de distrito y centros urbanos
--   significativos. Mangochi y Salima son importantes por su proximidad al Lago Malawi.
-- * La lista incluye también las capitales de la mayoría de los distritos.
--
-- Un Poco de Historia:
-- La región fue hogar del Imperio Maravi en los siglos XVI-XVIII. El explorador
-- David Livingstone llegó al Lago Malawi en 1859, seguido por misioneros y colonos
-- británicos. Se estableció el Protectorado Británico de África Central (luego
-- Nyasalandia) a finales del siglo XIX. Formó parte brevemente de la Federación de
-- Rodesia y Nyasalandia (1953-1963). Obtuvo la independencia del Reino Unido en 1964,
-- convirtiéndose en república en 1966 bajo el liderazgo de Hastings Kamuzu Banda,
-- quien gobernó de forma autoritaria como presidente vitalicio hasta 1993. En 1994
-- se celebraron las primeras elecciones multipartidistas. Desde entonces, Malawi ha
-- sido una democracia multipartidista, aunque enfrenta desafíos económicos y sociales.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero el chichewa (o Nyanja) es la lengua nacional
-- más hablada. El cristianismo es la religión predominante. El Lago Malawi, conocido
-- como el "Lago de las Estrellas", es famoso por su biodiversidad (especialmente
-- peces cíclidos) y es Patrimonio de la Humanidad por la UNESCO. Malawi es a menudo
-- llamado el "Corazón Cálido de África" por la amabilidad de su gente. El tabaco es
-- el principal producto de exportación.
--
*/
