-- SQL Script to insert the communes for Saint Pierre and Miquelon (PM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Saint Pierre and Miquelon (PM).

-- NOTE: Saint Pierre and Miquelon consists of only two communes. This list includes both,
-- providing complete coverage at the municipal level.
-- The entire territory uses the French postal code 97500.

-- Inserting communes for Saint Pierre and Miquelon (PM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
('Saint-Pierre', (SELECT id FROM world_countries WHERE iso_code_2 = 'PM'), '97500'), -- Capital commune (on Saint-Pierre island)
('Miquelon-Langlade', (SELECT id FROM world_countries WHERE iso_code_2 = 'PM'), '97500'); -- Commune covering Miquelon and Langlade islands (Miquelon village is main settlement)

-- End of Saint Pierre and Miquelon commune list (All 2 communes included)

/*
-- ======================================================
-- == Información sobre Saint Pierre and Miquelon ==
-- ======================================================
--
-- Descripción General:
-- San Pedro y Miquelón (Saint Pierre and Miquelon) es una Colectividad de Ultramar
-- autónoma de Francia, ubicada en el Océano Atlántico Norte, a unos 25 km de la
-- costa de Terranova (Canadá). Es el único remanente del antiguo imperio colonial
-- francés de Nueva Francia en América del Norte. El archipiélago consta de varias
-- islas, siendo las principales San Pedro (más pequeña pero más poblada) y Miquelón
-- (compuesta por Miquelón Grande y Langlade, conectadas por un istmo de arena).
--
-- Ciudades Principales (Comunas):
-- El territorio se divide en solo dos comunas:
-- * Saint-Pierre: Es la capital de facto y la comuna más poblada, ubicada en la isla
--   homónima. Alberga la mayoría de los servicios y la actividad económica.
-- * Miquelon-Langlade: Cubre las islas más grandes de Miquelón y Langlade. El principal
--   asentamiento es el pueblo de Miquelón, en el norte de Miquelón Grande. Langlade
--   está escasamente poblada.
--
-- Un Poco de Historia:
-- Posiblemente visitadas por pescadores vascos y bretones desde el siglo XVI. Fueron
-- reclamadas por Francia en el siglo XVII y sirvieron como base para pescadores
-- franceses (principalmente de bacalao) en los Grandes Bancos de Terranova. La
-- posesión de las islas cambió de manos entre Francia y Gran Bretaña varias veces
-- durante los siglos XVIII y principios del XIX, quedando finalmente bajo control
-- francés en 1816. Durante la Prohibición en Estados Unidos, las islas fueron un
-- centro importante para el contrabando de alcohol. Durante la Segunda Guerra Mundial,
-- fueron controladas brevemente por la Francia de Vichy antes de ser tomadas por
-- las fuerzas de la Francia Libre. Se convirtió en Territorio de Ultramar en 1946,
-- luego brevemente en departamento de ultramar, y finalmente en Colectividad de
-- Ultramar con estatus especial en 1985 y 2003.
--
-- Datos Adicionales:
-- Como colectividad francesa, utiliza el euro. El francés es el idioma oficial. La
-- economía ha dependido tradicionalmente de la pesca del bacalao, pero el colapso
-- de las poblaciones de bacalao llevó a una crisis. Actualmente, la pesca, el
-- turismo y las transferencias financieras de Francia son importantes. Tiene una
-- cultura distintiva con influencias francesas, vascas y bretonas.
--
*/
