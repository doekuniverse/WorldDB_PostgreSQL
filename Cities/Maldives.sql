-- SQL Script to insert a representative sample of significant cities and inhabited islands for Maldives (MV).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Maldives (MV).

-- NOTE: Maldives is an archipelago of nearly 1200 islands (~200 inhabited). This list includes the capital,
-- designated cities, atoll capitals, and significant inhabited islands. Listing every single island/village is IMPOSSIBLE.
-- Postal codes are 5 digits but usage is limited; examples or '00000' placeholder are provided.

-- Inserting cities/islands for Maldives (MV) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Designated Cities
('Malé', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '20000'), -- National Capital (Kaafu Atoll)
('Addu City (Hithadhoo)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '19010'), -- Addu Atoll (Designated City - Hithadhoo is main island)
('Fuvahmulah', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '18010'), -- Gnaviyani Atoll (Designated City - Single island atoll)
('Kulhudhuffushi', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '02010'), -- Haa Dhaalu Atoll (Designated City)

-- Atoll Capitals / Significant Inhabited Islands (Sample)
('Naifaru', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '07020'), -- Lhaviyani Atoll Capital
('Hinnavaru', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '07040'), -- Lhaviyani Atoll (Large population)
('Eydhafushi', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '06070'), -- Baa Atoll Capital
('Manadhoo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '04080'), -- Noonu Atoll Capital
('Funadhoo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '05060'), -- Shaviyani Atoll Capital
('Thinadhoo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '17040'), -- Gaafu Dhaalu Atoll Capital
('Villingili', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '16010'), -- Gaafu Alifu Atoll Capital
('Mahibadhoo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '00040'), -- Alif Dhaal Atoll Capital
('Rasdhoo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '09020'), -- Alif Alif Atoll Capital
('Felidhoo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '10010'), -- Vaavu Atoll Capital
('Muli', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '12010'), -- Meemu Atoll Capital
('Nilandhoo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '11010'), -- Faafu Atoll Capital
('Kudahuvadhoo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '14010'), -- Dhaalu Atoll Capital
('Dhuvaafaru', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '00000'), -- Raa Atoll (Resettled island after tsunami)
('Ugoofaaru', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '08010'), -- Raa Atoll Capital
('Gan', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '19070'), -- Addu Atoll (Location of Gan Int'l Airport)
('Dhidhdhoo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '01010'), -- Haa Alifu Atoll Capital
('Hanimaadhoo', (SELECT id FROM world_countries WHERE iso_code_2 = 'MV'), '02020'); -- Haa Dhaalu Atoll (Regional Airport)

-- End of Maldives locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Maldives ==
-- ====================================
--
-- Descripción General:
-- La República de Maldivas es un país insular ubicado en el Océano Índico, al
-- suroeste de Sri Lanka e India. Consiste en un archipiélago de 26 atolones
-- naturales que comprenden cerca de 1,200 islas de coral, de las cuales unas 200
-- están habitadas. Es el país asiático más pequeño tanto en área terrestre como
-- en población. Es también el país con la altitud promedio más baja del mundo,
-- lo que lo hace extremadamente vulnerable al aumento del nivel del mar. Es famoso
-- por sus lujosos resorts turísticos, playas de arena blanca y aguas cristalinas
-- con abundante vida marina.
--
-- Ciudades Principales (Localidades):
-- * Malé: La capital y ciudad más poblada, ubicada en una isla densamente construida
--   en el atolón de Kaafu. Es el centro político, económico y de transporte.
-- * Addu City: La segunda área urbana más grande, ubicada en el atolón más meridional
--   (Addu), designada como ciudad. Incluye varias islas conectadas como Hithadhoo y Gan.
-- * Fuvahmulah: Una isla única que forma su propio atolón y también tiene estatus de ciudad.
-- * Kulhudhuffushi: Ciudad designada recientemente, centro importante en el norte.
-- * Otras localidades importantes son las capitales administrativas de los diversos
--   atolones (como Naifaru, Eydhafushi, Thinadhoo, etc.) y otras islas pobladas.
--
-- Un Poco de Historia:
-- Las islas fueron pobladas desde el subcontinente indio y Sri Lanka. El budismo
-- fue la religión predominante hasta el siglo XII, cuando se introdujo el Islam,
-- convirtiéndose en un sultanato. Fue un protectorado portugués, neerlandés y
-- finalmente británico (desde 1887). Obtuvo la independencia del Reino Unido en
-- 1965 y se convirtió en república en 1968. La política post-independencia estuvo
-- dominada durante mucho tiempo por Maumoon Abdul Gayoom. El país experimentó una
-- transición democrática a partir de 2008, aunque ha habido periodos de
-- inestabilidad política. El turismo de lujo se desarrolló enormemente a partir
-- de los años 70, convirtiéndose en la principal industria.
--
-- Datos Adicionales:
-- El dhivehi es el idioma oficial (una lengua indoaria). El Islam sunita es la
-- religión oficial. La economía depende masivamente del turismo y, en menor medida,
-- de la pesca. Maldivas es un destino líder mundial para el buceo y el snorkel.
-- El país ha sido muy activo internacionalmente en la concienciación sobre el
-- cambio climático debido a su vulnerabilidad.
--
*/
