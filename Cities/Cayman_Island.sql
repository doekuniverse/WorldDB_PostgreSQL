-- SQL Script to insert a representative sample of significant towns and district settlements for the Cayman Islands (KY).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Cayman Islands (KY).

-- NOTE: This list includes the capital and main settlements/district centers across the three islands.
-- Listing every single locality is IMPOSSIBLE.
-- Postal codes are KY#-#### format; examples are provided.

-- Inserting cities/towns for Cayman Islands (KY) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Grand Cayman
('George Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'KY'), 'KY1-1101'), -- Capital
('West Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'KY'), 'KY1-1401'), -- District
('Bodden Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'KY'), 'KY1-1801'), -- District, former capital
('East End', (SELECT id FROM world_countries WHERE iso_code_2 = 'KY'), 'KY1-1701'), -- District
('North Side', (SELECT id FROM world_countries WHERE iso_code_2 = 'KY'), 'KY1-1601'), -- District
('Seven Mile Beach', (SELECT id FROM world_countries WHERE iso_code_2 = 'KY'), 'KY1-1201'), -- Major tourist area (not official district)

-- Cayman Brac
('Stake Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'KY'), 'KY2-2101'), -- Main settlement/district center
('West End', (SELECT id FROM world_countries WHERE iso_code_2 = 'KY'), 'KY2-2301'), -- Area with airport
('Spot Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'KY'), 'KY2-2 Spot Bay'), -- Settlement (PC format varies slightly)
('Creek', (SELECT id FROM world_countries WHERE iso_code_2 = 'KY'), 'KY2-2 Creek'), -- Settlement

-- Little Cayman
('Blossom Village (South Town)', (SELECT id FROM world_countries WHERE iso_code_2 = 'KY'), 'KY3-2501'); -- Main (and virtually only) settlement

-- End of Cayman Islands locality list (Representative Sample)

/*
-- ========================================
-- == Información sobre Cayman Islands ==
-- ========================================
--
-- Descripción General:
-- Las Islas Caimán son un Territorio Británico de Ultramar autónomo ubicado en el
-- Mar Caribe occidental. Consisten en tres islas: Gran Caimán (la más grande y
-- poblada), Caimán Brac y Pequeño Caimán. Son un importante centro financiero
-- offshore mundial, conocido por sus servicios bancarios, de seguros y de registro
-- de fondos de inversión. También son un popular destino turístico por sus playas
-- (como Seven Mile Beach), el buceo y el snorkel.
--
-- Ciudades Principales (Localidades):
-- * George Town: La capital, ubicada en Gran Caimán, es el corazón financiero y
--   administrativo, además de un popular puerto de cruceros.
-- * West Bay: Distrito residencial y turístico en Gran Caimán, cerca de Seven Mile Beach.
-- * Bodden Town: Antigua capital, ahora un distrito residencial en Gran Caimán.
-- * Stake Bay: Principal centro administrativo en la isla de Caimán Brac.
-- * Blossom Village: Prácticamente el único asentamiento en la pequeña isla de
--   Pequeño Caimán.
--
-- Un Poco de Historia:
-- Las islas fueron avistadas por Colón y posteriormente visitadas por Sir Francis
-- Drake. Permanecieron en gran parte deshabitadas hasta el siglo XVII, cuando
-- comenzaron a ser pobladas por colonos británicos, desertores y otros provenientes
-- de Jamaica. Fueron administradas como una dependencia de Jamaica hasta 1962,
-- cuando Jamaica obtuvo la independencia y las Islas Caimán optaron por permanecer
-- como una colonia británica (luego Territorio de Ultramar). A partir de la década
-- de 1960, el territorio desarrolló rápidamente su sector financiero offshore y
-- su industria turística.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial. No tienen impuestos directos (como sobre la renta
-- o sociedades), lo que impulsa su sector financiero. La moneda es el Dólar de las
-- Islas Caimán (KYD), que está vinculado al dólar estadounidense. Son conocidas
-- por sus tortugas marinas y el Centro de Tortugas de Caimán.
--
*/
