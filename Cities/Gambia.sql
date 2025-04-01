-- SQL Script to insert a representative sample of significant cities and towns for The Gambia (GM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains The Gambia (GM).

-- NOTE: The Gambia is small but has many villages along the river. This list includes the capital,
-- major towns, and administrative centers. Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for The Gambia (GM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Towns / Administrative Centers
('Banjul', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- National Capital (Located on an island)
('Serekunda', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- Largest urban area (Kanifing Municipality)
('Brikama', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- West Coast Region Administrative Capital
('Bakau', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- Kanifing Municipality (Coastal town near Banjul)
('Farafenni', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- North Bank Region (Important crossing point)
('Lamin', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- West Coast Region (Near airport)
('Nema Kunku', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- West Coast Region
('Brufut', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- West Coast Region (Coastal area)
('Sukuta', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- West Coast Region
('Basse Santa Su', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- Upper River Region Administrative Capital
('Soma', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- Lower River Region (Important transport hub)
('Kerewan', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- North Bank Region Administrative Capital
('Janjanbureh (Georgetown)', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- Central River Region Administrative Capital (on an island)
('Kuntaur', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- Central River Region (Northern part admin center)
('Gunjur', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- West Coast Region (Coastal town)
('Bansang', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'), -- Central River Region (Hospital town)
('Essau', (SELECT id FROM world_countries WHERE iso_code_2 = 'GM'), '0000'); -- North Bank Region (Near Banjul ferry)

-- End of The Gambia locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre The Gambia ==
-- ====================================
--
-- Descripción General:
-- Gambia (The Gambia) es el país más pequeño de África continental. Es una estrecha
-- franja de tierra que se extiende a ambos lados del curso inferior del río Gambia,
-- completamente rodeada por Senegal excepto por su corta costa en el Océano Atlántico.
-- El río Gambia es la característica geográfica dominante y ha sido históricamente
-- la principal vía de transporte y comunicación.
--
-- Ciudades Principales:
-- * Banjul: La capital, ubicada en una isla (Isla de Santa María) en la desembocadura
--   del río Gambia.
-- * Serekunda: La ciudad más grande y el principal centro comercial, ubicada en el
--   continente cerca de Banjul, dentro del Municipio de Kanifing.
-- * Brikama: La segunda ciudad más grande y centro administrativo de la Región de la Costa Oeste.
-- * Bakau: Ciudad costera turística cerca de Banjul.
-- * Farafenni: Importante ciudad mercado y punto de cruce del río en la orilla norte.
-- * Basse Santa Su, Kerewan, Janjanbureh (Georgetown), Soma: Principales centros
--   administrativos de las demás regiones/divisiones.
--
-- Un Poco de Historia:
-- La región formó parte de los imperios de Ghana, Malí y Songhai. Los portugueses
-- llegaron en el siglo XV, seguidos por otros europeos interesados en el comercio
-- (incluyendo esclavos). Gran Bretaña estableció un puesto comercial y gradualmente
-- extendió su influencia a lo largo del río, estableciendo la Colonia y Protectorado
-- de Gambia en el siglo XIX. Obtuvo la independencia del Reino Unido en 1965 como
-- una monarquía constitucional, convirtiéndose en república en 1970. Dawda Jawara
-- fue el primer presidente y gobernó durante mucho tiempo. En 1994, un golpe de
-- estado llevó al poder a Yahya Jammeh, cuyo gobierno se volvió cada vez más
-- autoritario hasta que fue derrotado en las elecciones de 2016 y forzado a dejar
-- el poder tras una intervención regional (ECOMIG) en 2017. Adama Barrow es el
-- presidente actual.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero se hablan varias lenguas africanas, siendo
-- el Mandinka, Fula y Wolof las más comunes. El Islam es la religión predominante.
-- La economía depende de la agricultura (especialmente cacahuetes), la pesca y el
-- turismo (atraído por las playas y la observación de aves a lo largo del río).
-- El río Gambia es navegable en gran parte de su recorrido dentro del país.
--
*/
