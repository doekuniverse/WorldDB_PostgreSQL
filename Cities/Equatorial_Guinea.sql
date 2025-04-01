-- SQL Script to insert a representative sample of significant cities and towns for Equatorial Guinea (GQ).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Equatorial Guinea (GQ).

-- NOTE: This list includes the capital, provincial capitals, the new capital project, and significant towns.
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Equatorial Guinea (GQ) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capitals & Provincial Capitals / Major Cities
('Malabo', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- National Capital (on Bioko Island), Bioko Norte Province Capital
('Bata', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Largest city on mainland, Litoral Province Capital
('Ebebiyín', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Kié-Ntem Province Capital
('Mongomo', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Wele-Nzas Province Capital
('Evinayong', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Centro Sur Province Capital
('Luba', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Bioko Sur Province Capital
('San Antonio de Palé', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Annobón Province Capital
('Ciudad de la Paz', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- New capital under construction (Djibloho Province, formerly Oyala)

-- Other Significant Towns (Sample)
('Mbini', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Litoral Province
('Acalayong', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Litoral Province
('Niefang', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Centro Sur Province
('Akurenam', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Centro Sur Province
('Mikomeseng', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Kié-Ntem Province
('Nsok', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Kié-Ntem Province (Nsok-Nsomo)
('Añisoc', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Wele-Nzas Province
('Mengomeyén', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Wele-Nzas Province
('Rebola', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'), -- Bioko Norte Province
('Riaba', (SELECT id FROM world_countries WHERE iso_code_2 = 'GQ'), '0000'); -- Bioko Sur Province

-- End of Equatorial Guinea city list (Representative Sample)

/*
-- ===============================================
-- == Información sobre Equatorial Guinea ==
-- ===============================================
--
-- Descripción General:
-- Guinea Ecuatorial es un país ubicado en África Central. Consiste en una parte
-- continental (Río Muni), bordeada por Camerún al norte y Gabón al este y sur,
-- y cinco islas habitadas, siendo las más importantes Bioko (donde se encuentra
-- la capital, Malabo) y Annobón. Es uno de los países más pequeños de África
-- continental por área, pero se convirtió en un importante productor de petróleo
-- a partir de los años 90. Es el único país soberano de África donde el español
-- es idioma oficial.
--
-- Ciudades Principales:
-- * Malabo: La capital, ubicada en la isla de Bioko. Centro político y financiero.
-- * Bata: La ciudad más grande del país y principal centro económico de la parte
--   continental (Río Muni).
-- * Ebebiyín y Mongomo: Otras ciudades importantes en el interior de Río Muni.
-- * Luba: Segunda ciudad más grande en la isla de Bioko.
-- * Ciudad de la Paz (antes Oyala): Nueva capital planificada en construcción en
--   la parte continental.
-- * La lista incluye también las demás capitales provinciales.
--
-- Un Poco de Historia:
-- Las islas fueron descubiertas por los portugueses, quienes las cedieron a España
-- en 1778. La parte continental fue gradualmente explorada y reclamada por España
-- en los siglos XIX y XX. El territorio se conoció como Guinea Española. Obtuvo la
-- independencia de España en 1968. El primer presidente, Francisco Macías Nguema,
-- instauró un régimen brutal. Fue derrocado en un golpe de estado en 1979 por su
-- sobrino, Teodoro Obiang Nguema Mbasogo, quien ha gobernado el país desde entonces
-- en un régimen considerado autoritario. El descubrimiento de grandes reservas de
-- petróleo y gas en los años 90 transformó la economía, generando una enorme riqueza
-- que, sin embargo, no se ha distribuido equitativamente entre la población.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el español, el francés y el portugués. Se hablan
-- numerosas lenguas bantúes (como el Fang) y una lengua criolla (Pichi). A pesar
-- de su alto PIB per cápita debido al petróleo, gran parte de la población vive
-- en la pobreza. La isla de Bioko es conocida por su biodiversidad, incluyendo
-- varias especies de primates.
--
*/
