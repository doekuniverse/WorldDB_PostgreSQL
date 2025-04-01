-- SQL Script to insert a representative sample of significant cities and towns for Guyana (GY).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Guyana (GY).

-- NOTE: Guyana is sparsely populated, especially inland. This list includes the capital,
-- regional administrative centers, and significant coastal/riverine towns. Listing every single remote settlement is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Guyana (GY) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & Regional Administrative Centers / Major Towns
('Georgetown', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- National Capital (Demerara-Mahaica, Region 4)
('Linden', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- Upper Demerara-Berbice (Region 10) Capital (Mining town)
('New Amsterdam', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- East Berbice-Corentyne (Region 6) Capital
('Anna Regina', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- Pomeroon-Supenaam (Region 2) Capital
('Corriverton', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- East Berbice-Corentyne (Region 6) (Border town with Suriname)
('Bartica', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- Cuyuni-Mazaruni (Region 7) Capital
('Lethem', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- Upper Takutu-Upper Essequibo (Region 9) Capital (Border town with Brazil)
('Vreed en Hoop', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- Essequibo Islands-West Demerara (Region 3) Capital
('Mabaruma', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- Barima-Waini (Region 1) Capital
('Mahdia', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- Potaro-Siparuni (Region 8) Capital
('Fort Wellington', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- Mahaica-Berbice (Region 5) Capital

-- Other Significant Towns/Settlements (Sample)
('Skeldon', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- East Berbice-Corentyne
('Rosignol', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- Mahaica-Berbice
('Parika', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- Essequibo Islands-West Demerara (River port)
('Ituni', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- Upper Demerara-Berbice
('Kwakwani', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- Upper Demerara-Berbice (Bauxite mining)
('Charity', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- Pomeroon-Supenaam
('Port Mourant', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'), -- East Berbice-Corentyne
('Mahaicony Village', (SELECT id FROM world_countries WHERE iso_code_2 = 'GY'), '0000'); -- Mahaica-Berbice

-- End of Guyana city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Guyana ==
-- ====================================
--
-- Descripción General:
-- Guyana, oficialmente República Cooperativa de Guyana, es un país ubicado en la
-- costa noreste de América del Sur. Limita con el Océano Atlántico al norte, Brasil
-- al sur y suroeste, Surinam al este y Venezuela al oeste. Es el único país de
-- Sudamérica cuyo idioma oficial es el inglés. Gran parte del país está cubierta
-- por selva tropical densa, con una región de sabana (Rupununi) en el sur y una
-- estrecha llanura costera donde reside la mayoría de la población. Forma parte
-- del Escudo Guayanés.
--
-- Ciudades Principales:
-- * Georgetown: La capital, ciudad más grande y principal puerto, ubicada en la
--   desembocadura del río Demerara. Conserva arquitectura colonial de madera.
-- * Linden: La segunda ciudad más grande, centro de la minería de bauxita en el
--   río Demerara.
-- * New Amsterdam: Tercera ciudad, ubicada en el río Berbice.
-- * Anna Regina, Bartica, Corriverton, Lethem, Mabaruma, Mahdia, Fort Wellington,
--   Vreed en Hoop: Centros administrativos de las diez regiones del país.
--
-- Un Poco de Historia:
-- Habitada por pueblos indígenas Arawak y Caribe. Fue avistada por europeos a
-- finales del siglo XV. Los neerlandeses establecieron las primeras colonias en
-- el siglo XVII (Essequibo, Demerara, Berbice). Gran Bretaña tomó el control a
-- finales del siglo XVIII y principios del XIX, unificando las colonias como
-- Guayana Británica en 1831. La economía se basó en plantaciones de caña de azúcar,
-- trabajadas inicialmente por esclavos africanos y, tras la abolición, por
-- trabajadores contratados, principalmente de la India, lo que creó una sociedad
-- multiétnica. Guyana obtuvo la independencia del Reino Unido en 1966. La política
-- post-independencia ha estado marcada por tensiones étnicas entre las comunidades
-- afro-guyanesa e indo-guyanesa. En 1978, ocurrió la masacre de Jonestown en el
-- interior del país. Guyana enfrenta disputas fronterizas históricas con Venezuela
-- (sobre la región del Esequibo) y Surinam.
--
-- Datos Adicionales:
-- El inglés es el idioma oficial, pero también se hablan criollos, lenguas amerindias
-- y lenguas índicas. Es miembro de la CARICOM (Comunidad del Caribe). El cricket
-- es un deporte muy popular. Las Cataratas Kaieteur son una de las cascadas de una
-- sola caída más altas y potentes del mundo. Recientemente se han descubierto
-- importantes reservas de petróleo costa afuera.
--
*/
