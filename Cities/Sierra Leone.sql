-- SQL Script to insert a representative sample of significant cities and towns for Sierra Leone (SL).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Sierra Leone (SL).

-- NOTE: This list includes the capital, major cities (provincial/district capitals), and significant towns.
-- Listing every single village is IMPOSSIBLE, especially given post-conflict data challenges.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Sierra Leone (SL) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Cities / Provincial & District Capitals
('Freetown', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- National Capital (Western Area Urban)
('Bo', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Southern Province Capital & Bo District Capital
('Kenema', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Eastern Province Capital & Kenema District Capital
('Koidu Town (Sefadu)', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Eastern Province (Kono District Capital, diamond area)
('Makeni', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Northern Province Capital & Bombali District Capital
('Port Loko', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- North Western Province Capital & Port Loko District Capital
('Waterloo', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Western Area Rural (Large town near Freetown)
('Lunsar', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Port Loko District (Mining town)
('Kambia', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Kambia District Capital (North Western Province)
('Magburaka', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Tonkolili District Capital (Northern Province)
('Kailahun', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Kailahun District Capital (Eastern Province)
('Moyamba', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Moyamba District Capital (Southern Province)
('Pujehun', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Pujehun District Capital (Southern Province)
('Bonthe', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Bonthe District Capital (Southern Province, on Sherbro Island)
('Kabala', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Koinadugu District Capital (Northern Province)

-- Other Significant Towns (Sample)
('Pendembu', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Kailahun District
('Segbwema', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Kailahun District
('Yengema', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'), -- Kono District (Near Koidu)
('Mile 91', (SELECT id FROM world_countries WHERE iso_code_2 = 'SL'), '0000'); -- Tonkolili District (Important crossroads)

-- End of Sierra Leone city list (Representative Sample)

/*
-- ======================================
-- == Información sobre Sierra Leone ==
-- ======================================
--
-- Descripción General:
-- Sierra Leona (Sierra Leone) es un país ubicado en la costa de África Occidental.
-- Limita con Guinea al norte y este, Liberia al sureste y el Océano Atlántico al
-- oeste. Su geografía incluye una llanura costera pantanosa, una región interior
-- de mesetas boscosas y montañas en el este. Es conocido por su historia relacionada
-- con el comercio de esclavos y su posterior establecimiento como hogar para esclavos
-- liberados, así como por sus recursos de diamantes.
--
-- Ciudades Principales:
-- * Freetown: La capital, ciudad más grande y principal puerto, ubicada en una
--   península montañosa en la costa atlántica. Fue fundada como un asentamiento
--   para esclavos liberados (de ahí su nombre).
-- * Bo: La segunda ciudad más grande, principal centro urbano en el sur.
-- * Kenema: Tercera ciudad, centro importante en el este.
-- * Koidu Town (Sefadu): Principal ciudad en la región diamantífera de Kono.
-- * Makeni: Principal ciudad en el norte.
-- * Port Loko, Kambia, Magburaka, Kailahun, Moyamba, etc.: Otras capitales de
--   distrito importantes.
--
-- Un Poco de Historia:
-- Habitada por diversos grupos étnicos. Los exploradores portugueses llegaron en el
-- siglo XV y le dieron el nombre de Serra Leoa ("Sierra del León"). La región se
-- convirtió en un punto importante para el comercio de esclavos. A finales del siglo
-- XVIII, filántropos británicos establecieron Freetown como un asentamiento para
-- esclavos liberados (incluyendo afroamericanos de Nueva Escocia y Cimarrones de
-- Jamaica). Gran Bretaña estableció una colonia en el área de Freetown y un
-- protectorado sobre el interior en 1896. Sierra Leona obtuvo la independencia del
-- Reino Unido en 1961. La historia post-independencia ha estado marcada por la
-- inestabilidad política, golpes de estado y una brutal guerra civil (1991-2002)
-- alimentada en parte por el comercio de "diamantes de sangre", con graves
-- atrocidades y la intervención de fuerzas de la ONU y británicas. Desde el fin de
-- la guerra, el país ha estado en un proceso de reconstrucción y consolidación de
-- la paz, aunque enfrentó una grave epidemia de ébola en 2014-2016.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero el Krio (un criollo basado en el inglés) es
-- la lengua franca más hablada. El Islam y el Cristianismo son las religiones
-- principales. La economía depende de la minería (diamantes, rutilo, bauxita) y la
-- agricultura.
--
*/
