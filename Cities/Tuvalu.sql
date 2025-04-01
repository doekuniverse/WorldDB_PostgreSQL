-- SQL Script to insert a representative sample of significant settlements for Tuvalu (TV).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Tuvalu (TV).

-- NOTE: Tuvalu consists of nine low-lying coral islands/atolls, most of which have one primary village or settlement area.
-- Listing every single household cluster is impractical for this format. This list focuses on the capital village area
-- and the primary settlements on the other main inhabited islands.
-- Tuvalu does not use a postal code system; using '0000' as a placeholder.

-- Inserting settlements for Tuvalu (TV) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital Area & Main Settlements on Outer Islands
('Vaiaku', (SELECT id FROM world_countries WHERE iso_code_2 = 'TV'), '0000'), -- Capital village / administrative center (on Funafuti Atoll)
('Lolua', (SELECT id FROM world_countries WHERE iso_code_2 = 'TV'), '0000'), -- Main settlement on Nanumea Atoll
('Tonga', (SELECT id FROM world_countries WHERE iso_code_2 = 'TV'), '0000'), -- Main settlement on Nanumanga Island (sometimes referred to as Nanumaga)
('Kulia', (SELECT id FROM world_countries WHERE iso_code_2 = 'TV'), '0000'), -- Main settlement on Niutao Island
('Tanrake', (SELECT id FROM world_countries WHERE iso_code_2 = 'TV'), '0000'), -- Main settlement on Nui Atoll
('Asau', (SELECT id FROM world_countries WHERE iso_code_2 = 'TV'), '0000'), -- Main settlement on Vaitupu Atoll
('Savave', (SELECT id FROM world_countries WHERE iso_code_2 = 'TV'), '0000'), -- Main settlement on Nukufetau Atoll
('Fangaua', (SELECT id FROM world_countries WHERE iso_code_2 = 'TV'), '0000'), -- Main settlement on Nukulaelae Atoll
-- Niulakita is sparsely populated, often administered from Niutao or considered part of it for some purposes. Listing the island itself as the 'settlement'.
('Niulakita', (SELECT id FROM world_countries WHERE iso_code_2 = 'TV'), '0000'); -- Represents the settlement on Niulakita Island


-- End of Tuvalu settlement list (Representative Sample of main villages)

/*
-- =============================================
-- ==      Información sobre Tuvalu          ==
-- =============================================
--
-- Descripción General:
-- Tuvalu es una nación insular polinesia ubicada en el Océano Pacífico, aproximadamente
-- a medio camino entre Hawái y Australia. Consiste en nueve islas (cinco atolones
-- de coral verdaderos y cuatro islas de arrecife) muy dispersas. Es uno de los países
-- independientes más pequeños y menos poblados del mundo. Las islas son de muy baja
-- altitud (generalmente no más de 4-5 metros sobre el nivel del mar), lo que hace a
-- Tuvalu extremadamente vulnerable a los efectos del cambio climático y el aumento
-- del nivel del mar.
--
-- Asentamientos Principales:
-- * Vaiaku: La aldea principal y centro administrativo (capital de facto), ubicada en
--   el atolón de Funafuti, que es el atolón más poblado. El área gubernamental a veces
--   se denomina Fongafale (el nombre del islote principal).
-- * Cada una de las otras ocho islas habitadas tiene generalmente un asentamiento
--   principal o área de aldea central (Lolua en Nanumea, Tonga en Nanumanga, Kulia en
--   Niutao, Tanrake en Nui, Asau en Vaitupu, Savave en Nukufetau, Fangaua en Nukulaelae,
--   y la pequeña población de Niulakita).
--
-- Un Poco de Historia:
-- Habitada por polinesios durante siglos, con posibles influencias micronesias en Nui.
-- El primer avistamiento europeo fue por Álvaro de Mendaña en 1568. Las islas fueron
-- visitadas esporádicamente por exploradores y balleneros. En el siglo XIX, llegaron
-- misioneros y las islas sufrieron incursiones de traficantes de esclavos ("blackbirding").
-- En 1892, pasaron a formar parte del protectorado británico de las Islas Gilbert y
-- Ellice. La administración británica continuó hasta que Tuvalu (entonces las Islas
-- Ellice) votó en un referéndum en 1974 para separarse de las Islas Gilbert (Kiribati)
-- por diferencias étnicas y culturales. Tuvalu se convirtió en una dependencia británica
-- separada en 1975 y obtuvo la plena independencia como monarquía constitucional dentro
-- de la Mancomunidad de Naciones (Commonwealth) en 1978.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el tuvaluano y el inglés. La población es casi enteramente
-- de etnia polinesia tuvaluana. La religión principal es el cristianismo (Iglesia de
-- Tuvalu, protestante congregacionalista). La economía es muy pequeña y depende de la
-- ayuda internacional (principalmente de Australia y Nueva Zelanda), las licencias de
-- pesca, las remesas de marineros que trabajan en el extranjero y los ingresos por el
-- arrendamiento de su dominio de internet (.tv). La agricultura es de subsistencia.
-- Tuvalu es un firme defensor en los foros internacionales sobre la necesidad de acción
-- contra el cambio climático debido a la amenaza existencial que representa para el país.
--
*/
