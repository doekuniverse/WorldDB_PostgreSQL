-- SQL Script to insert a representative sample of significant cities and towns for Kenya (KE).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Kenya (KE).

-- NOTE: Kenya has 47 counties and numerous localities. This list includes the capital, county headquarters,
-- and a broad sample of major cities and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are 5 digits; examples or '00000' placeholder are provided.

-- Inserting cities for Kenya (KE) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & County HQs / Major Cities
('Nairobi', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '00100'), -- National Capital & Nairobi County
('Mombasa', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '80100'), -- Mombasa County HQ
('Kisumu', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '40100'), -- Kisumu County HQ
('Nakuru', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '20100'), -- Nakuru County HQ
('Eldoret', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '30100'), -- Uasin Gishu County HQ
('Kisii', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '40200'), -- Kisii County HQ
('Meru', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '60200'), -- Meru County HQ
('Nyeri', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '10100'), -- Nyeri County HQ
('Machakos', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '90100'), -- Machakos County HQ
('Kakamega', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '50100'), -- Kakamega County HQ
('Thika', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '01000'), -- Kiambu County (Major industrial town)
('Garissa', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '70100'), -- Garissa County HQ
('Kitale', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '30200'), -- Trans-Nzoia County HQ
('Malindi', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '80200'), -- Kilifi County (Major coastal town)
('Kilifi', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '80108'), -- Kilifi County HQ
('Bungoma', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '50200'), -- Bungoma County HQ
('Kericho', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '20200'), -- Kericho County HQ
('Isiolo', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '60300'), -- Isiolo County HQ
('Homa Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '40300'), -- Homa Bay County HQ
('Naivasha', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '20117'), -- Nakuru County (Major town)
('Embu', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '60100'), -- Embu County HQ
('Kitui', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '90200'), -- Kitui County HQ
('Narok', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '20500'), -- Narok County HQ
('Wajir', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '70200'), -- Wajir County HQ
('Mandera', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '70300'), -- Mandera County HQ
('Lodwar', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '30500'), -- Turkana County HQ
('Marsabit', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '60500'), -- Marsabit County HQ
('Lamu', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '80500'), -- Lamu County HQ (UNESCO site)
('Voi', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '80300'), -- Taita-Taveta County HQ (Wundanyi is HQ, Voi larger town)
('Wundanyi', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '80305'), -- Taita-Taveta County HQ
('Maralal', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '20600'), -- Samburu County HQ
('Kapenguria', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '30600'), -- West Pokot County HQ
('Kabarnet', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '30400'), -- Baringo County HQ
('Iten', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '30700'), -- Elgeyo-Marakwet County HQ
('Nanyuki', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '10400'), -- Laikipia County HQ
('Kerugoya/Kutus', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '10300'), -- Kirinyaga County HQ (Often referred together)
('Murang''a', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '10200'), -- Murang'a County HQ
('Siaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '40600'), -- Siaya County HQ
('Migori', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '40400'), -- Migori County HQ
('Wote', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '90300'), -- Makueni County HQ
('Kwale', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '80403'), -- Kwale County HQ
('Hola', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '70101'), -- Tana River County HQ
('Ol Kalou', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '20303'), -- Nyandarua County HQ
('Kathwana', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '60406'), -- Tharaka-Nithi County HQ
('Rumuruti', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '20321'), -- Laikipia County (Newer HQ location?)
('Sotik', (SELECT id FROM world_countries WHERE iso_code_2 = 'KE'), '20406'); -- Bomet County HQ

-- End of Kenya city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Kenya ==
-- ====================================
--
-- Descripción General:
-- Kenia (Kenya) es un país ubicado en África Oriental, con costa en el Océano Índico.
-- Limita con Tanzania al sur, Uganda al oeste, Sudán del Sur al noroeste, Etiopía
-- al norte y Somalia al este. Su geografía es diversa, incluyendo sabanas, lagos,
-- el Gran Valle del Rift, tierras altas montañosas (con el Monte Kenia, la segunda
-- montaña más alta de África) y la costa tropical. Es mundialmente famoso por sus
-- safaris y su abundante vida silvestre (Masai Mara, Amboseli, Tsavo, etc.).
--
-- Ciudades Principales:
-- * Nairobi: La capital y ciudad más grande, uno de los principales centros
--   políticos y financieros de África. Es única por tener un parque nacional dentro
--   de sus límites urbanos.
-- * Mombasa: La segunda ciudad más grande y principal puerto de África Oriental,
--   ubicada en una isla en la costa.
-- * Kisumu: Tercera ciudad más grande, principal puerto en el Lago Victoria.
-- * Nakuru: Importante centro agrícola y ciudad en el Valle del Rift.
-- * Eldoret: Ciudad principal en las tierras altas occidentales, conocida por sus
--   atletas de larga distancia.
-- * La lista incluye también las sedes (capitales) de los 47 condados y otras ciudades significativas.
--
-- Un Poco de Historia:
-- La región es considerada una de las cunas de la humanidad (Valle del Rift). Ha
-- sido habitada por diversos grupos étnicos (Bantúes, Nilóticos, Cushitas) durante
-- milenios. La costa formó parte de las redes comerciales del Océano Índico y fue
-- influenciada por árabes y portugueses (ciudades-estado Swahili). El interior fue
-- colonizado por Gran Bretaña a finales del siglo XIX como el Protectorado de África
-- Oriental, convirtiéndose en la Colonia de Kenia en 1920. La lucha por la tierra
-- y la independencia llevó a la Rebelión del Mau Mau en la década de 1950. Kenia
-- obtuvo la independencia en 1963 bajo el liderazgo de Jomo Kenyatta. La política
-- post-independencia ha visto periodos de gobierno de partido único y multipartidismo,
-- con desafíos relacionados con la política étnica y la gobernanza.
--
-- Datos Adicionales:
-- El inglés y el swahili son los idiomas oficiales, pero se hablan muchas lenguas
-- étnicas. Kenia es famosa por sus corredores de larga distancia, la Gran Migración
-- de ñus y cebras entre el Masai Mara y el Serengeti (Tanzania), y su industria
-- turística de safaris. El café y el té son importantes productos de exportación.
--
*/
