-- SQL Script to insert a representative sample of significant cities and towns for Georgia (GE).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Georgia (GE).

-- NOTE: This list includes the capital, major cities, regional centers, and significant towns,
-- including main towns in disputed regions (Abkhazia, South Ossetia). Listing every single village is IMPOSSIBLE.
-- Postal codes are 4 digits; examples or '0000' placeholder are provided.

-- Inserting cities for Georgia (GE) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Regional Centers
('Tbilisi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '0100'), -- National Capital
('Kutaisi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '4600'), -- Imereti region, second largest city
('Batumi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '6000'), -- Adjara AR Capital (Black Sea port)
('Rustavi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '3700'), -- Kvemo Kartli region (Industrial city near Tbilisi)
('Gori', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '1400'), -- Shida Kartli region Capital
('Zugdidi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '2100'), -- Samegrelo-Zemo Svaneti region Capital
('Poti', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '4400'), -- Samegrelo-Zemo Svaneti region (Major Black Sea port)
('Telavi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '2200'), -- Kakheti region Capital
('Samtredia', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '3900'), -- Imereti region
('Senaki', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '4100'), -- Samegrelo-Zemo Svaneti region
('Zestafoni', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '2000'), -- Imereti region
('Marneuli', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '3000'), -- Kvemo Kartli region
('Kobuleti', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '6200'), -- Adjara AR (Black Sea resort)
('Akhaltsikhe', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '0800'), -- Samtskhe-Javakheti region Capital
('Ozurgeti', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '3500'), -- Guria region Capital
('Kaspi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '1400'), -- Shida Kartli region (Postal code needs check)
('Chiatura', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '4000'), -- Imereti region (Mining town)
('Tskaltubo', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '5400'), -- Imereti region (Spa town)
('Sagarejo', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '3800'), -- Kakheti region
('Gardabani', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '1300'), -- Kvemo Kartli region
('Borjomi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '1200'), -- Samtskhe-Javakheti region (Spa town, mineral water)
('Tkibuli', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '4300'), -- Imereti region (Coal mining)
('Khashuri', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '5700'), -- Shida Kartli region
('Ambrolauri', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '0400'), -- Racha-Lechkhumi & Kvemo Svaneti region Capital
('Mtskheta', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '3300'), -- Mtskheta-Mtianeti region Capital (Ancient capital, UNESCO site)
('Bolnisi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '1100'), -- Kvemo Kartli region
('Kareli', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '1400'), -- Shida Kartli region (Postal code needs check)
('Lagodekhi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '2700'), -- Kakheti region
('Akhalkalaki', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '0600'), -- Samtskhe-Javakheti region
('Gurjaani', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '1500'), -- Kakheti region

-- Main towns in disputed regions (status internationally unrecognized for independence)
('Sukhumi (Sokhumi)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '0000'), -- Abkhazia AR (Disputed region)
('Gagra', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '0000'), -- Abkhazia AR (Disputed region)
('Gudauta', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '0000'), -- Abkhazia AR (Disputed region)
('Tskhinvali', (SELECT id FROM world_countries WHERE iso_code_2 = 'GE'), '0000'); -- South Ossetia (Disputed region)

-- End of Georgia city list (Representative Sample including disputed regions)

/*
-- ====================================
-- == Información sobre Georgia ==
-- ====================================
--
-- Descripción General:
-- Georgia es un país ubicado en la región del Cáucaso, en la intersección de Europa
-- del Este y Asia Occidental. Limita con Rusia al norte, Turquía y Armenia al sur,
-- Azerbaiyán al sureste y el Mar Negro al oeste. Su geografía es predominantemente
-- montañosa, dominada por las cordilleras del Gran Cáucaso al norte y el Cáucaso
-- Menor al sur, con valles fértiles y una costa subtropical en el medio. Es conocido
-- por su antigua historia, su cultura distintiva, su alfabeto único y por ser una
-- de las cunas de la viticultura.
--
-- Ciudades Principales:
-- * Tiflis (Tbilisi): La capital y ciudad más grande, ubicada en un valle a orillas
--   del río Kurá (Mtkvari). Es un importante centro histórico, cultural y económico.
-- * Kutaisi: La segunda ciudad más grande, sede del Parlamento georgiano, ubicada
--   en la región occidental de Imereti.
-- * Batumi: Principal puerto y ciudad turística en la costa del Mar Negro, capital
--   de la República Autónoma de Adjara.
-- * Rustavi: Importante centro industrial cerca de Tiflis.
-- * Gori: Ciudad natal de Stalin, capital de la región de Shida Kartli.
-- * Zugdidi y Poti: Principales ciudades en la región occidental de Samegrelo.
-- * La lista incluye también las capitales regionales y otras ciudades significativas.
--   También se mencionan las principales ciudades en las regiones en disputa de
--   Abjasia (Sukhumi, Gagra) y Osetia del Sur (Tskhinvali), cuya independencia no
--   es reconocida por la gran mayoría de la comunidad internacional.
--
-- Un Poco de Historia:
-- La región de Georgia fue hogar de antiguos reinos como Cólquida e Iberia. Fue uno
-- de los primeros países en adoptar el cristianismo como religión estatal (siglo IV).
-- Experimentó una Edad de Oro bajo el reinado de la Reina Tamar en los siglos XII-XIII.
-- Posteriormente, fue fragmentada y dominada por persas, otomanos y finalmente por
-- el Imperio Ruso en el siglo XIX. Tras un breve periodo de independencia (1918-1921),
-- fue incorporada a la Unión Soviética. Recuperó su independencia en 1991. La historia
-- postsoviética ha estado marcada por conflictos secesionistas en Abjasia y Osetia
-- del Sur (respaldados por Rusia), culminando en la guerra ruso-georgiana de 2008.
-- Georgia ha seguido una política pro-occidental, buscando la integración en la
-- OTAN y la Unión Europea.
--
-- Datos Adicionales:
-- El georgiano es el idioma oficial y utiliza un alfabeto único. La Iglesia Ortodoxa
-- Georgiana es la religión predominante. Georgia es considerada uno de los lugares
-- de origen del vino, con una tradición vinícola de miles de años. Es famosa por
-- su hospitalidad, su cocina y su música polifónica.
--
*/
