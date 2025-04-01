-- SQL Script to insert a representative sample of significant cities and towns for Kyrgyzstan (KG).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Kyrgyzstan (KG).

-- NOTE: Kyrgyzstan is mountainous with many localities. This list includes the capital, major cities,
-- regional capitals, and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are 6 digits; examples or '000000' placeholder are provided.

-- Inserting cities for Kyrgyzstan (KG) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Regional Capitals (Oblast Centers)
('Bishkek', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '720000'), -- National Capital & Chuy Region Admin Center (City status)
('Osh', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '714000'), -- Second largest city (City status)
('Jalal-Abad', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '715600'), -- Jalal-Abad Region Capital
('Karakol', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '722200'), -- Issyk-Kul Region Capital
('Tokmok', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '724000'), -- Chuy Region (Major town)
('Kara-Balta', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '724400'), -- Chuy Region (Major town)
('Naryn', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '722600'), -- Naryn Region Capital
('Talas', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '724200'), -- Talas Region Capital
('Batken', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '720100'), -- Batken Region Capital
('Uzgen', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '723600'), -- Osh Region (Historic town)
('Kyzyl-Kiya', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '723100'), -- Batken Region (Mining town)
('Balykchy', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '721900'), -- Issyk-Kul Region (Western end of lake)
('Kant', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '724300'), -- Chuy Region (Near Bishkek)
('Toktogul', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '720900'), -- Jalal-Abad Region (Near reservoir)
('Kara-Suu', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '723200'), -- Osh Region (Border market town)
('Isfana (Razzakov)', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '715300'), -- Batken Region (Leilek District capital, renamed Razzakov)
('Cholpon-Ata', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '722124'), -- Issyk-Kul Region (Resort town)
('Kochkor-Ata', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '715400'), -- Jalal-Abad Region
('Kerben', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '715100'), -- Jalal-Abad Region (Aksy District capital)
('Mailuu-Suu', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '715420'), -- Jalal-Abad Region (Former uranium town)
('Tash-Kumyr', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '715120'), -- Jalal-Abad Region
('Kara-Kul', (SELECT id FROM world_countries WHERE iso_code_2 = 'KG'), '715620'); -- Jalal-Abad Region

-- End of Kyrgyzstan city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Kyrgyzstan ==
-- ====================================
--
-- Descripción General:
-- Kirguistán (Kyrgyzstan), oficialmente República Kirguisa, es un país sin salida
-- al mar ubicado en Asia Central. Limita con Kazajistán al norte, China al este,
-- Tayikistán al sur y Uzbekistán al oeste. Es un país predominantemente montañoso,
-- dominado por la cordillera del Tian Shan, que cubre más del 80% del territorio.
-- Esto le ha valido el apodo de la "Suiza de Asia Central". El lago Issyk-Kul, un
-- gran lago salino de alta montaña, es una característica geográfica importante.
--
-- Ciudades Principales:
-- * Biskek (Bishkek): La capital y ciudad más grande, ubicada en el valle de Chuy,
--   cerca de la frontera con Kazajistán.
-- * Osh: La segunda ciudad más grande, ubicada en el fértil valle de Ferganá en el sur,
--   es una de las ciudades más antiguas de Asia Central.
-- * Jalal-Abad: Tercera ciudad, también en el valle de Ferganá.
-- * Karakol: Principal ciudad en el este, cerca del lago Issyk-Kul.
-- * Tokmok y Kara-Balta: Ciudades importantes en el valle de Chuy.
-- * Naryn, Talas, Batken: Capitales de las regiones montañosas o más remotas.
-- * La lista incluye también las capitales de todas las regiones (óblasts) y otras
--   ciudades significativas.
--
-- Un Poco de Historia:
-- La región fue habitada por pueblos nómadas escitas y luego túrquicos. Formó parte
-- de diversos imperios y kanatos, incluyendo el Kanato de Kokand. Fue conquistada
-- por el Imperio Ruso en el siglo XIX. Tras la Revolución Rusa, se estableció la
-- República Socialista Soviética de Kirguistán dentro de la URSS. Durante la era
-- soviética, se definieron las fronteras actuales (a menudo complejas, especialmente
-- en el valle de Ferganá) y se promovió la sedentarización de los nómadas. Kirguistán
-- declaró su independencia en 1991 tras la disolución de la URSS. La historia
-- post-independencia ha estado marcada por una relativa apertura democrática
-- (en comparación con sus vecinos), pero también por inestabilidad política,
-- incluyendo las revoluciones de 2005 (Revolución de los Tulipanes) y 2010, tensiones
-- étnicas (especialmente en el sur) y desafíos económicos.
--
-- Datos Adicionales:
-- El kirguís (una lengua túrquica) y el ruso son los idiomas oficiales. El Islam
-- sunita es la religión predominante. Las tradiciones nómadas (yurtas, caballos,
-- juegos ecuestres) siguen siendo una parte importante de la cultura. El Poema
-- épico de Manas es una obra fundamental de la literatura oral kirguís. El lago
-- Issyk-Kul es el segundo lago de montaña más grande del mundo después del Titicaca.
--
*/
