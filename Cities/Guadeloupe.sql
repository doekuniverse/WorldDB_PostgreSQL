-- SQL Script to insert the communes (main administrative divisions) for Guadeloupe (GP).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Guadeloupe (GP).

-- NOTE: Guadeloupe is divided into 32 communes. This list includes all of them,
-- providing essentially complete coverage of the main administrative and populated areas.
-- Listing every single smaller locality within communes is not practical.
-- Postal codes are 971xx; examples are provided.

-- Inserting communes for Guadeloupe (GP) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Main Islands (Grande-Terre & Basse-Terre)
('Basse-Terre', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97100'), -- Préfecture (Capital)
('Pointe-à-Pitre', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97110'), -- Largest city/economic hub
('Les Abymes', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97139'), -- Most populous commune (Pointe-à-Pitre metro)
('Baie-Mahault', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97122'), -- Industrial/commercial hub (Pointe-à-Pitre metro)
('Le Gosier', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97190'), -- Tourist area (Grande-Terre)
('Petit-Bourg', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97170'), -- Basse-Terre
('Sainte-Anne', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97180'), -- Tourist area (Grande-Terre)
('Le Moule', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97160'), -- Grande-Terre
('Sainte-Rose', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97115'), -- Basse-Terre
('Capesterre-Belle-Eau', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97130'), -- Basse-Terre
('Morne-à-l''Eau', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97111'), -- Grande-Terre
('Lamentin', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97129'), -- Basse-Terre
('Saint-François', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97118'), -- Tourist area (Grande-Terre)
('Saint-Claude', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97120'), -- Basse-Terre (near capital)
('Trois-Rivières', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97114'), -- Basse-Terre
('Petit-Canal', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97131'), -- Grande-Terre
('Gourbeyre', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97113'), -- Basse-Terre
('Vieux-Habitants', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97119'), -- Basse-Terre
('Bouillante', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97125'), -- Basse-Terre
('Pointe-Noire', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97116'), -- Basse-Terre
('Baillif', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97123'), -- Basse-Terre
('Deshaies', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97126'), -- Basse-Terre
('Anse-Bertrand', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97121'), -- Grande-Terre
('Port-Louis', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97117'), -- Grande-Terre
('Goyave', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97128'), -- Basse-Terre
('Vieux-Fort', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97141'), -- Basse-Terre

-- Dependencies (Outer Islands)
('Grand-Bourg', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97112'), -- Marie-Galante island capital
('Capesterre-de-Marie-Galante', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97140'), -- Marie-Galante island
('Saint-Louis', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97134'), -- Marie-Galante island
('Terre-de-Haut', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97137'), -- Les Saintes islands
('Terre-de-Bas', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97136'), -- Les Saintes islands
('La Désirade', (SELECT id FROM world_countries WHERE iso_code_2 = 'GP'), '97127'); -- La Désirade island

-- End of Guadeloupe commune list (All 32 communes)

/*
-- ====================================
-- == Información sobre Guadeloupe ==
-- ====================================
--
-- Descripción General:
-- Guadalupe (Guadeloupe) es un archipiélago y una región y departamento de ultramar
-- de Francia, ubicado en las Antillas Menores del Mar Caribe. Consiste en seis
-- islas habitadas principales. Las dos más grandes, Basse-Terre (al oeste,
-- montañosa y volcánica) y Grande-Terre (al este, más plana y calcárea), están
-- separadas por un estrecho canal marítimo (Rivière Salée) y juntas forman una
-- figura parecida a una mariposa. Las otras islas habitadas son Marie-Galante,
-- La Désirade y el pequeño archipiélago de Les Saintes (Terre-de-Haut y Terre-de-Bas).
--
-- Ciudades Principales (Comunas):
-- * Basse-Terre: La capital administrativa (prefectura), ubicada en la isla del mismo nombre.
-- * Pointe-à-Pitre: La ciudad más grande y el principal centro económico y portuario,
--   ubicada en Grande-Terre, cerca del "puente" que une las dos islas principales.
-- * Les Abymes y Baie-Mahault: Comunas muy pobladas que forman parte del área
--   metropolitana de Pointe-à-Pitre.
-- * Le Gosier y Sainte-Anne: Importantes centros turísticos en Grande-Terre.
-- * Le Moule, Petit-Bourg, Sainte-Rose: Otras comunas grandes.
-- * Grand-Bourg: Principal comuna en la isla de Marie-Galante.
-- * La lista incluye las 32 comunas que componen Guadalupe.
--
-- Un Poco de Historia:
-- Habitada por pueblos Arawak y luego Caribes. Colón la avistó en 1493 y le dio
-- el nombre de Santa María de Guadalupe. Fue colonizada por Francia en el siglo XVII.
-- Desarrolló una economía de plantación basada en la caña de azúcar y la mano de
-- obra esclava africana. Fue ocupada brevemente por los británicos en varias ocasiones.
-- La esclavitud fue abolida en 1848. En 1946, Guadalupe se convirtió en un departamento
-- de ultramar de Francia, y posteriormente también en una región de ultramar.
--
-- Datos Adicionales:
-- Como parte integral de Francia, Guadalupe es parte de la Unión Europea y utiliza
-- el euro. El francés es el idioma oficial, pero el criollo antillano (basado en el
-- francés) es ampliamente hablado. La economía se basa en el turismo, la agricultura
-- (banano, caña de azúcar para ron) y los servicios, con importante apoyo financiero
-- de Francia continental. El volcán La Soufrière en Basse-Terre es un punto destacado.
-- La cultura criolla es una mezcla vibrante de influencias africanas, europeas e indias.
--
*/
