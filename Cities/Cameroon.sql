-- SQL Script to insert a representative sample of significant cities and towns for Cameroon (CM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Cameroon (CM).

-- NOTE: This list includes the capital, regional capitals, and a broad sample of major cities
-- and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are not generally used; using '0000' as a placeholder.

-- Inserting cities for Cameroon (CM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals
('Yaoundé', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- National Capital (Centre Region Capital)
('Douala', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Littoral Region Capital, Largest city, main port
('Garoua', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- North Region Capital
('Bamenda', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Northwest Region Capital
('Maroua', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Far North Region Capital
('Bafoussam', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- West Region Capital
('Ngaoundéré', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Adamawa Region Capital
('Bertoua', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- East Region Capital
('Ebolowa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- South Region Capital
('Buea', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Southwest Region Capital

-- Other Major Cities & Significant Towns (Sample)
('Kumba', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Southwest Region
('Nkongsamba', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Littoral Region
('Limbe', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Southwest Region (Coastal city)
('Edéa', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Littoral Region
('Kribi', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- South Region (Coastal city, port)
('Tibati', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Adamawa Region
('Foumban', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- West Region (Historic Sultanate)
('Dschang', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- West Region
('Mbouda', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- West Region
('Sangmélima', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- South Region
('Meiganga', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Adamawa Region
('Yagoua', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Far North Region
('Guider', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- North Region
('Kousséri', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Far North Region (Border with Chad)
('Mokolo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Far North Region
('Batouri', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- East Region
('Yokadouma', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- East Region
('Abong-Mbang', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- East Region
('Kumbo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Northwest Region
('Wum', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Northwest Region
('Mamfe', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Southwest Region
('Tiko', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Southwest Region
('Bafia', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Centre Region
('Akonolinga', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Centre Region
('Mbalmayo', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'), -- Centre Region
('Eseka', (SELECT id FROM world_countries WHERE iso_code_2 = 'CM'), '0000'); -- Centre Region

-- End of Cameroon city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Cameroon ==
-- ====================================
--
-- Descripción General:
-- Camerún es un país ubicado en África Central y Occidental. A menudo se le llama
-- "África en miniatura" debido a su gran diversidad geológica, geográfica y
-- cultural, que refleja la del continente en general (costa, desierto, montañas,
-- selva tropical, sabana). Limita con Nigeria al oeste y norte, Chad al noreste,
-- la República Centroafricana al este, y Gabón, República del Congo y Guinea
-- Ecuatorial al sur. Tiene una costa sobre el Golfo de Guinea. Es una república
-- presidencialista y es oficialmente bilingüe (francés e inglés).
--
-- Ciudades Principales:
-- * Yaundé (Yaoundé): La capital política, ubicada en el interior.
-- * Duala (Douala): La ciudad más grande, capital económica y principal puerto
--   marítimo, ubicada en la costa.
-- * Garoua, Maroua, Ngaoundéré: Principales ciudades en las regiones del norte.
-- * Bamenda y Buea: Principales ciudades de las regiones anglófonas del Noroeste
--   y Sudoeste, respectivamente. Buea se encuentra en las laderas del Monte Camerún.
-- * Bafoussam: Principal ciudad de la región Oeste.
-- * La lista incluye también las demás capitales regionales y otras ciudades importantes.
--
-- Un Poco de Historia:
-- El territorio tiene una larga historia de diversos reinos y jefaturas. Fue
-- colonizado por Alemania a finales del siglo XIX (Kamerun). Tras la Primera
-- Guerra Mundial, fue dividido en mandatos de la Liga de Naciones administrados
-- por Francia (la mayor parte) y el Reino Unido. La parte francesa obtuvo la
-- independencia en 1960. En 1961, la parte sur del Camerún británico votó por
-- unirse a la República de Camerún (formando un estado federal), mientras que la
-- parte norte se unió a Nigeria. La estructura federal fue abolida en 1972. El
-- país ha sido gobernado por dos presidentes durante la mayor parte de su historia
-- post-independencia. Las tensiones entre las regiones anglófonas y el gobierno
-- central francófono han escalado a un conflicto armado (la Crisis Anglófona)
-- desde 2017.
--
-- Datos Adicionales:
-- Camerún tiene más de 250 grupos étnicos y lingüísticos. El Monte Camerún es
-- un volcán activo y la montaña más alta de África Occidental. El fútbol es el
-- deporte nacional y la selección nacional (los Leones Indomables) ha tenido
-- éxito internacional.
--
*/
