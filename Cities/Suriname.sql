-- SQL Script to insert a representative sample of significant cities and towns for Suriname (SR).
-- Run this AFTER creating the world_cities table.
-- Assumes the world_countries table is populated and contains Suriname (SR).

-- NOTE: Suriname is largely rainforest with population concentrated on the coast. This list includes the capital,
-- district capitals, and significant towns. Listing every single village is IMPOSSIBLE.
-- Postal codes are not used; using '0000' as a placeholder.

-- Inserting cities for Suriname (SR) using a subquery for country_id
INSERT INTO public.world_cities (name, country_id, postal_code) VALUES
-- Capital & District Capitals / Major Towns
('Paramaribo', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- National Capital (Paramaribo District)
('Lelydorp', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- Wanica District Capital (Near Paramaribo)
('Nieuw Nickerie', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- Nickerie District Capital
('Moengo', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- Marowijne District (Mining town)
('Meerzorg', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- Commewijne District (Across river from Paramaribo)
('Nieuw Amsterdam', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- Commewijne District Capital
('Albina', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- Marowijne District Capital (Border town with French Guiana)
('Groningen', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- Saramacca District Capital
('Brokopondo', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- Brokopondo District Capital
('Onverwacht', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- Para District Capital
('Totness', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- Coronie District Capital

-- Other Significant Towns/Settlements (Sample)
('Mariënburg', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- Commewijne District (Former sugar plantation)
('Wageningen', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- Nickerie District (Agricultural town)
('Brownsweg', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- Brokopondo District
('Pokigron', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'), -- Sipaliwini District (Interior village)
('Apoera', (SELECT id FROM world_countries WHERE iso_code_2 = 'SR'), '0000'); -- Sipaliwini District (Western village near Guyana border)

-- Sipaliwini district (vast interior) has no official capital, administration is dispersed.

-- End of Suriname city list (Representative Sample)

/*
-- ====================================
-- == Información sobre Suriname ==
-- ====================================
--
-- Descripción General:
-- Surinam, oficialmente República de Surinam, es un país ubicado en la costa
-- noreste de América del Sur. Limita con el Océano Atlántico al norte, la Guayana
-- Francesa al este, Brasil al sur y Guyana al oeste. Es el país independiente más
-- pequeño de Sudamérica por área. Gran parte de su territorio está cubierto por
-- selva tropical y tiene una baja densidad de población, concentrada principalmente
-- en la costa. Es étnicamente muy diverso.
--
-- Ciudades Principales:
-- * Paramaribo: La capital y ciudad más grande, ubicada en el río Surinam, cerca de
--   la costa. Concentra a más de la mitad de la población del país. Su centro
--   histórico colonial neerlandés es Patrimonio de la Humanidad por la UNESCO.
-- * Lelydorp: La segunda ciudad más grande, cerca de Paramaribo.
-- * Nieuw Nickerie: Principal ciudad en el oeste, cerca de la frontera con Guyana.
-- * Moengo: Ciudad minera (bauxita) en el este.
-- * Meerzorg: Ubicada al otro lado del río Surinam desde Paramaribo.
-- * Nieuw Amsterdam, Albina, Groningen, Brokopondo, Onverwacht, Totness: Capitales
--   de los demás distritos. Albina es la principal ciudad fronteriza con la Guayana Francesa.
--
-- Un Poco de Historia:
-- Habitada por pueblos indígenas Arawak y Caribe. Fue avistada por exploradores
-- europeos. Los ingleses establecieron el primer asentamiento europeo permanente
-- en el siglo XVII, pero pronto lo cedieron a los neerlandeses a cambio de Nueva
-- Ámsterdam (actual Nueva York) en 1667. Se convirtió en la colonia de la Guayana
-- Neerlandesa (Surinam). Desarrolló una economía de plantación (azúcar, café, cacao)
-- basada en la esclavitud africana. Tras la abolición de la esclavitud, se trajeron
-- trabajadores contratados de las Indias Orientales Neerlandesas (Indonesia), India
-- y China, creando una sociedad muy multiétnica. Surinam obtuvo la autonomía interna
-- en 1954 y la independencia total de los Países Bajos en 1975. La historia post-
-- independencia ha incluido periodos de gobierno militar (liderado por Dési Bouterse),
-- una guerra civil interna (con los Cimarrones o Maroons) y transiciones democráticas.
--
-- Datos Adicionales:
-- El neerlandés es el idioma oficial, pero también se hablan ampliamente el Sranan
-- Tongo (un criollo basado en el inglés), lenguas índicas (Sarnami Hindustani),
-- javanés, lenguas cimarronas y lenguas amerindias. Es uno de los países con mayor
-- diversidad étnica y religiosa del mundo. Gran parte del país está cubierto por
-- selva tropical prístina. La minería (bauxita, oro) y el petróleo son importantes
-- para la economía.
--
*/
