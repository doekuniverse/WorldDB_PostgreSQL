-- SQL Script to insert a representative sample of significant cities and towns for Niger (NE).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Niger (NE).

-- NOTE: Niger is a vast, landlocked country, mostly desert. This list includes the capital,
-- regional capitals, and significant towns/department centers. Listing every single village or camp is IMPOSSIBLE.
-- Postal codes are not generally used; using '0000' as a placeholder.

-- Inserting cities for Niger (NE) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Capitals / Major Cities
('Niamey', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- National Capital (Capital District)
('Zinder', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Zinder Region Capital
('Maradi', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Maradi Region Capital
('Agadez', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Agadez Region Capital (Gateway to Aïr Mountains/Sahara)
('Tahoua', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Tahoua Region Capital
('Dosso', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Dosso Region Capital
('Diffa', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Diffa Region Capital
('Tillabéri', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Tillabéri Region Capital

-- Other Significant Towns / Department Centers (Sample)
('Arlit', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Agadez Region (Uranium mining town)
('Birni N''Konni', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Tahoua Region (Border town with Nigeria)
('Tessaoua', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Maradi Region
('Gaya', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Dosso Region (Border town with Benin/Nigeria)
('Dogondoutchi', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Dosso Region
('Madaoua', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Tahoua Region
('Mayahi', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Maradi Region
('Téra', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Tillabéri Region
('Mirriah', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Zinder Region
('Magaria', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Zinder Region
('Filingué', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Tillabéri Region
('Ouallam', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Tillabéri Region
('Say', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Tillabéri Region
('Illéla', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Tahoua Region
('Bouza', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Tahoua Region
('Keita', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Tahoua Region
('Abalak', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Tahoua Region
('Tchintabaraden', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Tahoua Region
('Gouré', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'), -- Zinder Region
('N''guigmi', (SELECT id FROM world_countries WHERE iso_code_2 = 'NE'), '0000'); -- Diffa Region (Near Lake Chad)

-- End of Niger city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Niger ==
-- ====================================
--
-- Descripción General:
-- Níger (Niger) es un país sin salida al mar ubicado en África Occidental, en la
-- región del Sahel. Es el país más grande de África Occidental por área. Limita con
-- Argelia y Libia al norte, Chad al este, Nigeria y Benín al sur, y Burkina Faso y
-- Malí al oeste. Más del 80% de su territorio está cubierto por el Desierto del
-- Sahara. La población se concentra en el sur y oeste, a lo largo del río Níger y
-- la frontera con Nigeria. Es uno de los países más pobres y con menor índice de
-- desarrollo humano del mundo, enfrentando desafíos como la desertificación, la
-- inestabilidad política y la inseguridad regional.
--
-- Ciudades Principales:
-- * Niamey: La capital y ciudad más grande, ubicada a orillas del río Níger en el
--   suroeste del país.
-- * Zinder: La segunda ciudad más grande, centro histórico y cultural en el sur.
-- * Maradi: Tercera ciudad, importante centro comercial cerca de la frontera con Nigeria.
-- * Agadez: Principal ciudad en el vasto norte desértico, centro histórico Tuareg y
--   puerta de entrada al macizo de Aïr (Patrimonio de la Humanidad).
-- * Tahoua, Dosso, Diffa, Tillabéri: Capitales de las demás regiones.
-- * Arlit: Ciudad minera de uranio en el norte.
-- * La lista incluye también las capitales regionales y otras ciudades significativas.
--
-- Un Poco de Historia:
-- La región formó parte de grandes imperios africanos como el Songhai y los estados
-- Hausa, y fue un importante cruce de rutas comerciales transaharianas. Fue colonizada
-- por Francia a principios del siglo XX como parte del África Occidental Francesa.
-- Obtuvo la independencia en 1960. La historia post-independencia ha estado marcada
-- por una gran inestabilidad política, con múltiples golpes de estado militares,
-- periodos de gobierno de partido único y transiciones democráticas frágiles. Ha
-- enfrentado rebeliones Tuareg en el norte y, en años recientes, la creciente amenaza
-- de grupos yihadistas que operan en la región del Sahel. Hubo un golpe de estado
-- militar en 2023.
--
-- Datos Adicionales:
-- El francés es el idioma oficial, pero el hausa y el zarma (songhay) son las lenguas
-- más habladas, junto con otras lenguas locales. El Islam es la religión predominante.
-- La economía se basa en la agricultura de subsistencia, la ganadería y la exportación
-- de uranio. Níger tiene una de las tasas de natalidad más altas del mundo. Es famoso
-- por los hallazgos de fósiles de dinosaurios en el desierto.
--
*/
