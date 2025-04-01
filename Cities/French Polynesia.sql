-- SQL Script to insert a representative sample of significant towns and villages for French Polynesia (PF).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains French Polynesia (PF).

-- NOTE: French Polynesia is a vast archipelago. This list includes the capital, major towns/communes,
-- and significant settlements across the main islands/archipelagos. Listing every single locality is IMPOSSIBLE.
-- Postal codes are 987xx; examples or '00000' placeholder are provided.

-- Inserting cities/towns for French Polynesia (PF) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Society Islands (Windward - Îles du Vent)
('Papeete', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98714'), -- Capital (Tahiti)
('Faaa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98704'), -- Tahiti (Location of airport, largest commune by pop)
('Punaauia', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98718'), -- Tahiti
('Pirae', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98716'), -- Tahiti
('Mahina', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98709'), -- Tahiti
('Paea', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98711'), -- Tahiti
('Arue', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98701'), -- Tahiti
('Papara', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98712'), -- Tahiti
('Teva I Uta', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98726'), -- Tahiti (Mataiea town)
('Taiarapu-Est', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98720'), -- Tahiti (Taravao/Afaahiti towns)
('Taiarapu-Ouest', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98722'), -- Tahiti (Vairao town)
('Moorea-Maiao', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98728'), -- Moorea island (Afareaitu main village)

-- Society Islands (Leeward - Îles Sous-le-Vent)
('Uturoa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98735'), -- Raiatea island (Capital of Leeward Islands)
('Bora Bora', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98730'), -- Bora Bora island (Vaitape main village)
('Huahine', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98731'), -- Huahine island (Fare main village)
('Tahaa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98733'), -- Tahaa island (Patio main village)
('Taputapuatea', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98735'), -- Raiatea island (Avera town, Marae Taputapuatea UNESCO site)

-- Tuamotu Archipelago (Sample)
('Rangiroa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98775'), -- Avatoru/Tiputa villages
('Fakarava', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98763'), -- Rotoava village
('Hao', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98767'), -- Former military base site
('Makemo', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98769'), -- Pouheva village
('Arutua', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98761'), -- Rautini village

-- Marquesas Islands (Sample)
('Nuku Hiva', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98742'), -- Taiohae main village
('Hiva Oa', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98741'), -- Atuona main village (Gauguin/Brel burial site)
('Ua Pou', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98745'), -- Hakahau main village

-- Gambier Islands
('Rikitea', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98755'), -- Main village on Mangareva island

-- Austral Islands (Sample)
('Tubuai', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98744'), -- Mataura main village
('Rurutu', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98753'), -- Moerai main village
('Raivavae', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98750'), -- Rairua main village
('Rimatara', (SELECT id FROM world_countries WHERE iso_code_2 = 'PF'), '98752'); -- Amaru main village

-- End of French Polynesia locality list (Representative Sample across Archipelagos)

/*
-- ==============================================
-- == Información sobre French Polynesia ==
-- ==============================================
--
-- Descripción General:
-- La Polinesia Francesa es una Colectividad de Ultramar (COM) de Francia ubicada
-- en el corazón del Océano Pacífico Sur. Consiste en 118 islas y atolones
-- dispersos en cinco archipiélagos principales: las Islas de la Sociedad (que
-- incluyen Tahití, Moorea y Bora Bora), el Archipiélago Tuamotu (atolones bajos),
-- las Islas Marquesas (altas y volcánicas), las Islas Australes y las Islas Gambier.
-- Es famosa por sus paisajes tropicales espectaculares, lagunas turquesas, cultura
-- polinesia y como destino turístico de lujo.
--
-- Ciudades Principales (Localidades):
-- * Papeete: La capital, ubicada en la isla de Tahití (Islas de la Sociedad). Es el
--   centro gubernamental, económico y de transporte.
-- * Faaa: Comuna adyacente a Papeete, sede del aeropuerto internacional y la más
--   poblada. Punaauia, Pirae son otras comunas importantes del área metropolitana.
-- * Uturoa: Principal localidad de la isla de Raiatea y centro administrativo de
--   las Islas de Sotavento (Leeward Islands).
-- * Vaitape: Principal pueblo en la famosa isla de Bora Bora.
-- * Afareaitu (Moorea), Fare (Huahine): Principales pueblos en otras islas turísticas
--   de la Sociedad.
-- * Taiohae (Nuku Hiva) y Atuona (Hiva Oa): Principales pueblos en las Islas Marquesas.
-- * Avatoru/Tiputa (Rangiroa): Principales pueblos en el atolón más grande de las Tuamotu.
-- * La lista incluye también los principales asentamientos de los demás archipiélagos.
--
-- Un Poco de Historia:
-- Las islas fueron pobladas por polinesios a lo largo de varios siglos. El contacto
-- europeo comenzó en el siglo XVI, con exploradores como Magallanes, y se intensificó
-- en el siglo XVIII con Wallis, Bougainville y Cook. Francia estableció un
-- protectorado sobre Tahití y sus dependencias en 1842 y gradualmente consolidó su
-- control sobre los otros archipiélagos, convirtiéndolos en una colonia (Establecimientos
-- Franceses de Oceanía). El territorio fue escenario de pruebas nucleares francesas
-- (en Mururoa y Fangataufa, Tuamotus) entre 1966 y 1996, lo cual fue muy controvertido.
-- Obtuvo mayor autonomía interna a lo largo de los años, convirtiéndose en Colectividad
-- de Ultramar en 2003.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el francés y el tahitiano (Reo Mā'ohi), aunque se hablan
-- otras lenguas polinesias en los diferentes archipiélagos. La economía depende
-- fuertemente del turismo y de las transferencias financieras de Francia. La
-- producción de perlas negras cultivadas (en las Tuamotu) es también importante.
-- Los bungalows sobre el agua ("overwater bungalows") se originaron aquí.
--
*/
