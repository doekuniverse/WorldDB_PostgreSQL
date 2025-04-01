-- SQL Script to insert a representative sample of significant cities and towns for Uzbekistan (UZ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Uzbekistan (UZ).

-- NOTE: Uzbekistan is divided into regions (viloyatlar), one autonomous republic (Karakalpakstan), and one independent city (Tashkent). These contain districts, cities, towns, and numerous villages ('qishloq').
-- Listing every single settlement is impractical for this format. This list focuses on the national capital,
-- major historical cities, regional capitals, and a sample of other significant towns.
-- Uzbekistan uses 6-digit postal codes (NNNNNN). A representative code for the city center is provided where possible,
-- but areas often span multiple codes. Using '000000' as a placeholder if unavailable for this sample.

-- Inserting cities/towns for Uzbekistan (UZ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- National Capital & Major Historical/Regional Cities
('Tashkent', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '100000'), -- National Capital (Independent City)
('Samarkand', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '140100'), -- Major Historical City / Silk Road Hub (Samarqand Region Capital) - Samarcanda
('Bukhara', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '200100'), -- Major Historical City / Silk Road Hub (Buxoro Region Capital) - Bujará
('Namangan', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '160100'), -- Major City in Fergana Valley (Namangan Region Capital)
('Andijan', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '170100'), -- Major City in Fergana Valley (Andijon Region Capital)
('Nukus', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '230100'), -- Capital of Karakalpakstan Republic
('Fergana', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '150100'), -- Fergana Region Capital (Fergana Valley)
('Qarshi', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '180100'), -- Qashqadaryo Region Capital
('Qoʻqon', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '150700'), -- Major city in Fergana Region (Kokand)
('Margʻilon', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '150300'), -- City known for silk production (Fergana Region) - Margilan

-- Other Regional Capitals / Significant Towns (Sample)
('Urgench', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '220100'), -- Xorazm Region Capital (near Khiva)
('Jizzakh', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '130100'), -- Jizzax Region Capital
('Termez', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '190100'), -- Surxondaryo Region Capital (border city with Afghanistan)
('Navoiy', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '210100'), -- Navoiy Region Capital (Industrial city)
('Guliston', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '120100'), -- Sirdaryo Region Capital
('Angren', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '110200'), -- Industrial city (Tashkent Region)
('Chirchiq', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '111700'), -- Industrial city (Tashkent Region)
('Olmaliq', (SELECT id FROM world_countries WHERE iso_code_2 = 'UZ'), '110400'); -- Mining city (Tashkent Region) - Almalyk


-- End of Uzbekistan city/town list (Representative Sample)

/*
-- =============================================
-- ==      Información sobre Uzbekistán      ==
-- =============================================
--
-- Descripción General:
-- Uzbekistán, oficialmente la República de Uzbekistán, es un país doblemente sin
-- salida al mar ubicado en Asia Central (uno de los dos únicos en el mundo, junto
-- con Liechtenstein). Limita con Kazajistán al norte, Kirguistán al noreste,
-- Tayikistán al sureste, Afganistán al sur y Turkmenistán al suroeste. Gran parte
-- de su territorio consiste en llanuras desérticas (Kizil Kum), con montañas en el
-- este y el densamente poblado Valle de Fergana. El Mar de Aral, en el noroeste, ha
-- disminuido drásticamente debido al desvío de ríos para la irrigación.
--
-- Ciudades Principales:
-- * Taskent (Tashkent): La capital y ciudad más grande, importante centro económico
--   y cultural de Asia Central.
-- * Samarcanda (Samarkand): Ciudad legendaria de la Ruta de la Seda, famosa por su
--   arquitectura islámica monumental (Registán, Mezquita Bibi-Khanym, Gur-e Amir).
--   Patrimonio de la Humanidad por la UNESCO.
-- * Bujará (Bukhara): Otro importante centro histórico y cultural de la Ruta de la Seda,
--   con un centro histórico bien conservado. Patrimonio de la Humanidad.
-- * Jiva (Khiva): Ciudad oasis amurallada (Itchan Kala) en la región de Corasmia,
--   también Patrimonio de la Humanidad. (Urgench es la capital regional moderna cercana).
-- * Namangan, Andiyán (Andijan), Ferganá: Principales ciudades del fértil y densamente
--   poblado Valle de Fergana.
-- * Nukus: Capital de la República autónoma de Karakalpakistán, conocida por su museo de arte.
-- * Qarshi, Termez, Navoi, Guliston, Jizzax: Capitales de otras regiones (viloyatlar).
--
-- Un Poco de Historia:
-- La región ha sido un centro de antiguas civilizaciones (Bactria, Sogdiana, Corasmia)
-- y una parte crucial de la Ruta de la Seda. Fue conquistada por persas, griegos
-- (Alejandro Magno), árabes (introduciendo el Islam) y varios imperios túrquicos y
-- mongoles. Alcanzó un gran esplendor bajo Tamerlán (Timur) y sus sucesores (Imperio
-- Timúrida) en los siglos XIV-XV, con Samarcanda como capital. Posteriormente, se
-- dividió en varios kanatos (Bujará, Jiva, Kokand). Fue conquistada por el Imperio
-- Ruso en el siglo XIX. Tras la Revolución Rusa, se estableció la República Socialista
-- Soviética de Uzbekistán en 1924. Obtuvo la independencia tras la disolución de la
-- Unión Soviética en 1991. Islam Karimov gobernó el país desde la independencia hasta
-- su muerte en 2016, sucedido por Shavkat Mirziyoyev, quien ha iniciado algunas reformas.
--
-- Datos Adicionales:
-- El uzbeko (una lengua túrquica) es el idioma oficial. El ruso sigue siendo importante,
-- especialmente en las ciudades. El tayiko se habla en áreas como Samarcanda y Bujará.
-- La mayoría de la población es de etnia uzbeka y musulmana sunita. Uzbekistán es un
-- importante productor y exportador de algodón, aunque se intenta diversificar la
-- economía. Posee también reservas de gas natural, oro y otros minerales. El turismo
-- cultural, centrado en las ciudades históricas, es un sector en crecimiento.
--
*/
