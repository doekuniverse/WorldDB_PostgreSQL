-- SQL Script to insert a representative sample of significant cities and towns for the United Kingdom (GB).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains United Kingdom of Great Britain and Northern Ireland (GB).
-- This list focuses on the UK mainland and Northern Ireland, excluding Overseas Territories and Crown Dependencies.

-- NOTE: The UK has thousands of cities, towns, villages, and localities across its four constituent countries.
-- Listing every single settlement is impractical for this format. This list focuses on the national capital,
-- the capitals of Scotland, Wales, and Northern Ireland, other major cities, and a sample of significant towns.
-- The UK uses a detailed alphanumeric postal code system (e.g., SW1A 0AA). Providing a single representative code is difficult;
-- using 'AAAA AAA' as a generic placeholder.

-- Inserting cities/towns for the United Kingdom (GB) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- UK Capital & Constituent Country Capitals
('London', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- UK Capital & Capital of England
('Edinburgh', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Capital of Scotland
('Cardiff', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Capital of Wales (Caerdydd in Welsh)
('Belfast', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Capital of Northern Ireland

-- Major Cities (England)
('Birmingham', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Second largest city in UK (England)
('Manchester', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Major city in North West England
('Liverpool', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Major city / Port (North West England)
('Leeds', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Major city in Yorkshire (England)
('Bristol', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Major city in South West England
('Sheffield', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Major city in Yorkshire (England)
('Newcastle upon Tyne', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Major city in North East England
('Leicester', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- City in the East Midlands (England)
('Nottingham', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- City in the East Midlands (England)

-- Major Cities (Other Constituent Countries)
('Glasgow', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Largest city in Scotland
('Swansea', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Second largest city in Wales (Abertawe in Welsh)
('Derry/Londonderry', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Second largest city in Northern Ireland

-- Other Significant Cities/Towns (Sample)
('Southampton', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Major port city (South East England)
('Portsmouth', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Major naval port city (South East England)
('Brighton and Hove', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Seaside city (South East England)
('Oxford', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- University city (South East England)
('Cambridge', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- University city (East of England)
('York', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Historic city (Yorkshire, England)
('Aberdeen', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'), -- Oil industry hub (Scotland)
('Dundee', (SELECT id FROM world_countries WHERE iso_code_2 = 'GB'), 'AAAA AAA'); -- City in Scotland


-- End of United Kingdom city/town list (Representative Sample)

/*
-- ==================================================================================
-- ==    Información sobre el Reino Unido de Gran Bretaña e Irlanda del Norte    ==
-- ==================================================================================
--
-- Descripción General:
-- El Reino Unido (United Kingdom, UK) es un país insular soberano ubicado frente a la
-- costa noroeste de Europa continental. Comprende la isla de Gran Bretaña (que contiene
-- Inglaterra, Escocia y Gales) y la parte noreste de la isla de Irlanda (Irlanda del Norte).
-- También incluye numerosas islas más pequeñas. Está rodeado por el Océano Atlántico,
-- el Mar del Norte, el Canal de la Mancha y el Mar de Irlanda. Es una monarquía
-- constitucional con un sistema parlamentario de gobierno.
--
-- Ciudades Principales:
-- * Londres (London): La capital del Reino Unido y de Inglaterra. Es una de las ciudades
--   globales más importantes del mundo, centro financiero, cultural y político.
-- * Edimburgo (Edinburgh): La capital de Escocia.
-- * Cardiff (Caerdydd): La capital de Gales.
-- * Belfast: La capital de Irlanda del Norte.
-- * Birmingham, Mánchester, Liverpool, Leeds, Brístol, Sheffield, Newcastle: Otras
--   ciudades principales en Inglaterra, con importantes roles económicos e industriales.
-- * Glasgow: La ciudad más grande de Escocia.
-- * Swansea (Abertawe): La segunda ciudad más grande de Gales.
-- * Derry/Londonderry: La segunda ciudad más grande de Irlanda del Norte.
--
-- Un Poco de Historia:
-- Habitada desde la prehistoria. La provincia romana de Britania cubrió gran parte
-- del sur de Gran Bretaña. Tras la retirada romana, tribus germánicas (anglos, sajones)
-- se establecieron, formando reinos anglosajones. La conquista normanda de 1066 tuvo
-- un impacto profundo. Los reinos de Inglaterra y Escocia se desarrollaron por separado,
-- uniéndose finalmente bajo una unión personal en 1603 y una unión política (Reino de
-- Gran Bretaña) en 1707. La unión con Irlanda en 1801 creó el Reino Unido de Gran
-- Bretaña e Irlanda. Gran parte de Irlanda se independizó en 1922, formando el actual
-- Reino Unido de Gran Bretaña e Irlanda del Norte. El Reino Unido construyó un vasto
-- Imperio Británico, que fue el más grande de la historia, descolonizado en gran parte
-- durante el siglo XX. Jugó un papel crucial en las Guerras Mundiales y en el desarrollo
-- de la democracia parlamentaria, la literatura, la ciencia y la Revolución Industrial.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial y de facto. También se hablan lenguas regionales
-- reconocidas como el galés, el gaélico escocés, el irlandés, el escocés y el córnico.
-- Es una sociedad multicultural y multiétnica. La religión principal históricamente
-- ha sido el cristianismo (Iglesia de Inglaterra, Iglesia de Escocia, etc.), pero es
-- cada vez más diverso religiosamente y secular. El Reino Unido es una potencia mundial
-- con influencia económica, cultural, militar y política significativa. Es miembro
-- permanente del Consejo de Seguridad de la ONU, la OTAN, la Mancomunidad de Naciones
-- y el G7. Dejó la Unión Europea en 2020 (Brexit).
--
*/
