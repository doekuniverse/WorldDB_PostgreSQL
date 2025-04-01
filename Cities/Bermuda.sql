-- SQL Script to insert the main municipalities and parishes for Bermuda (BM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Bermuda (BM).

-- NOTE: This list includes the 2 municipalities (Hamilton, St. George's) and the 9 parishes,
-- representing the main administrative and population structure. Listing every minor locality is not feasible.
-- Postal codes are examples representing the areas.

-- Inserting municipalities and parishes for Bermuda (BM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Municipalities
('Hamilton (City)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BM'), 'HM 11'), -- Capital City (within Pembroke Parish)
('Saint George''s (Town)', (SELECT id FROM world_countries WHERE iso_code_2 = 'BM'), 'GE 05'), -- Historic Town (within St. George's Parish)

-- Parishes (representing the main areas outside the specific municipalities)
('Sandys Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'BM'), 'SB 01'), -- Includes Somerset Village
('Southampton Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'BM'), 'SN 01'), -- Includes famous beaches
('Warwick Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'BM'), 'WK 01'),
('Paget Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'BM'), 'PG 01'), -- Includes Botanical Gardens
('Pembroke Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'BM'), 'HM 01'), -- Surrounds City of Hamilton
('Devonshire Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'BM'), 'DV 01'),
('Smith''s Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'BM'), 'HS 01'),
('Hamilton Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'BM'), 'CR 01'), -- Note: Distinct from City of Hamilton
('Saint George''s Parish', (SELECT id FROM world_countries WHERE iso_code_2 = 'BM'), 'GE 01'); -- Surrounds Town of St. George's

-- End of Bermuda municipality and parish list (Comprehensive Sample)

/*
-- ====================================
-- == Información sobre Bermuda ==
-- ====================================
--
-- Descripción General:
-- Bermuda es un Territorio Británico de Ultramar autónomo ubicado en el Océano
-- Atlántico Norte, a bastante distancia de la costa este de Estados Unidos. Es un
-- archipiélago formado por numerosas islas e islotes de origen volcánico y coralino,
-- conocido por sus distintivas playas de arena rosa, aguas turquesas y como un
-- importante centro financiero offshore y de reaseguros.
--
-- Ciudades Principales (Municipios y Parroquias):
-- * Hamilton: La capital y principal centro financiero y comercial, ubicada en la
--   parroquia de Pembroke.
-- * Saint George's: El asentamiento inglés continuamente habitado más antiguo del
--   Nuevo Mundo, declarado Patrimonio de la Humanidad por la UNESCO, ubicado en
--   la parroquia homónima.
-- * El resto del territorio se divide en 9 parroquias (parishes) que funcionan
--   como divisiones administrativas y áreas residenciales/turísticas principales.
--
-- Un Poco de Historia:
-- Descubierta por el español Juan de Bermúdez a principios del siglo XVI, no fue
-- colonizada hasta 1609 por colonos ingleses de la Virginia Company tras un
-- naufragio. St. George's se estableció en 1612. Bermuda jugó un papel en la
-- historia marítima, incluyendo corsarios durante guerras y como base naval
-- estratégica (especialmente para el Reino Unido y EE.UU.). Su economía evolucionó
-- de la agricultura y construcción naval al turismo y, más recientemente, a los
-- servicios financieros internacionales (especialmente seguros y reaseguros).
--
-- Datos Adicionales:
-- A pesar de su nombre asociado al "Triángulo de las Bermudas", es un lugar seguro
-- y próspero. El inglés es el idioma oficial. Es famosa por las bermudas (pantalones
-- cortos). Tiene uno de los PIB per cápita más altos del mundo.
--
*/
