-- SQL Script to insert a representative sample of significant cities and towns for Comoros (KM).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Comoros (KM).

-- NOTE: Comoros is an archipelago. This list includes the capital and main towns on the three main islands.
-- Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities/towns for Comoros (KM) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Grande Comore (Ngazidja) Island
('Moroni', (SELECT id FROM world_countries WHERE iso_code_2 = 'KM'), '0000'), -- National Capital
('Mbéni', (SELECT id FROM world_countries WHERE iso_code_2 = 'KM'), '0000'),
('Mitsamiouli', (SELECT id FROM world_countries WHERE iso_code_2 = 'KM'), '0000'),
('Foumbouni', (SELECT id FROM world_countries WHERE iso_code_2 = 'KM'), '0000'),
('Iconi', (SELECT id FROM world_countries WHERE iso_code_2 = 'KM'), '0000'),

-- Anjouan (Nzwani) Island
('Mutsamudu', (SELECT id FROM world_countries WHERE iso_code_2 = 'KM'), '0000'), -- Second largest city, Anjouan capital
('Domoni', (SELECT id FROM world_countries WHERE iso_code_2 = 'KM'), '0000'), -- Major town
('Ouani', (SELECT id FROM world_countries WHERE iso_code_2 = 'KM'), '0000'),
('Sima', (SELECT id FROM world_countries WHERE iso_code_2 = 'KM'), '0000'),
('Mirontsi', (SELECT id FROM world_countries WHERE iso_code_2 = 'KM'), '0000'),

-- Mohéli (Mwali) Island
('Fomboni', (SELECT id FROM world_countries WHERE iso_code_2 = 'KM'), '0000'), -- Mohéli capital
('Nioumachoua', (SELECT id FROM world_countries WHERE iso_code_2 = 'KM'), '0000'),
('Hoani', (SELECT id FROM world_countries WHERE iso_code_2 = 'KM'), '0000');

-- Note: Mayotte is claimed by Comoros but administered by France.

-- End of Comoros locality list (Representative Sample)

/*
-- ====================================
-- == Información sobre Comoros ==
-- ====================================
--
-- Descripción General:
-- La Unión de las Comoras es un país insular soberano en el Océano Índico, ubicado
-- en el extremo norte del Canal de Mozambique, frente a la costa oriental de África,
-- entre el noreste de Mozambique, la región francesa de Mayotte y el noroeste de
-- Madagascar. El archipiélago consta de tres islas volcánicas principales: Gran
-- Comora (Ngazidja), Mohéli (Mwali) y Anjouan (Nzwani), además de numerosos islotes
-- más pequeños. (Comoras también reclama la isla de Mayotte, que sigue siendo
-- administrada por Francia).
--
-- Ciudades Principales:
-- * Moroni: La capital y ciudad más grande, ubicada en la isla de Gran Comora.
-- * Mutsamudu: La segunda ciudad más grande y principal puerto, capital de la isla
--   autónoma de Anjouan.
-- * Fomboni: La capital de la isla autónoma de Mohéli.
-- * Domoni: Otra ciudad importante en Anjouan.
--
-- Un Poco de Historia:
-- Las islas Comoras fueron pobladas por sucesivas oleadas de inmigrantes de África,
-- el Golfo Pérsico, Indonesia y Madagascar. Se establecieron sultanatos locales.
-- Francia colonizó las islas en el siglo XIX. En 1974, tres de las cuatro islas
-- principales (Gran Comora, Mohéli y Anjouan) votaron por la independencia, que
-- se declaró unilateralmente en 1975. Mayotte votó por permanecer bajo administración
-- francesa. La historia post-independencia de Comoras ha estado marcada por una
-- extrema inestabilidad política, con más de 20 golpes de estado o intentos de
-- golpe, incluyendo intervenciones de mercenarios. Las islas de Anjouan y Mohéli
-- declararon su independencia brevemente a finales de los 90 antes de reunificarse
-- bajo una nueva constitución federal en 2001.
--
-- Datos Adicionales:
-- Los idiomas oficiales son el comorense (shikimori, una lengua bantú relacionada
-- con el swahili), el árabe y el francés. El Islam sunita es la religión dominante.
-- La economía se basa principalmente en la agricultura (vainilla, clavo, ylang-ylang)
-- y las remesas de emigrantes. Es uno de los países más pobres del mundo. El celacanto,
-- un pez prehistórico que se creía extinto, fue redescubierto en aguas comorenses.
--
*/
