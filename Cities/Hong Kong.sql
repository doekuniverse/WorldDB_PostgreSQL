-- SQL Script to insert a representative sample of significant urban areas, towns, and district centers for Hong Kong (HK).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Hong Kong (HK).

-- NOTE: Hong Kong is extremely dense and urbanized. This list includes major urban areas and significant towns/district centers.
-- Listing every single specific locality is IMPOSSIBLE.
-- Postal codes are not used for domestic mail; using '0000' as a placeholder.

-- Inserting cities/areas for Hong Kong (HK) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Hong Kong Island
('Central (Central & Western District)', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Financial district
('Wan Chai', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Commercial/Residential district
('Causeway Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Major shopping/entertainment district (Wan Chai/Eastern)
('Aberdeen', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Southern District (Known for harbour/floating village)
('North Point', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Eastern District
('Quarry Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Eastern District
('Shau Kei Wan', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Eastern District

-- Kowloon Peninsula
('Tsim Sha Tsui', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Yau Tsim Mong District (Southern tip, tourist/commercial)
('Mong Kok', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Yau Tsim Mong District (Dense commercial/residential)
('Yau Ma Tei', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Yau Tsim Mong District
('Sham Shui Po', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Sham Shui Po District
('Kowloon City', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Kowloon City District (Near former airport)
('Wong Tai Sin', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Wong Tai Sin District
('Kwun Tong', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Kwun Tong District (Industrial/Commercial/Residential)

-- New Territories & Outlying Islands
('Tsuen Wan', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Tsuen Wan District
('Kwai Chung', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Kwai Tsing District (Container terminals)
('Tsing Yi', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Kwai Tsing District (Island)
('Sha Tin', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Sha Tin District (Major new town)
('Tai Po Market', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Tai Po District
('Fanling-Sheung Shui', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- North District (Near mainland border)
('Yuen Long Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Yuen Long District
('Tuen Mun', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Tuen Mun District
('Sai Kung Town', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Sai Kung District
('Tung Chung', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Islands District (Lantau Island, near airport)
('Tai O', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Islands District (Lantau Island, fishing village)
('Mui Wo', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Islands District (Lantau Island, ferry pier)
('Cheung Chau', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'), -- Islands District (Island)
('Yung Shue Wan', (SELECT id FROM world_countries WHERE iso_code_2 = 'HK'), '0000'); -- Islands District (Main village on Lamma Island)

-- End of Hong Kong locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Hong Kong ==
-- ====================================
--
-- Descripción General:
-- Hong Kong es una Región Administrativa Especial (RAE) de la República Popular China,
-- ubicada en la costa sur de China, en el delta del río Perla. Consiste en la Isla
-- de Hong Kong, la península de Kowloon, los Nuevos Territorios y más de 200 islas
-- exteriores. Es uno de los centros financieros internacionales más importantes del
-- mundo y una de las ciudades más densamente pobladas y con un horizonte urbano
-- más icónico (skyscrapers). Opera bajo el principio de "un país, dos sistemas",
-- manteniendo sistemas económicos, legales y políticos distintos a los de China continental.
--
-- Ciudades Principales (Áreas Urbanas):
-- Hong Kong funciona como una gran metrópolis. Las áreas principales son:
-- * Isla de Hong Kong: Contiene el distrito financiero central (Central), áreas
--   comerciales y residenciales importantes como Wan Chai, Causeway Bay y Aberdeen.
-- * Kowloon: Península densamente poblada al norte de la isla, con áreas clave como
--   Tsim Sha Tsui (turismo, comercio), Mong Kok (comercio, mercados) y Sham Shui Po.
-- * Nuevos Territorios: La zona más extensa, que incluye ciudades nuevas planificadas
--   como Sha Tin, Tsuen Wan, Tuen Mun y Yuen Long, así como áreas más rurales y
--   parques naturales.
-- * Islas Exteriores: Incluyen Lantau (donde está el aeropuerto y Disneyland), Lamma
--   y Cheung Chau, con pueblos más pequeños.
--
-- Un Poco de Historia:
-- Habitada desde tiempos prehistóricos. La Isla de Hong Kong fue cedida por China
-- al Reino Unido en 1842 tras la Primera Guerra del Opio. La península de Kowloon
-- fue cedida en 1860. Los Nuevos Territorios fueron arrendados por 99 años en 1898.
-- Hong Kong se convirtió en una importante colonia comercial y puerto franco británico.
-- Fue ocupada por Japón durante la Segunda Guerra Mundial. Después de la guerra,
-- experimentó una rápida industrialización y se convirtió en un centro financiero
-- global. La soberanía sobre todo el territorio fue transferida del Reino Unido a
-- China en 1997, bajo los términos de la Declaración Conjunta Sino-Británica que
-- estableció el marco de "un país, dos sistemas" por 50 años. Desde entonces, ha
-- habido tensiones políticas sobre el grado de autonomía y las reformas democráticas.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el chino (cantonés es el habla predominante) y el inglés.
-- El dólar de Hong Kong (HKD) es la moneda oficial. Es famoso por su puerto Victoria
-- Harbour, su gastronomía (especialmente dim sum), las compras y su eficiente
-- sistema de transporte público.
--
*/
