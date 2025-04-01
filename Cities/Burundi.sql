-- SQL Script to insert a representative sample of significant cities and towns for Burundi (BI).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Burundi (BI).

-- NOTE: Burundi is densely populated. This list includes the capitals, provincial capitals,
-- and significant towns/commune centers. Listing every single colline (hill/settlement) is IMPOSSIBLE.
-- Postal codes are not generally used; using '0000' as a placeholder.

-- Inserting cities for Burundi (BI) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capitals & Provincial Capitals / Major Towns
('Gitega', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Political Capital, Gitega Province Capital
('Bujumbura', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Economic Capital, Bujumbura Mairie Province Capital
('Ngozi', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Ngozi Province Capital
('Rumonge', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Rumonge Province Capital
('Muyinga', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Muyinga Province Capital
('Kayanza', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Kayanza Province Capital
('Kirundo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Kirundo Province Capital
('Makamba', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Makamba Province Capital
('Rutana', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Rutana Province Capital
('Ruyigi', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Ruyigi Province Capital
('Muramvya', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Muramvya Province Capital
('Cibitoke', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Cibitoke Province Capital
('Karuzi', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Karuzi Province Capital
('Cankuzo', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Cankuzo Province Capital
('Bubanza', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Bubanza Province Capital
('Mwaro', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Mwaro Province Capital
('Bururi', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Bururi Province Capital

-- Other Significant Towns / Communes (Sample)
('Gatumba', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Bujumbura Rural (near DRC border)
('Nyanza-Lac', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Makamba Province
('Mabanda', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Makamba Province
('Kayogoro', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Makamba Province
('Kiremba', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Ngozi Province
('Bugendana', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Gitega Province
('Buhiga', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'), -- Karuzi Province
('Isale', (SELECT id FROM world_countries WHERE iso_code_2 = 'BI'), '0000'); -- Bujumbura Rural

-- End of Burundi city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Burundi ==
-- ====================================
--
-- Descripción General:
-- Burundi es un pequeño país sin salida al mar ubicado en la región de los Grandes
-- Lagos de África Oriental, en la convergencia del Valle del Rift Albertino.
-- Limita con Ruanda al norte, Tanzania al este y sureste, y la República
-- Democrática del Congo al oeste. Gran parte de su frontera occidental colinda
-- con el Lago Tanganica. Es uno de los países más densamente poblados de África,
-- con una geografía mayormente montañosa y de meseta.
--
-- Ciudades Principales:
-- * Gitega: La capital política desde 2019, ubicada en el centro del país.
-- * Bujumbura: La ciudad más grande, capital económica y antigua capital política,
--   situada a orillas del Lago Tanganica.
-- * Ngozi y Muyinga: Otras ciudades importantes en el norte.
-- * Rumonge: Capital provincial en la costa del Lago Tanganica.
-- * La lista incluye también las demás capitales provinciales.
--
-- Un Poco de Historia:
-- Burundi existió como un reino independiente durante siglos, gobernado por una
-- monarquía Tutsi sobre una población mayoritariamente Hutu. Fue colonizado por
-- Alemania a finales del siglo XIX y luego administrado por Bélgica (como parte
-- de Ruanda-Urundi) después de la Primera Guerra Mundial. Obtuvo la independencia
-- en 1962 como una monarquía, pero ésta fue derrocada pocos años después. La
-- historia post-independencia ha estado marcada por una profunda inestabilidad
-- política y violencia étnica recurrente entre las comunidades Hutu y Tutsi,
-- incluyendo una larga guerra civil (1993-2005). El país sigue enfrentando
-- desafíos políticos, económicos y humanitarios.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el kirundi, el francés y el inglés. La economía se
-- basa predominantemente en la agricultura de subsistencia (café y té son los
-- principales productos de exportación). Burundi es considerado uno de los países
-- más pobres del mundo.
--
*/
