-- SQL Script to insert a representative sample of significant cities and towns for French Guiana (GF).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains French Guiana (GF).

-- NOTE: French Guiana is largely rainforest with sparse population inland. This list includes the capital,
-- major communes, and significant accessible settlements. Listing every remote locality is IMPOSSIBLE.
-- Postal codes are 973xx; examples or '00000' placeholder are provided.

-- Inserting cities/towns for French Guiana (GF) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Major Communes / Towns
('Cayenne', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97300'), -- Préfecture (Capital)
('Saint-Laurent-du-Maroni', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97320'), -- Sous-préfecture, second largest town
('Kourou', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97310'), -- Location of Guiana Space Centre
('Matoury', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97351'), -- Cayenne suburb, location of airport
('Remire-Montjoly', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97354'), -- Cayenne suburb
('Macouria', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97355'), -- Commune near Cayenne
('Mana', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97360'), -- Commune in the west
('Apatou', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97317'), -- Commune on Maroni River
('Grand-Santi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97340'), -- Commune on Maroni River (interior)
('Papaichton', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97316'), -- Commune on Maroni River (interior)
('Saint-Georges', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97313'), -- Commune on Oyapock River (border with Brazil)
('Sinnamary', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97315'), -- Coastal commune west of Kourou
('Montsinéry-Tonnegrande', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97356'), -- Commune near Cayenne
('Iracoubo', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97350'), -- Coastal commune
('Awala-Yalimapo', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97319'), -- Amerindian commune in the west
('Maripasoula', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97370'), -- Largest commune by area (remote interior)
('Camopi', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97330'), -- Remote interior commune on Oyapock River
('Saül', (SELECT id FROM world_countries WHERE iso_code_2 = 'GF'), '97314'); -- Remote interior commune (accessible mainly by air)

-- End of French Guiana locality list (Representative Sample)

/*
-- ==============================================
-- == Información sobre French Guiana ==
-- ==============================================
--
-- Descripción General:
-- La Guayana Francesa (French Guiana) es un departamento y región de ultramar de
-- Francia, ubicado en la costa noreste de América del Sur. Limita con Brasil al
-- este y sur, Surinam al oeste y el Océano Atlántico al norte. Es el territorio
-- más grande de la Unión Europea fuera de Europa continental. La gran mayoría de
-- su superficie está cubierta por densa selva tropical amazónica, y la población
-- se concentra principalmente en la franja costera.
--
-- Ciudades Principales (Comunas):
-- * Cayena (Cayenne): La capital (prefectura) y ciudad más grande.
-- * Saint-Laurent-du-Maroni: La segunda ciudad más grande, ubicada en el río
--   Maroni en la frontera con Surinam. Antigua sede de la administración penal.
-- * Kourou: Famosa por albergar el Centro Espacial Guayanés (Guiana Space Centre),
--   el principal puerto espacial de Europa (operado por la ESA, Arianespace y CNES).
-- * Matoury y Remire-Montjoly: Comunas importantes que forman parte del área
--   metropolitana de Cayena.
-- * Otras comunas importantes incluyen Mana, Apatou, Maripasoula (la más extensa)
--   y Saint-Georges en las fronteras fluviales.
--
-- Un Poco de Historia:
-- Habitada por pueblos indígenas. Fue explorada por europeos y colonizada por
-- Francia en el siglo XVII. Su desarrollo fue lento debido al clima y las
-- enfermedades. Se hizo famosa (o infame) en los siglos XIX y XX por albergar
-- notorias colonias penales, incluyendo la Isla del Diablo (Île du Diable), donde
-- estuvo prisionero Alfred Dreyfus. Tras el cierre de las prisiones después de la
-- Segunda Guerra Mundial, el territorio se convirtió en departamento de ultramar
-- en 1946. El establecimiento del centro espacial en Kourou en la década de 1960
-- impulsó significativamente la economía local.
--
-- Datos Adicionales:
-- Como parte integral de Francia, la Guayana Francesa es parte de la Unión Europea
-- y utiliza el euro como moneda. El francés es el idioma oficial. Posee una gran
-- biodiversidad amazónica. La población es étnicamente muy diversa, con criollos,
-- europeos, asiáticos, brasileños, surinameses, haitianos y varios grupos indígenas.
--
*/
