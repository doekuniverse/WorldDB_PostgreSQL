-- SQL Script to insert a representative sample of significant cities and towns for South Sudan (SS).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains South Sudan (SS).

-- NOTE: South Sudan is a large country with significant data challenges due to recent conflict.
-- This list includes the capital, state capitals, and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for South Sudan (SS) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & State Capitals / Major Towns
('Juba', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- National Capital (Central Equatoria State)
('Wau', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Western Bahr el Ghazal State Capital
('Malakal', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Upper Nile State Capital
('Bor', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Jonglei State Capital
('Aweil', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Northern Bahr el Ghazal State Capital
('Rumbek', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Lakes State Capital
('Yambio', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Western Equatoria State Capital
('Torit', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Eastern Equatoria State Capital
('Bentiu', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Unity State Capital
('Kuajok', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Warrap State Capital

-- Other Significant Towns (Sample)
('Yei', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Central Equatoria State
('Maridi', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Western Equatoria State
('Nimule', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Eastern Equatoria State (Border with Uganda)
('Renk', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Upper Nile State (Near Sudan border)
('Raja', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Western Bahr el Ghazal State
('Leer', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Unity State
('Pibor', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Pibor Administrative Area center
('Akobo', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Jonglei State
('Tonj', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'), -- Warrap State
('Kapoeta', (SELECT id FROM world_countries WHERE iso_code_2 = 'SS'), '0000'); -- Eastern Equatoria State

-- End of South Sudan city list (Representative Sample)

/*
-- ======================================
-- == Información sobre South Sudan ==
-- ======================================
--
-- Descripción General:
-- La República de Sudán del Sur es un país sin salida al mar ubicado en África
-- Oriental y Central. Limita con Sudán al norte, Etiopía al este, Kenia, Uganda y
-- la República Democrática del Congo al sur, y la República Centroafricana al oeste.
-- Es el país más joven del mundo, habiendo obtenido su independencia en 2011. Su
-- geografía incluye extensas llanuras, pantanos (especialmente el Sudd, uno de los
-- humedales más grandes del mundo, formado por el Nilo Blanco) y algunas mesetas.
--
-- Ciudades Principales:
-- * Yuba (Juba): La capital y ciudad más grande, ubicada en el Nilo Blanco.
-- * Wau, Malakal, Bor, Aweil, Rumbek, Yambio, Torit, Bentiu, Kuajok: Capitales de
--   los diez estados que componen el país.
-- * Yei: Otra ciudad importante en el sur.
-- * La lista incluye también otros pueblos significativos.
--
-- Un Poco de Historia:
-- La región estuvo habitada por diversos grupos nilóticos y otros. Formó parte del
-- Sudán Anglo-Egipcio durante el período colonial. Tras la independencia de Sudán
-- en 1956, las tensiones entre el norte árabe-musulmán y el sur predominantemente
-- cristiano y animista llevaron a dos largas y brutales guerras civiles (1955-1972
-- y 1983-2005), que causaron millones de muertes y desplazamientos. El Acuerdo
-- General de Paz de 2005 puso fin a la segunda guerra civil y otorgó autonomía al
-- sur, previendo un referéndum de independencia. En 2011, Sudán del Sur votó
-- abrumadoramente por la secesión y se convirtió en un estado independiente. Sin
-- embargo, en 2013 estalló una nueva guerra civil, esta vez entre facciones internas
-- (principalmente Dinka y Nuer) lideradas por el presidente Salva Kiir y el ex
-- vicepresidente Riek Machar. A pesar de varios acuerdos de paz, la situación sigue
-- siendo frágil, con violencia continua, crisis humanitarias y millones de desplazados.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero se hablan numerosas lenguas nilóticas (Dinka,
-- Nuer, Bari, Zande, etc.) y el árabe de Yuba. Las religiones principales son el
-- cristianismo y las creencias tradicionales africanas. Sudán del Sur posee importantes
-- reservas de petróleo, que son la principal fuente de ingresos del gobierno, pero
-- la producción se ha visto afectada por los conflictos. El país enfrenta enormes
-- desafíos de desarrollo, pobreza y construcción de instituciones.
--
*/
