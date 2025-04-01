-- SQL Script to insert a highly selective sample of major cities and provincial/territorial capitals for Pakistan (PK).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Pakistan (PK).

-- NOTE: Pakistan is the 5th most populous country with thousands of localities. This list includes only a very small fraction,
-- focusing on the national capital, provincial/territorial capitals, and major cities. Listing every locality is ABSOLUTELY IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Pakistan (PK) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Metros
('Islamabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '44000'), -- National Capital
('Karachi', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '74000'), -- Sindh Province (Largest city)
('Lahore', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '54000'), -- Punjab Province Capital
('Faisalabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '38000'), -- Punjab Province (Major city)
('Rawalpindi', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '46000'), -- Punjab Province (Near Islamabad)
('Gujranwala', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '52250'), -- Punjab Province
('Peshawar', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '25000'), -- Khyber Pakhtunkhwa Province Capital
('Multan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '60000'), -- Punjab Province
('Hyderabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '71000'), -- Sindh Province
('Quetta', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '87300'), -- Balochistan Province Capital
('Bahawalpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '63100'), -- Punjab Province
('Sialkot', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '51310'), -- Punjab Province
('Sargodha', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '40100'), -- Punjab Province
('Larkana', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '77150'), -- Sindh Province
('Sukkur', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '65200'), -- Sindh Province
('Sheikhupura', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '39350'), -- Punjab Province
('Rahim Yar Khan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '64200'), -- Punjab Province
('Jhang', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '35200'), -- Punjab Province
('Dera Ghazi Khan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '32200'), -- Punjab Province
('Gujrat', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '50700'), -- Punjab Province
('Sahiwal', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '57000'), -- Punjab Province
('Wah Cantonment', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '47040'), -- Punjab Province
('Mardan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '23200'), -- Khyber Pakhtunkhwa Province
('Kasur', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '55050'), -- Punjab Province
('Okara', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '56300'), -- Punjab Province
('Mingora', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '19130'), -- Khyber Pakhtunkhwa Province (Swat Valley)
('Nawabshah', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '67450'), -- Sindh Province (Shaheed Benazirabad)
('Chiniot', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '35400'), -- Punjab Province
('Kotri', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '76000'), -- Sindh Province
('Kamoke', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '51600'), -- Punjab Province
('Hafizabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '52110'), -- Punjab Province
('Sadiqabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '64350'), -- Punjab Province
('Mirpur Khas', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '69000'), -- Sindh Province
('Burewala', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '61010'), -- Punjab Province
('Kohat', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '26000'), -- Khyber Pakhtunkhwa Province
('Khanewal', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '58150'), -- Punjab Province
('Dera Ismail Khan', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '29050'), -- Khyber Pakhtunkhwa Province
('Turbat', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '92600'), -- Balochistan Province
('Muzaffargarh', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '34200'), -- Punjab Province
('Abbottabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '22010'), -- Khyber Pakhtunkhwa Province
('Mandi Bahauddin', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '50400'), -- Punjab Province
('Shikarpur', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '78100'), -- Sindh Province
('Jacobabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '79000'), -- Sindh Province
('Gojra', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '36100'), -- Punjab Province
('Bahawalnagar', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '62300'), -- Punjab Province
('Muridke', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '39000'), -- Punjab Province
('Muzaffarabad', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '13100'), -- Azad Kashmir (Administered Territory Capital)
('Gilgit', (SELECT id FROM world_countries WHERE iso_code_2 = 'PK'), '15100'); -- Gilgit-Baltistan (Administered Territory Capital)

-- End of Pakistan city list (Highly Selective Sample)

/*
-- ====================================
-- == Información sobre Pakistan ==
-- ====================================
--
-- Descripción General:
-- Pakistán, oficialmente República Islámica de Pakistán, es un país ubicado en el
-- sur de Asia, en la encrucijada con Asia Occidental y Central. Es el quinto país
-- más poblado del mundo. Limita con India al este, Afganistán al oeste, Irán al
-- suroeste y China al noreste. Tiene una costa en el Mar Arábigo y el Golfo de Omán
-- al sur. Su geografía es diversa, incluyendo la llanura del río Indo en el este,
-- las montañas del Hindu Kush y Karakórum (con el K2, la segunda montaña más alta
-- del mundo) en el norte, y la meseta de Baluchistán en el oeste.
--
-- Ciudades Principales:
-- * Islamabad: La capital federal, una ciudad planificada construida en los años 60.
-- * Karachi: La ciudad más grande y antigua capital, principal centro financiero y
--   puerto marítimo, ubicada en la costa del Mar Arábigo.
-- * Lahore: Segunda ciudad más grande, capital de Punjab y centro cultural histórico
--   del país (Imperio Mogol, Sij).
-- * Faisalabad y Rawalpindi: Otras grandes ciudades industriales en Punjab (Rawalpindi
--   es ciudad gemela de Islamabad).
-- * Peshawar: Principal ciudad en la provincia de Khyber Pakhtunkhwa, cerca de la
--   frontera con Afganistán.
-- * Quetta: Principal ciudad y capital de la vasta provincia de Baluchistán.
-- * Multan, Hyderabad, Gujranwala: Otras ciudades muy pobladas.
-- * La lista incluye también las capitales provinciales y otras ciudades muy grandes.
--
-- Un Poco de Historia:
-- La región fue cuna de la antigua Civilización del Valle del Indo y posteriormente
-- parte de numerosos imperios (persa, griego - Alejandro Magno, Maurya, Kushan,
-- Gupta, califatos islámicos, Ghaznávidas, Sultanato de Delhi, Imperio Mogol,
-- Imperio Sij). Fue incorporada a la India Británica en el siglo XIX. Pakistán
-- fue creado en 1947 como un estado independiente para los musulmanes del subcontinente
-- durante la Partición de la India Británica. Inicialmente consistía en dos partes
-- separadas geográficamente (Pakistán Occidental y Pakistán Oriental). La historia
-- post-independencia ha estado marcada por la inestabilidad política, periodos de
-- gobierno militar, conflictos con India (especialmente sobre Cachemira) y la
-- secesión de Pakistán Oriental en 1971 para formar Bangladesh. Pakistán ha sido un
-- aliado clave de EE.UU. en diferentes periodos, pero también ha enfrentado desafíos
-- con el extremismo islamista y la inestabilidad regional.
--
-- Datos Adicionales:
-- El urdu y el inglés son los idiomas oficiales, pero se hablan muchas lenguas
-- regionales (punjabi, sindhi, pastún, baluchi, etc.). El Islam (mayoritariamente
-- sunita) es la religión del estado. Pakistán es una potencia nuclear. El cricket
-- es el deporte más popular. La cordillera del Karakórum ofrece algunos de los
-- paisajes montañosos más espectaculares del mundo.
--
*/
