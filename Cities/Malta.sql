-- SQL Script to insert all local councils (main administrative divisions) for Malta (MT).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Malta (MT).

-- NOTE: Malta is divided into 68 local councils (kunsilli lokali). This list includes all of them,
-- providing essentially complete coverage at the municipal level.
-- Postal codes are LLL#### format; representative examples are provided.

-- Inserting local councils for Malta (MT) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Malta Island
('Valletta', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'VLT 1000'), -- Capital
('Attard', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'ATD 1000'),
('Balzan', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'BZN 1000'),
('Birgu (Vittoriosa)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'BRG 1000'), -- One of the Three Cities
('Birkirkara', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'BKR 1000'), -- Largest locality by population
('Birżebbuġa', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'BBG 1000'),
('Bormla (Cospicua)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'BML 1000'), -- One of the Three Cities
('Dingli', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'DGL 1000'),
('Fgura', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'FGR 1000'),
('Floriana', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'FRN 1000'), -- Suburb of Valletta
('Għargħur', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'GHR 1000'),
('Għaxaq', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'GXQ 1000'),
('Gudja', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'GDJ 1000'),
('Gżira', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'GZR 1000'),
('Ħamrun', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'HMR 1000'),
('Iklin', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'IKL 1000'),
('Isla (Senglea)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'ISL 1000'), -- One of the Three Cities
('Kalkara', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'KKR 1000'),
('Kirkop', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'KKP 1000'),
('Lija', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'LJA 1000'),
('Luqa', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'LQA 1000'), -- Location of airport
('Marsa', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'MRS 1000'), -- Port area
('Marsaskala', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'MSK 1000'), -- Coastal town
('Marsaxlokk', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'MXK 1000'), -- Fishing village
('Mdina', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'MDN 1000'), -- Former capital, walled city
('Mellieħa', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'MLH 1000'), -- Northern town, beaches
('Mġarr', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'MGR 1000'),
('Mosta', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'MST 1000'), -- Known for its Rotunda (church)
('Mqabba', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'MQB 1000'),
('Msida', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'MSD 1000'), -- Location of University
('Mtarfa', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'MTF 1000'),
('Naxxar', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'NXR 1000'),
('Paola', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'PLA 1000'), -- Known for Hypogeum UNESCO site
('Pembroke', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'PBK 1000'),
('Pietà', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'PTA 1000'),
('Qormi', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'QRM 1000'),
('Qrendi', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'QRD 1000'),
('Rabat', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'RBT 1000'), -- Adjacent to Mdina
('Safi', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'SFI 1000'),
('San Ġiljan (St. Julian''s)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'STJ 1000'), -- Entertainment/tourist area
('San Ġwann', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'SGN 1000'),
('San Pawl il-Baħar (St. Paul''s Bay)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'SPB 1000'), -- Large coastal town/area
('Santa Luċija', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'SLC 1000'),
('Santa Venera', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'SVR 1000'),
('Siġġiewi', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'SGW 1000'),
('Sliema', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'SLM 1000'), -- Major commercial/residential/tourist area
('Swieqi', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'SWQ 1000'),
('Ta'' Xbiex', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'XBX 1000'),
('Tarxien', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'TXN 1000'), -- Known for temples UNESCO site
('Xgħajra', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'XJR 1000'),
('Żabbar', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'ZBR 1000'),
('Żebbuġ', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'ZBG 1000'),
('Żejtun', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'ZTN 1000'),
('Żurrieq', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'ZRQ 1000'),

-- Gozo Island
('Fontana', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'FNT 1000'),
('Għajnsielem', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'GSM 1000'), -- Location of Gozo ferry terminal
('Għarb', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'GRB 1000'),
('Għasri', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'GSR 1000'), -- Smallest locality
('Kerċem', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'KCM 1000'),
('Munxar', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'MXR 1000'),
('Nadur', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'NDR 1000'),
('Qala', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'QLA 1000'),
('Rabat (Victoria)', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'VCT 1000'), -- Capital of Gozo
('San Lawrenz', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'SLZ 1000'),
('Sannat', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'SNT 1000'),
('Xagħra', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'XRA 1000'), -- Known for Ġgantija temples UNESCO site
('Xewkija', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'XWK 1000'),
('Żebbuġ', (SELECT id FROM world_countries WHERE iso_code_2 = 'MT'), 'ZBB 1000'); -- Note: Different Żebbuġ from Malta island

-- Comino island is part of Għajnsielem council and virtually uninhabited.

-- End of Malta local council list (All 68 councils included)

/*
-- ====================================
-- == Información sobre Malta ==
-- ====================================
--
-- Descripción General:
-- La República de Malta es un pequeño país insular densamente poblado ubicado en el
-- Mar Mediterráneo central, al sur de Sicilia (Italia) y al norte de Libia. Es un
-- archipiélago, siendo las tres islas más grandes y habitadas Malta, Gozo y Comino.
-- Debido a su ubicación estratégica, ha tenido una larga historia como base naval y
-- comercial. Es miembro de la Unión Europea y la Eurozona.
--
-- Ciudades Principales (Consejos Locales):
-- Malta se divide administrativamente en 68 consejos locales (kunsilli lokali), que
-- cubren todo el territorio. No hay una gran distinción entre ciudades y pueblos grandes.
-- * La Valeta (Valletta): La capital, una ciudad fortificada barroca construida por
--   los Caballeros de San Juan (Patrimonio de la Humanidad). Es la capital más
--   pequeña de la UE.
-- * Birkirkara: El consejo local más poblado.
-- * Sliema y San Ġiljan (St. Julian's): Importantes centros comerciales, residenciales
--   y turísticos/de ocio.
-- * Mosta: Conocida por su gran iglesia con cúpula (Rotunda).
-- * Rabat (Victoria): La capital de la isla de Gozo.
-- * Birgu, Bormla, Isla: Conocidas como "Las Tres Ciudades", frente a La Valeta.
-- * Mdina: Antigua capital medieval amurallada.
-- * La lista incluye los 68 consejos locales que componen el país.
--
-- Un Poco de Historia:
-- Malta tiene una historia muy rica, con templos megalíticos prehistóricos (anteriores
-- a las pirámides de Egipto, Patrimonio de la Humanidad). Fue colonizada por fenicios,
-- cartagineses, romanos, bizantinos y árabes. En la Edad Media, pasó a manos de los
-- normandos, aragoneses y finalmente, en 1530, fue cedida a los Caballeros de la
-- Orden de San Juan (Caballeros de Malta) por Carlos I de España. Los Caballeros
-- resistieron un famoso asedio otomano en 1565 y fortificaron la isla. Napoleón
-- capturó Malta brevemente en 1798, pero pronto quedó bajo control británico. Fue
-- una base naval británica crucial, especialmente durante la Segunda Guerra Mundial
-- (sufrió intensos bombardeos). Obtuvo la independencia del Reino Unido en 1964 y
-- se convirtió en república en 1974. Se unió a la UE en 2004.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el maltés (una lengua semítica única escrita en alfabeto
-- latino) y el inglés. El catolicismo romano es la religión predominante. La economía
-- se basa en el turismo, los servicios financieros, el juego online y la manufactura.
--
*/
