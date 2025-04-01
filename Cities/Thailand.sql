-- SQL Script to insert a representative sample of significant cities and towns for Thailand (TH).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Thailand (TH).

-- NOTE: Thailand has the Bangkok Metropolitan Administration (BMA), numerous cities ('thesaban nakhon'),
-- towns ('thesaban mueang'), subdistricts ('tambon'), and thousands of villages ('muban').
-- Listing every single settlement is impractical for this format. This list focuses on the capital area,
-- major cities, provincial capitals, and a sample of other significant towns.
-- Postal codes in Thailand use a 5-digit format (NNNNN). A representative code is provided where possible,
-- but usage/data availability might vary. Using '00000' as a placeholder if unavailable.

-- Inserting cities for Thailand (TH) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital Metropolitan Area & Major Cities
('Bangkok', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '10100'), -- National Capital (Bangkok Metropolitan Administration - BMA)
('Nonthaburi', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '11000'), -- Major City / Part of BMA agglomeration (Nonthaburi Province Capital)
('Pak Kret', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '11120'), -- Major City / Part of BMA agglomeration (Nonthaburi Province)
('Hat Yai', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '90110'), -- Major City in Southern Thailand (Songkhla Province)
('Nakhon Ratchasima', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '30000'), -- Major City in Northeast (Isan) (Nakhon Ratchasima Province Capital - also known as Korat)
('Chiang Mai', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '50000'), -- Major City in Northern Thailand (Chiang Mai Province Capital)
('Udon Thani', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '41000'), -- Major City in Northeast (Isan) (Udon Thani Province Capital)
('Surat Thani', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '84000'), -- Major City / Gateway to Southern Islands (Surat Thani Province Capital)
('Khon Kaen', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '40000'), -- Major City in Northeast (Isan) (Khon Kaen Province Capital)
('Pattaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '20150'), -- Major Coastal Resort City (Chon Buri Province)

-- Provincial Capitals / Other Significant Towns (Sample)
('Phuket City', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '83000'), -- Phuket Province Capital (Major Tourist Island)
('Nakhon Si Thammarat', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '80000'), -- Nakhon Si Thammarat Province Capital (Southern Thailand)
('Chiang Rai', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '57000'), -- Chiang Rai Province Capital (Northern Thailand)
('Phitsanulok', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '65000'), -- Phitsanulok Province Capital (Lower Northern Thailand)
('Songkhla', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '90000'), -- Songkhla Province Capital (Southern Thailand, near Hat Yai)
('Ubon Ratchathani', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '34000'), -- Ubon Ratchathani Province Capital (Northeast - Isan)
('Nakhon Sawan', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '60000'), -- Nakhon Sawan Province Capital (Central Thailand)
('Rayong', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '21000'), -- Rayong Province Capital (Eastern Seaboard)
('Ayutthaya (Phra Nakhon Si Ayutthaya)', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '13000'), -- Phra Nakhon Si Ayutthaya Province Capital (Historic Capital)
('Lampang', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '52000'), -- Lampang Province Capital (Northern Thailand)
('Trang', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '92000'), -- Trang Province Capital (Southern Thailand)
('Kanchanaburi', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '71000'), -- Kanchanaburi Province Capital (Western Thailand)
('Sakon Nakhon', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '47000'), -- Sakon Nakhon Province Capital (Northeast - Isan)
('Chon Buri', (SELECT id FROM world_countries WHERE iso_code_2 = 'TH'), '20000'); -- Chon Buri Province Capital (Eastern Seaboard)


-- End of Thailand city list (Representative Sample)

/*
-- =============================================
-- ==    Información sobre Tailandia         ==
-- =============================================
--
-- Descripción General:
-- Tailandia (ประเทศไทย), oficialmente el Reino de Tailandia, anteriormente conocido
-- como Siam, es un país ubicado en el centro de la península de Indochina en el
-- Sudeste Asiático. Limita con Myanmar (Birmania) y Laos al norte, Laos y Camboya
-- al este, el Golfo de Tailandia y Malasia al sur, y el Mar de Andamán y Myanmar
-- al oeste. Su geografía varía desde las montañas boscosas del norte, las fértiles
-- llanuras centrales (cuenca del río Chao Phraya), la meseta semiárida del noreste
-- (Isan) y la península del sur con numerosas islas y playas.
--
-- Ciudades Principales:
-- * Bangkok (Krung Thep Maha Nakhon): La capital y ciudad más grande, centro político,
--   económico, cultural y de transporte del país. Es una metrópolis vibrante conocida
--   por sus templos ornamentados, palacios y vida callejera.
-- * Chiang Mai: La ciudad más grande del norte de Tailandia, centro cultural y puerta
--   de entrada a las montañas y tribus locales.
-- * Nakhon Ratchasima (Korat), Khon Kaen, Udon Thani: Ciudades principales de la
--   región noreste (Isan).
-- * Hat Yai: Principal centro comercial del sur de Tailandia.
-- * Pattaya: Famosa ciudad turística costera en el Golfo de Tailandia.
-- * Phuket City: Centro administrativo de la isla de Phuket, un destino turístico
--   internacional.
--
-- Un Poco de Historia:
-- La región ha estado habitada durante milenios. Varios reinos tailandeses/siameses
-- surgieron, incluyendo los influyentes reinos de Sukhothai (siglo XIII-XV) y
-- Ayutthaya (siglo XIV-XVIII). Tras la destrucción de Ayutthaya por los birmanos,
-- la capital se trasladó brevemente a Thonburi y luego a Bangkok en 1782, fundando
-- la dinastía Chakri, que reina hasta hoy. Siam fue el único país del Sudeste
-- Asiático que evitó la colonización europea directa, aunque cedió territorios a
-- Francia y Gran Bretaña. Cambió su nombre a Tailandia en 1939. Ha experimentado
-- períodos de democracia parlamentaria, golpes militares y monarquía constitucional.
-- El rey de Tailandia es una figura muy venerada y jefe de estado.
--
-- Datos Adicionales:
-- El tailandés (Thai) es el idioma oficial. El inglés se habla en áreas turísticas
-- y negocios. La gran mayoría de la población es de etnia Thai, con minorías chinas,
-- malayas y de tribus de las montañas. El budismo Theravada es la religión predominante
-- y juega un papel central en la cultura y la vida diaria. Tailandia es famosa por
-- su cocina, masajes tradicionales, festivales coloridos (como Songkran, el año nuevo
-- tailandés) y hospitalidad. El turismo es una industria vital. Es una monarquía
-- constitucional con un rey como jefe de estado y un primer ministro como jefe de
-- gobierno.
--
*/
