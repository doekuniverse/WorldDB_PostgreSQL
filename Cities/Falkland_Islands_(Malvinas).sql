-- SQL Script to insert a representative sample of significant settlements for the Falkland Islands (Malvinas) (FK).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Falkland Islands (Malvinas) (FK).

-- NOTE: The Falkland Islands have a very small population. This list includes the capital,
-- main settlements, and the RAF base. Listing every single farmstead is IMPOSSIBLE.
-- The entire territory uses the postal code FIQQ 1ZZ.

-- Inserting settlements for Falkland Islands (Malvinas) (FK) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Stanley', (SELECT id FROM world_countries WHERE iso_code_2 = 'FK'), 'FIQQ 1ZZ'), -- Capital (on East Falkland)
('RAF Mount Pleasant (MPA)', (SELECT id FROM world_countries WHERE iso_code_2 = 'FK'), 'FIQQ 1ZZ'), -- Military base (on East Falkland)
('Port Howard', (SELECT id FROM world_countries WHERE iso_code_2 = 'FK'), 'FIQQ 1ZZ'), -- Largest settlement on West Falkland
('Goose Green', (SELECT id FROM world_countries WHERE iso_code_2 = 'FK'), 'FIQQ 1ZZ'), -- Settlement on East Falkland
('Darwin', (SELECT id FROM world_countries WHERE iso_code_2 = 'FK'), 'FIQQ 1ZZ'), -- Settlement on East Falkland
('Fox Bay', (SELECT id FROM world_countries WHERE iso_code_2 = 'FK'), 'FIQQ 1ZZ'); -- Settlement on West Falkland

-- End of Falkland Islands (Malvinas) settlement list (Representative Sample)

/*
-- ==================================================
-- == Información sobre Falkland Islands (Malvinas) ==
-- ==================================================
--
-- Descripción General:
-- Las Islas Falkland (denominadas Islas Malvinas por Argentina) son un archipiélago
-- ubicado en el Océano Atlántico Sur, a unos 480 km de la costa de Argentina.
-- Consisten en dos islas principales, Este (Soledad) y Oeste (Gran Malvina), y
-- cientos de islas e islotes más pequeños. Son un Territorio Británico de Ultramar
-- autónomo. Su soberanía es objeto de una larga disputa entre el Reino Unido y
-- Argentina. El paisaje es predominantemente de brezales y turberas, con costas
-- accidentadas.
--
-- Ciudades Principales (Asentamientos):
-- * Stanley (anteriormente Port Stanley): La capital y único pueblo de tamaño
--   considerable, ubicado en la Isla Este, donde reside la gran mayoría de la población.
-- * RAF Mount Pleasant: La base militar británica, que también alberga una
--   población significativa de personal y contratistas.
-- * Port Howard y Fox Bay: Los principales asentamientos en la Isla Oeste.
-- * Goose Green y Darwin: Otros pequeños asentamientos en la Isla Este.
-- * El resto de la población vive dispersa en pequeñas granjas ovinas ("Camp").
--
-- Un Poco de Historia:
-- Las islas fueron avistadas por exploradores europeos en los siglos XVI y XVII.
-- Hubo breves asentamientos franceses y españoles en el siglo XVIII. Gran Bretaña
-- estableció una presencia continua desde 1833. Argentina también reclama las
-- islas basándose en la sucesión de España y la proximidad geográfica, y tuvo una
-- breve presencia antes de 1833 y durante la ocupación de 1982. En 1982, Argentina
-- invadió las islas, lo que llevó a la Guerra de las Malvinas/Falklands, en la que
-- el Reino Unido recuperó el control militar. La disputa de soberanía continúa
-- sin resolverse.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial. La economía se basa tradicionalmente en la cría
-- de ovejas (lana), y más recientemente en la pesca (licencias de calamar) y el
-- turismo (vida silvestre: pingüinos, albatros, lobos marinos). Existe potencial
-- petrolero en las aguas circundantes.
--
*/
