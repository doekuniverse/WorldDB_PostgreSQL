-- SQL Script to insert the main settlements for Saint Helena, Ascension and Tristan da Cunha (SH).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Saint Helena, Ascension and Tristan da Cunha (SH).

-- NOTE: This territory consists of three remote island groups, each with essentially one main settlement.
-- This list includes these three settlements, providing complete coverage of significant populated places.
-- Specific postal codes exist for each island group.

-- Inserting main settlements for Saint Helena, Ascension and Tristan da Cunha (SH) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Jamestown', (SELECT id FROM world_countries WHERE iso_code_2 = 'SH'), 'STHL 1ZZ'), -- Capital of Saint Helena and the territory overall
('Georgetown', (SELECT id FROM world_countries WHERE iso_code_2 = 'SH'), 'ASCN 1ZZ'), -- Main settlement on Ascension Island
('Edinburgh of the Seven Seas', (SELECT id FROM world_countries WHERE iso_code_2 = 'SH'), 'TDCU 1ZZ'); -- Main (and only) settlement on Tristan da Cunha

-- End of Saint Helena, Ascension and Tristan da Cunha locality list (Main Settlements of the three parts)

/*
-- ==========================================================================
-- == Información sobre Saint Helena, Ascension and Tristan da Cunha ==
-- ==========================================================================
--
-- Descripción General:
-- Santa Elena, Ascensión y Tristán de Acuña es un Territorio Británico de Ultramar
-- ubicado en el Océano Atlántico Sur, a medio camino entre África y América del Sur.
-- Consiste en tres partes geográficamente muy separadas:
-- * Isla Santa Elena: La más poblada, una isla volcánica montañosa.
-- * Isla Ascensión: Isla volcánica al norte de Santa Elena, alberga importantes
--   instalaciones militares y de comunicaciones (británicas y estadounidenses).
-- * Tristán de Acuña: Un archipiélago remoto que incluye la isla habitada más
--   remota del mundo (Tristán de Acuña) y otras islas deshabitadas como Gough e Inaccessible.
--
-- Ciudades Principales (Asentamientos):
-- Cada parte del territorio tiene un único asentamiento principal:
-- * Jamestown: La capital del territorio, ubicada en un valle estrecho en la costa
--   de Santa Elena.
-- * Georgetown: El principal asentamiento y centro administrativo en la Isla Ascensión.
-- * Edimburgo de los Siete Mares (Edinburgh of the Seven Seas): El único asentamiento
--   en la isla de Tristán de Acuña, considerado el asentamiento permanente más
--   remoto del mundo.
--
-- Un Poco de Historia:
-- Las islas fueron descubiertas por exploradores portugueses a principios del siglo XVI.
-- Santa Elena fue colonizada por la Compañía Británica de las Indias Orientales en el
-- siglo XVII y luego pasó a la Corona Británica; es famosa por ser el lugar de exilio
-- final de Napoleón Bonaparte. La Isla Ascensión fue reclamada por Gran Bretaña en
-- 1815 y utilizada como base naval y luego como estación de comunicaciones y base aérea.
-- Tristán de Acuña fue anexionada por Gran Bretaña en 1816; su población actual
-- desciende en gran parte de una guarnición británica y colonos posteriores. Las tres
-- islas fueron administradas como dependencias separadas hasta que se agruparon bajo
-- una única constitución en 2009, otorgándoles igual estatus dentro del territorio.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial. La economía de Santa Elena depende de la ayuda
-- británica y recientemente del turismo (facilitado por la apertura de un aeropuerto).
-- Ascensión alberga bases militares y de la ESA. Tristán de Acuña depende de la pesca
-- (langosta) y la venta de sellos. Las islas son conocidas por su extrema lejanía y
-- su biodiversidad única (especialmente aves marinas en las islas exteriores).
--
*/
