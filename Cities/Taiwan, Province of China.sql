-- SQL Script to insert a representative sample of significant cities and administrative centers for Taiwan (TW).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Taiwan, Province of China (TW) as per ISO 3166-1.

-- NOTE: Taiwan has 6 special municipalities, 3 provincial cities, 13 counties, and hundreds of districts,
-- townships (urban/rural), and villages. Listing every single administrative unit or settlement is impractical.
-- This list focuses on the special municipalities, provincial cities, county seats, and a sample of other significant towns.
-- Postal codes ('郵遞區號') in Taiwan use a 3-digit format for main areas (extendable to 3+2). The 3-digit code is provided here.

-- Inserting cities for Taiwan (TW) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Special Municipalities (Directly under Central Government)
('Taipei', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '100'), -- Capital City (Special Municipality)
('New Taipei', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '220'), -- Most Populous City (Special Municipality, surrounds Taipei) - Use Banqiao District code as seat
('Taoyuan', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '330'), -- Major City / Airport Hub (Special Municipality)
('Taichung', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '400'), -- Major City / Central Taiwan Hub (Special Municipality)
('Tainan', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '700'), -- Historic City / Southern Taiwan (Special Municipality)
('Kaohsiung', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '800'), -- Major Port City / Southern Taiwan (Special Municipality)

-- Provincial Cities (Under Taiwan Province, effectively similar status to counties)
('Keelung', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '200'), -- Major Port City (Provincial City)
('Hsinchu', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '300'), -- Tech Hub / "Windy City" (Provincial City)
('Chiayi', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '600'), -- Gateway to Alishan (Provincial City, enclave within Chiayi County)

-- County Seats / Other Significant Towns (Sample)
('Yilan City', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '260'), -- Yilan County Seat
('Hualien City', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '970'), -- Hualien County Seat / East Coast Hub
('Taitung City', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '950'), -- Taitung County Seat / Southeast Coast
('Magong City', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '880'), -- Penghu (Pescadores) County Seat
('Miaoli City', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '360'), -- Miaoli County Seat
('Changhua City', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '500'), -- Changhua County Seat
('Nantou City', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '540'), -- Nantou County Seat (Only landlocked county)
('Douliu City', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '640'), -- Yunlin County Seat
('Pingtung City', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '900'), -- Pingtung County Seat
('Zhubei City', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '302'), -- Hsinchu County Seat (Adjacent to Hsinchu City)
('Taibao City', (SELECT id FROM world_countries WHERE iso_code_2 = 'TW'), '612'); -- Chiayi County Seat (Adjacent to Chiayi City)


-- End of Taiwan city list (Representative Sample)

/*
-- =============================================
-- ==    Información sobre Taiwán            ==
-- =============================================
--
-- Descripción General:
-- Taiwán, cuyo nombre oficial es República de China (ROC), es un estado insular
-- en Asia Oriental. Se ubica en el Océano Pacífico occidental, separada de la costa
-- sureste de China continental por el Estrecho de Taiwán. El territorio administrado
-- por la ROC incluye la isla principal de Taiwán (históricamente conocida como Formosa),
-- las islas Penghu (Pescadores), Kinmen, Matsu y otras islas menores. La geografía
-- de la isla principal está dominada por cadenas montañosas en el este y llanuras
-- en el oeste, donde se concentra la mayor parte de la población.
--
-- Ciudades Principales / Divisiones Administrativas:
-- Taiwán se divide administrativamente en:
-- * 6 Municipalidades Especiales: Taipéi (Capital), Nueva Taipéi, Taoyuan, Taichung,
--   Tainan y Kaohsiung. Son las áreas urbanas más grandes y pobladas.
-- * 3 Ciudades Provinciales: Keelung, Hsinchu y Chiayi.
-- * 13 Condados: Cada uno con su ciudad capital o centro administrativo.
--
-- Un Poco de Historia:
-- Habitada por pueblos austronesios durante milenios. Fue colonizada brevemente por
-- neerlandeses y españoles en el siglo XVII, antes de ser incorporada a la dinastía
-- Qing de China. Fue cedida a Japón en 1895 tras la Primera Guerra Sino-Japonesa.
-- Después de la Segunda Guerra Mundial en 1945, la República de China (ROC), que
-- entonces gobernaba China continental, asumió el control de Taiwán. En 1949, el
-- gobierno de la ROC, liderado por el Kuomintang (KMT), se retiró a Taiwán tras
-- perder la Guerra Civil China contra el Partido Comunista Chino, que estableció la
-- República Popular China (RPC) en el continente. La ROC continuó gobernando Taiwán
-- y las islas menores. Taiwán experimentó un rápido crecimiento económico ("Milagro
-- de Taiwán") y una transición de un régimen autoritario de partido único a una
-- democracia multipartidista en las décadas de 1980 y 1990.
--
-- Estatus Político:
-- El estatus político de Taiwán es complejo y disputado. La República Popular China
-- (RPC) reclama a Taiwán como una provincia propia y no reconoce la soberanía de la
-- República de China (ROC). La ROC se considera a sí misma un estado soberano, aunque
-- ya no reclama activamente gobernar toda China. La mayoría de los países del mundo
-- no reconocen formalmente a la ROC, pero mantienen relaciones no oficiales significativas
-- con Taiwán. El nombre utilizado en ISO 3166-1 es 'Taiwan, Province of China'.
--
-- Datos Adicionales:
-- El mandarín es el idioma oficial. El taiwanés (un dialecto Min Nan) y el hakka son
-- lenguas nativas importantes. El inglés es estudiado ampliamente. La población es
-- mayoritariamente de etnia Han, con una pequeña población indígena austronesia.
-- Taiwán es una economía altamente desarrollada, líder mundial en la fabricación de
-- semiconductores y tecnología. Tiene una cultura vibrante que mezcla influencias
-- chinas, japonesas, occidentales e indígenas. Es conocida por su comida callejera,
-- mercados nocturnos, templos y paisajes naturales.
--
*/
