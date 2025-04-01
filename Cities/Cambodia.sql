-- SQL Script to insert a representative sample of significant cities and towns for Cambodia (KH).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Cambodia (KH).

-- NOTE: This list includes the capital, provincial capitals, and significant district towns.
-- Listing every single village (phum) is IMPOSSIBLE.
-- Postal codes are usually 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Cambodia (KH) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Cities
('Phnom Penh', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '12000'), -- Capital
('Siem Reap', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '17000'), -- Siem Reap Province Capital (Gateway to Angkor)
('Battambang', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '02000'), -- Battambang Province Capital
('Sihanoukville (Preah Sihanouk)', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '18000'), -- Preah Sihanouk Province Capital (Port city)
('Kampong Cham', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '03000'), -- Kampong Cham Province Capital
('Kampot', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '07000'), -- Kampot Province Capital
('Takeo', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '21000'), -- Takeo Province Capital (Doun Kaev town)
('Pursat', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '15000'), -- Pursat Province Capital
('Kampong Speu', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '05000'), -- Kampong Speu Province Capital (Chbar Mon town)
('Kampong Thom', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '06000'), -- Kampong Thom Province Capital
('Kampong Chhnang', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '04000'), -- Kampong Chhnang Province Capital
('Koh Kong', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '09000'), -- Koh Kong Province Capital
('Prey Veng', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '14000'), -- Prey Veng Province Capital
('Svay Rieng', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '20000'), -- Svay Rieng Province Capital
('Kratié', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '10000'), -- Kratié Province Capital
('Stung Treng', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '19000'), -- Stung Treng Province Capital
('Banlung', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '16000'), -- Ratanakiri Province Capital
('Sen Monorom', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '11000'), -- Mondulkiri Province Capital
('Preah Vihear City (Tbeng Meanchey)', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '13000'), -- Preah Vihear Province Capital
('Kep', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '22000'), -- Kep Province Capital
('Pailin', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '24000'), -- Pailin Province Capital
('Samraong', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '23000'), -- Oddar Meanchey Province Capital
('Serei Saophoan (Sisophon)', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '01000'), -- Banteay Meanchey Province Capital

-- Other Significant Towns (Sample)
('Poipet', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '01407'), -- Banteay Meanchey (Border town with Thailand)
('Bavet', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '20202'), -- Svay Rieng (Border town with Vietnam)
('Kampong Trach', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '07300'), -- Kampot Province
('Skun', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '03150'), -- Kampong Cham Province (Known for fried spiders)
('Suong', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '03300'), -- Tboung Khmum Province Capital (split from Kampong Cham)
('Sre Ambel', (SELECT id FROM world_countries WHERE iso_code_2 = 'KH'), '09300'); -- Koh Kong Province

-- End of Cambodia city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Cambodia ==
-- ====================================
--
-- Descripción General:
-- Camboya (Cambodia) es un país ubicado en el corazón de la península de Indochina,
-- en el Sudeste Asiático. Limita con Tailandia al noroeste, Laos al noreste,
-- Vietnam al este y el Golfo de Tailandia al suroeste. El paisaje está dominado
-- por una llanura central formada por las inundaciones del río Mekong y el lago
-- Tonlé Sap (el lago de agua dulce más grande del Sudeste Asiático, cuyo flujo
-- se invierte estacionalmente). Es una monarquía constitucional.
--
-- Ciudades Principales:
-- * Phnom Penh: La capital y ciudad más grande, situada en la confluencia de los
--   ríos Mekong, Bassac y Tonlé Sap. Es el centro político, económico y cultural.
-- * Siem Reap: La puerta de entrada al complejo de templos de Angkor Wat, Patrimonio
--   de la Humanidad y principal atracción turística del país.
-- * Battambang: La segunda ciudad más grande (excluyendo el área metropolitana de
--   la capital), centro agrícola en el noroeste.
-- * Sihanoukville (Preah Sihanouk): Principal ciudad costera y puerto de aguas profundas.
-- * Kampong Cham: Importante ciudad a orillas del Mekong.
-- * La lista incluye también las capitales de todas las provincias.
--
-- Un Poco de Historia:
-- Camboya fue el centro del poderoso Imperio Jemer (Khmer) entre los siglos IX y XV,
-- cuya capital fue Angkor y que construyó los impresionantes templos de Angkor Wat.
-- Posteriormente, decayó y estuvo bajo la influencia de sus vecinos Siam (Tailandia)
-- y Vietnam. Se convirtió en un protectorado francés en 1863. Obtuvo la independencia
-- en 1953. La historia reciente estuvo marcada por la Guerra Civil Camboyana, el
-- bombardeo estadounidense durante la Guerra de Vietnam, y el brutal régimen de los
-- Jemeres Rojos (Khmer Rouge) bajo Pol Pot (1975-1979), durante el cual ocurrió un
-- genocidio que mató a aproximadamente una cuarta parte de la población. Tras la
-- invasión vietnamita y un periodo de transición bajo la ONU, se restauró la
-- monarquía y se estableció la democracia actual, aunque el país sigue enfrentando
-- desafíos de desarrollo y gobernanza.
--
-- Datos Adicionales:
-- El jemer (khmer) es el idioma oficial. El budismo Theravada es la religión
-- predominante. Angkor Wat es el monumento religioso más grande del mundo. El lago
-- Tonlé Sap es un ecosistema único con una biodiversidad increíblemente rica.
--
*/
