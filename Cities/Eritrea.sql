-- SQL Script to insert a representative sample of significant cities and towns for Eritrea (ER).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Eritrea (ER).

-- NOTE: This list includes the capital, regional capitals, and significant towns.
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Eritrea (ER) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals / Major Towns
('Asmara', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- National Capital (Maekel Region)
('Keren', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Anseba Region Capital
('Massawa (Massaua)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Northern Red Sea Region Capital (Major Port)
('Assab (Aseb)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Southern Red Sea Region Capital (Port)
('Mendefera (Adi Ugri)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Debub (Southern) Region Capital
('Barentu', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Gash-Barka Region Capital

-- Other Significant Towns (Sample)
('Agordat (Akordat)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Gash-Barka Region
('Tesseney (Teseney)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Gash-Barka Region (near Sudan border)
('Dekemhare (Decamere)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Debub Region
('Adi Keyh (Adi Caieh)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Debub Region
('Senafe', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Debub Region
('Nakfa (Nacfa)', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Northern Red Sea Region (Historic significance)
('Ghinda', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Northern Red Sea Region
('Edd', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Southern Red Sea Region
('Afabet', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Northern Red Sea Region
('Adi Quala', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'), -- Debub Region
('Segheneyti', (SELECT id FROM world_countries WHERE iso_code_2 = 'ER'), '0000'); -- Debub Region

-- Badme is a town in a disputed border area with Ethiopia.

-- End of Eritrea city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Eritrea ==
-- ====================================
--
-- Descripción General:
-- Eritrea es un país ubicado en el Cuerno de África, en África Oriental. Limita
-- con Sudán al oeste, Etiopía al sur y Yibuti al sureste. Posee una extensa costa
-- a lo largo del Mar Rojo, frente a Arabia Saudita y Yemen. Su territorio incluye
-- el Archipiélago Dahlak. La geografía varía desde la costa cálida y árida del Mar
-- Rojo hasta las tierras altas centrales más frescas y las llanuras occidentales.
--
-- Ciudades Principales:
-- * Asmara: La capital y ciudad más grande, ubicada en las tierras altas centrales.
--   Es famosa por su bien conservada arquitectura modernista italiana de principios
--   del siglo XX (Patrimonio de la Humanidad por la UNESCO).
-- * Keren: La segunda ciudad más grande, centro comercial importante.
-- * Massawa (Massaua): Principal puerto histórico en el Mar Rojo.
-- * Assab (Aseb): Puerto en el sur, cerca del estrecho de Bab-el-Mandeb.
-- * Mendefera y Barentu: Capitales de las regiones del sur y oeste, respectivamente.
--
-- Un Poco de Historia:
-- La región de Eritrea tiene una historia antigua, ligada a reinos como D'mt y
-- Aksum. Formó parte del Imperio Etíope durante largos periodos. A finales del
-- siglo XIX, fue colonizada por Italia (Colonia Eritrea). Tras la Segunda Guerra
-- Mundial, fue administrada por los británicos y luego federada con Etiopía por
-- decisión de la ONU en 1952. Etiopía anexó Eritrea en 1962, lo que desencadenó
-- una larga y sangrienta guerra de independencia (1961-1991). Eritrea logró la
-- independencia de facto en 1991 y la formalizó tras un referéndum en 1993. La
-- historia post-independencia ha estado marcada por un gobierno de partido único
-- bajo el presidente Isaias Afwerki, tensiones y una guerra fronteriza con Etiopía
-- (1998-2000), y un aislamiento internacional considerable. En 2018 se firmó un
-- acuerdo de paz con Etiopía, aunque la situación interna sigue siendo restrictiva.
--
-- Datos Adicionales:
-- Los idiomas oficiales de facto son el tigrinya, el árabe y el inglés, aunque se
-- reconocen otras lenguas locales. Las religiones principales son el cristianismo
-- ortodoxo eritreo y el islam sunita. La economía se basa principalmente en la
-- agricultura de subsistencia y las remesas, aunque tiene potencial minero.
--
*/
