-- SQL Script to insert a representative sample of significant cities and towns for Nepal (NP).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Nepal (NP).

-- NOTE: Nepal is mountainous with many localities. This list includes the capital, provincial capitals,
-- major cities, and significant municipalities/towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Nepal (NP) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Cities
('Kathmandu', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '44600'), -- National Capital (Bagmati Province)
('Pokhara', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '33700'), -- Gandaki Province Capital (Major city)
('Lalitpur (Patan)', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '44700'), -- Bagmati Province (KTM Valley, Major city)
('Bharatpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '44800'), -- Bagmati Province (Chitwan District, Major city)
('Biratnagar', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '56613'), -- Koshi Province Capital
('Birgunj', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '44300'), -- Madhesh Province (Major city, border town)
('Butwal', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '32907'), -- Lumbini Province Capital (De facto)
('Dharan', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '56700'), -- Koshi Province (Major city)
('Dhangadhi', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '10900'), -- Sudurpashchim Province Capital
('Janakpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '45600'), -- Madhesh Province Capital
('Hetauda', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '44100'), -- Bagmati Province Capital
('Nepalgunj', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '21900'), -- Lumbini Province (Major city)
('Itahari', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '56705'), -- Koshi Province (Major city)
('Bhaktapur', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '44800'), -- Bagmati Province (KTM Valley, UNESCO site)
('Birendranagar', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '21600'), -- Karnali Province Capital (Surkhet)
('Ghorahi', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '22400'), -- Lumbini Province Capital (Dang District)
('Tulsipur', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '22412'), -- Lumbini Province (Dang District)
('Tikapur', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '10902'), -- Sudurpashchim Province
('Gulariya', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '21800'), -- Lumbini Province (Bardiya District HQ)
('Bhimdatta (Mahendranagar)', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '10400'), -- Sudurpashchim Province (Kanchanpur District HQ)
('Triyuga (Gaighat)', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '56300'), -- Koshi Province (Udayapur District HQ)
('Mechinagar (Kakarbhitta)', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '57206'), -- Koshi Province (Jhapa District, border town)

-- Other Significant Towns / District HQs (Sample)
('Siddharthanagar (Bhairahawa)', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '32900'), -- Lumbini Province (Rupandehi District, near Lumbini site)
('Damak', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '57217'), -- Koshi Province (Jhapa District)
('Lahan', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '56500'), -- Madhesh Province (Siraha District)
('Panauti', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '45209'), -- Bagmati Province (Kavrepalanchok District)
('Dhulikhel', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '45200'), -- Bagmati Province (Kavrepalanchok District HQ)
('Bidur', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '44900'), -- Bagmati Province (Nuwakot District HQ)
('Malangwa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '45800'), -- Madhesh Province (Sarlahi District HQ)
('Jaleshwar', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '45700'), -- Madhesh Province (Mahottari District HQ)
('Rajbiraj', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '56400'), -- Madhesh Province (Saptari District HQ)
('Ilam', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '57300'), -- Koshi Province (Ilam District HQ)
('Chandrapur', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '44814'), -- Madhesh Province (Rautahat District)
('Kalaiya', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '44400'), -- Madhesh Province (Bara District HQ)
('Gaur', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '44500'), -- Madhesh Province (Rautahat District HQ)
('Taulihawa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '32800'), -- Lumbini Province (Kapilvastu District HQ, near Lumbini)
('Sandhikharka', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '32700'), -- Lumbini Province (Arghakhanchi District HQ)
('Tansen', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '32500'), -- Lumbini Province (Palpa District HQ)
('Baglung', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '33300'), -- Gandaki Province (Baglung District HQ)
('Besisahar', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '33600'), -- Gandaki Province (Lamjung District HQ)
('Beni', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '33200'), -- Gandaki Province (Myagdi District HQ)
('Jumla', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '21200'), -- Karnali Province (Jumla District HQ)
('Dailekh', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '21600'), -- Karnali Province (Dailekh District HQ) - PC needs check
('Mangalsen', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '10700'), -- Sudurpashchim Province (Achham District HQ)
('Dipayal Silgadhi', (SELECT id FROM world_countries WHERE iso_code_2 = 'NP'), '10600'); -- Sudurpashchim Province (Doti District HQ)

-- End of Nepal city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Nepal ==
-- ====================================
--
-- Descripción General:
-- Nepal es un país sin salida al mar ubicado en el sur de Asia, principalmente en
-- la cordillera del Himalaya. Limita con China (Región Autónoma del Tíbet) al norte,
-- e India al sur, este y oeste. Es conocido por albergar ocho de las diez montañas
-- más altas del mundo, incluyendo el Monte Everest, el punto más alto de la Tierra.
-- Su geografía varía desde las llanuras subtropicales del Terai en el sur, pasando
-- por las colinas centrales, hasta las altas montañas del Himalaya en el norte. Es
-- una república federal parlamentaria.
--
-- Ciudades Principales:
-- * Katmandú (Kathmandu): La capital y ciudad más grande, ubicada en el valle de
--   Katmandú. Centro histórico, cultural y económico. El valle (con Patan/Lalitpur
--   y Bhaktapur) es Patrimonio de la Humanidad.
-- * Pokhara: Segunda ciudad más grande, ubicada en un valle pintoresco con lagos,
--   popular destino turístico y puerta de entrada a los Annapurnas.
-- * Lalitpur (Patan) y Bhaktapur: Ciudades históricas adyacentes a Katmandú, famosas
--   por su arquitectura Newar y plazas Durbar (Patrimonio de la Humanidad).
-- * Biratnagar y Birgunj: Importantes centros industriales y comerciales en las
--   llanuras del Terai, cerca de la frontera con India.
-- * Bharatpur: Ciudad de rápido crecimiento en el centro-sur (Chitwan).
-- * La lista incluye también las capitales de las siete provincias y otras ciudades
--   y sedes de distrito significativas.
--
-- Un Poco de Historia:
-- La región de Nepal tiene una historia antigua, con diversos reinos y principados.
-- El valle de Katmandú fue el centro de la civilización Newar. En el siglo XVIII,
-- Prithvi Narayan Shah, rey del pequeño principado de Gorkha, unificó Nepal. La
-- dinastía Shah gobernó el país, aunque durante un siglo (1846-1951) el poder real
-- estuvo en manos de la familia Rana, que ejerció como primeros ministros hereditarios,
-- manteniendo al país aislado. La monarquía fue restaurada en 1951. Hubo un período
-- de democracia parlamentaria, luego un sistema Panchayat sin partidos bajo el rey,
-- y nuevamente democracia multipartidista desde 1990. Entre 1996 y 2006, Nepal
-- sufrió una guerra civil entre las fuerzas gubernamentales y la guerrilla maoísta.
-- En 2008, la monarquía fue abolida y Nepal se convirtió en una república federal
-- democrática.
--
-- Datos Adicionales:
-- El nepalí es el idioma oficial, pero se hablan muchas otras lenguas. El hinduismo
-- es la religión predominante, con una importante minoría budista (Lumbini, lugar
-- de nacimiento de Buda Gautama, es Patrimonio de la Humanidad). Nepal es famoso
-- por el Himalaya, el montañismo (Sherpas) y los soldados Gurkha. El turismo es
-- una fuente importante de ingresos.
--
*/
