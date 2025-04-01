-- SQL Script to insert a representative sample of significant cities and towns for Papua New Guinea (PG).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Papua New Guinea (PG).

-- NOTE: PNG is extremely diverse culturally and geographically, with thousands of remote villages.
-- This list includes the capital, provincial capitals, and significant towns. Listing every single locality is IMPOSSIBLE.
-- Postal codes are not generally used; using '000' as a placeholder.

-- Inserting cities for Papua New Guinea (PG) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Provincial Capitals / Major Towns
('Port Moresby', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- National Capital District
('Lae', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Morobe Province Capital
('Mount Hagen', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Western Highlands Province Capital
('Madang', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Madang Province Capital
('Wewak', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- East Sepik Province Capital
('Goroka', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Eastern Highlands Province Capital
('Kimbe', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- West New Britain Province Capital
('Kokopo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- East New Britain Province Capital (near Rabaul)
('Arawa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Bougainville Autonomous Region (Former capital)
('Buka', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Bougainville Autonomous Region (Current admin center)
('Daru', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Western Province Capital
('Alotau', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Milne Bay Province Capital
('Popondetta', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Oro (Northern) Province Capital
('Kundiawa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Simbu Province Capital
('Mendi', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Southern Highlands Province Capital
('Wabag', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Enga Province Capital
('Lorengau', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Manus Province Capital
('Kavieng', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- New Ireland Province Capital
('Vanimo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Sandaun (West Sepik) Province Capital
('Kerema', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Gulf Province Capital
('Tari', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Hela Province Capital

-- Other Significant Towns (Sample)
('Rabaul', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- East New Britain (Largely destroyed by volcano, historic)
('Bulolo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Morobe Province (Gold mining history)
('Wau', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Morobe Province (Gold mining history)
('Aitape', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Sandaun Province
('Finschhafen', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Morobe Province
('Kainantu', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'), -- Eastern Highlands Province
('Kokoda', (SELECT id FROM world_countries WHERE iso_code_2 = 'PG'), '000'); -- Oro Province (Start/End of Kokoda Track)


-- End of Papua New Guinea city list (Representative Sample)

/*
-- ============================================
-- == Información sobre Papua New Guinea ==
-- ============================================
--
-- Descripción General:
-- Papúa Nueva Guinea (Papua New Guinea - PNG) es un país insular en Oceanía, ubicado
-- en la región de Melanesia. Ocupa la mitad oriental de la isla de Nueva Guinea y
-- numerosas islas menores (como Nueva Bretaña, Nueva Irlanda y Bougainville). Limita
-- al oeste con Indonesia (provincia de Papúa). Es uno de los países con mayor
-- diversidad cultural y lingüística del mundo (más de 800 lenguas indígenas) y
-- también uno de los más rurales y menos explorados, con vastas áreas de selva
-- tropical y terreno montañoso accidentado.
--
-- Ciudades Principales:
-- * Port Moresby: La capital y ciudad más grande, ubicada en la costa sureste de
--   la isla de Nueva Guinea.
-- * Lae: La segunda ciudad más grande, importante centro industrial y puerto en la
--   costa norte.
-- * Mount Hagen: Principal ciudad en las tierras altas occidentales.
-- * Madang y Wewak: Importantes ciudades costeras en el norte de Nueva Guinea.
-- * Goroka: Centro principal de las tierras altas orientales.
-- * Kokopo: Capital de la provincia de East New Britain (reemplazó a Rabaul tras
--   una erupción volcánica). Buka es el centro administrativo de la Región Autónoma
--   de Bougainville.
-- * La lista incluye también las capitales provinciales y otras ciudades significativas.
--
-- Un Poco de Historia:
-- Habitada por diversos grupos melanesios y papúes durante decenas de miles de años.
-- El contacto europeo fue limitado hasta el siglo XIX. La isla de Nueva Guinea fue
-- dividida entre los neerlandeses (oeste), alemanes (noreste - Nueva Guinea Alemana)
-- y británicos (sureste - Territorio de Papúa). Australia asumió la administración
-- de la parte británica en 1906 y ocupó la parte alemana durante la Primera Guerra
-- Mundial, administrando ambas (Territorio de Papúa y Nueva Guinea) bajo mandato de
-- la Liga de Naciones y luego fideicomiso de la ONU. Fue escenario de importantes
-- batallas durante la Segunda Guerra Mundial (Campaña de Nueva Guinea). Papúa Nueva
-- Guinea obtuvo la independencia de Australia en 1975. La historia post-independencia
-- ha incluido desafíos de construcción nacional, desarrollo económico y un conflicto
-- separatista en la isla de Bougainville (ahora una región autónoma).
--
-- Datos Adicionales:
-- El inglés, el Tok Pisin (un criollo inglés) y el Hiri Motu son los idiomas oficiales,
-- pero se hablan cientos de lenguas locales. La sociedad es predominantemente cristiana,
-- pero las creencias tradicionales siguen siendo influyentes. La economía se basa en
-- la agricultura de subsistencia y la exportación de recursos naturales (minerales,
-- gas natural, madera, café, cacao). Es famosa por su extraordinaria biodiversidad
-- (aves del paraíso) y sus culturas tribales.
--
*/
